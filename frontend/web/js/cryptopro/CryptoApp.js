/*!
 * @author Semenov Alexander <semenov@skeeks.com>
 * @link http://skeeks.com/
 * @copyright 2010 SkeekS (СкикС)
 * @date 08.08.2015
 */
(function(sx, $, _)
{
    sx.classes.CryptoApp = sx.classes.Component.extend({

        _init: function()
        {
            var self = this;
            this.CryptoPro = new CryptoPro();

            _.delay(function()
            {
                self.cryptoProInit();
            }, 2000);
        },

        cryptoProInit: function()
        {
            try
            {
                this.CryptoPro.Initialize();
                this.trigger('successInit');
            } catch (e)
            {
                this.trigger('errorInit', {
                    'message' : e.message
                });
            }
        },

        _onDomReady: function()
        {},

        _onWindowReady: function()
        {}
    });

})(sx, sx.$, sx._);