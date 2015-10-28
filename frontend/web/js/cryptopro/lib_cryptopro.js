/*global ActiveXObject */
/*global call_ru_cryptopro_npcades_10_native_bridge */

function CryptoPro() {
    "use strict";

    var CAPICOM_CERTIFICATE_FIND_SHA1_HASH = 0x00,
        CADESCOM_AUTHENTICATED_ATTRIBUTE_DOCUMENT_NAME = 0x01,
        CAPICOM_AUTHENTICATED_ATTRIBUTE_SIGNING_TIME = 0x00,
        CADESCOM_BASE64_TO_BINARY = 0x01,

        i18n = null,              // Internationalization
        about = null,             // CAdESCOM.About → CRYPTO-PRO Information
        certificateStore = null;  // CAPICOM.Store  → Certificate Store

    i18n = (function (language) {
        switch (language) {
        case "00":
            return {};
        default:
            return {
                Init_PluginNotFound: "CRYPTO-PRO Browser Extension was not installed or has been disabled",
                Init_PluginVersion: "Installed version of CRYPTO-PRO Browser Extension is too old",
                Init_NotPerformed: "Initialization has not been performed, see CryptoPro.Initialize()",
                Store_CertificateNotFound: "No certificate found with this thumbprint",
                Store_OperationError: "An error occurred while accessing Certificate Store: ",
                Sign_NoEnoughParameters: "No enough parameters passed to CryptoPro.Sign() function",
                Sign_NoTSPAddress: "No address of TSP server was specified, obligatory for CAdES-X Long Type 1",
                Sign_OperationError: "An error occurred during signing: "
            };
        }
    }("en"));

    function createObject(name) {
        var pluginObject = null,
            objCertEnrollClassFactory = null;
        if (navigator.userAgent.match(/ipod/i) || navigator.userAgent.match(/ipad/i) || navigator.userAgent.match(/iphone/i)) {
            // A function call_ru_cryptopro_npcades_10_native_bridge from NativeBridge.js is used to create objects in iOS
            return call_ru_cryptopro_npcades_10_native_bridge("CreateObject", [name]);
        } else {
            if (!(("Microsoft Internet Explorer" === navigator.appName) || navigator.userAgent.match(/Trident/i))) {
                // NPAPI objects for Firefox, Opera, Chrome and Safari
                pluginObject = document.getElementById("cadesplugin");
                return pluginObject.CreateObject(name);
            } else {
                // COM objects for Internet Explorer
                if (name.match(/X509Enrollment/i)) {
                    // CertEnroll objects are created via CX509EnrollmentWebClassFactory
                    objCertEnrollClassFactory = document.getElementById("certEnrollClassFactory");
                    return objCertEnrollClassFactory.CreateObject(name);
                }
                // CAPICOM and CAdESCOM objects are created standard way
                return new ActiveXObject(name);
            }
        }
    }

    function getCertificateByThumbprint(thumbprint) {
        var certificates = null;
        try {
            certificateStore.Open();
            certificates = certificateStore.Certificates.Find(CAPICOM_CERTIFICATE_FIND_SHA1_HASH, thumbprint);
            if (certificates.Count === 0) {
                throw new Error(i18n.Store_CertificateNotFound);
            } else {
                return certificates.Item(1);
            }
        } catch (e) {
            throw new Error(i18n.Store_OperationError + e.message);
        } finally {
            certificateStore.Close();
        }
    }

    return {

        CadesType: {
            CADESCOM_CADES_BES: 0x01,           // Signature Type: CAdES BES
            CADESCOM_CADES_DEFAULT: 0x00,       // Signature Type: Default (CAdES-X Long Type 1)
            CADESCOM_CADES_X_LONG_TYPE_1: 0x5D  // Signature Type: CAdES-X Long Type 1
        },

        Initialize: function () {
            try {
                var about = createObject("CAdESCOM.About");
                if (about.Version < "1.15.1500") {
                    throw new Error(i18n.Init_PluginVersion);
                }
                certificateStore = createObject("CAPICOM.STORE");
            } catch (e) {
                throw new Error(i18n.Init_PluginNotFound);
            }
        },

        Sign: function (parameters) {
            var task = {
                    data: null,
                    thumbprint: null,
                    cadesType: this.CadesType.CADESCOM_CADES_DEFAULT,
                    tsp: null,
                    detached: true,
                    documentName: null,
                    signingTime: null
                },

                parameter = null,

                signer = null,      // CAdESCOM.CPSigner
                signedData = null,  // CAdESCOM.CadesSignedData
                attribute = null;   // CAdESCOM.CPAttribute

            for (parameter in parameters) {
                if (parameters.hasOwnProperty(parameter) && task.hasOwnProperty(parameter)) {
                    task[parameter] = parameters[parameter];
                }
            }

            if (task.cadesType === this.CadesType.CADESCOM_CADES_X_LONG_TYPE_1 && task.tsp === null) {
                throw new Error(i18n.Sign_NoTSPAddress);
            } else if (task.data === null || task.thumbprint === null) {
                throw new Error(i18n.Sign_NoEnoughParameters);
            } else {
                try {

                    signer = createObject("CAdESCOM.CPSigner");
                    signedData = createObject("CAdESCOM.CadesSignedData");

                    signer.Certificate = getCertificateByThumbprint(task.thumbprint);

                    if (task.cadesType === this.CadesType.CADESCOM_CADES_X_LONG_TYPE_1) {
                        signer.TSAAddress = task.tsp;
                    }

                    if (task.documentName !== null) {
                        attribute = createObject("CAdESCOM.CPAttribute");
                        attribute.Name = CADESCOM_AUTHENTICATED_ATTRIBUTE_DOCUMENT_NAME;
                        attribute.Value = task.documentName;
                        signer.AuthenticatedAttributes2.Add(attribute);
                    }

                    if (task.signingTime !== null) {
                        attribute = createObject("CAdESCOM.CPAttribute");
                        attribute.Name = CAPICOM_AUTHENTICATED_ATTRIBUTE_SIGNING_TIME;
                        attribute.Value = task.signingTime.getVarDate();
                        signer.AuthenticatedAttributes2.Add(attribute);
                    }

                    signedData.ContentEncoding = CADESCOM_BASE64_TO_BINARY;
                    signedData.Content = task.data;

                    return signedData.SignCades(signer, task.cadesType, task.detached);

                } catch (e) {
                    throw new Error(i18n.Sign_OperationError + e.message);
                } finally {
                    certificateStore.Close();
                }
            }

        },

        Verify: function (parameters) {
        },

        Hash: function (parameters) {
        }

    };

}