(function ($) {

    var TabStrip = function (element) {
        this._element = element;
    }
    TabStrip.prototype = {

        _element : null,

        Initialize: function () {
            var self = this;
            this._element.find('>li>a').each(function (i) {
                $(this).click(function (e) {
                    self.displayTab(i);
                    e.preventDefault();
                });
            });

            this.displayTab(0);
        },

        displayTab: function (tabIndex) {
            this._element.find('>li').removeClass('selected');
            this._element.find('>li').eq(tabIndex).addClass('selected');

            this._element.next('div').find('>div').hide();
            this._element.next('div').find('>div').eq(tabIndex).show();
        }
    }

    $.fn.extend({
        tabStrip: function (arg) {
            return this.each(function () {
                new TabStrip($(this)).Initialize();
            });
        }
    });
})(jQuery);