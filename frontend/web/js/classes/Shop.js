/*!
 * @author Semenov Alexander <semenov@skeeks.com>
 * @link http://skeeks.com/
 * @copyright 2010 SkeekS (СкикС)
 * @date 21.09.2015
 */
(function(sx, $, _)
{

    /**
     * Маленькая верхняя корзина
     */
    sx.classes.shop.SmallCart = sx.classes.shop.CartPjax.extend({
        _init: function()
        {
            var self = this;

            this.applyParentMethod(sx.classes.shop.CartPjax, '_init', []);

            this.bind('update', function()
            {
                //Если на странице показывается только одна корзина, то при добавлении в нее товара, будет происходить ее октрытие
                if (_.size(self.Shop.carts) == 1)
                {
                    $("#sx-cart-small-open-btn").click();
                }

                $('.sx-count-baskets').empty().append(self.Shop.get('cartData').countShopBaskets);
            });
        }
    });

    /**
     * Полная корзина на странице заказа
     */
    sx.classes.shop.FullCart = sx.classes.shop.CartPjax.extend({

        _init: function()
        {
            this.applyParentMethod(sx.classes.shop.CartPjax, '_init', []);
        },

        _onDomReady: function()
        {
            $('body').on('change', '#sx-cart-full input.sx-basket-quantity', function()
            {
                sx.Shop.updateBasket($(this).data('basket_id'), $(this).val());
            });
        }

    });

    /**
     * Использование стандартного ajax Handler
     */
    sx.classes.shop.App = sx.classes.shop._App.extend({

        /**
         * @returns {sx.classes.AjaxQuery}
         */
        ajaxQuery: function()
        {
            var ajax = sx.ajax.preparePostQuery('/');

            new sx.classes.AjaxHandlerStandartRespose(ajax, {
                'enableBlocker' : false
            });

            return ajax;
        }

    });
})(sx, sx.$, sx._);