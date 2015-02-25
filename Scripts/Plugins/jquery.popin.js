(
function ($) {
    $.fn.extend(
        {
            popin: function (arg) {
                return this.each(
                    function () {
                        arg = $.type(arg) == 'string' ? arg : 'initialize';
                        var method = $.fn.popin[arg];
                        if ($.isFunction(method)) {
                            method.call($(this));
                        }
                    }
                );
            }
        }
    );
    $.extend(
        $.fn.popin,
        {
            initialize: function () {
                if (!this.data($.fn.popin.dataKeys.initialized)) {
                    var background = $('<div/>').addClass('popin-background').appendTo(document.body).hide();
                    this.appendTo('form:eq(0)');
                    $('<span/>').addClass('close').appendTo(this.children('header').first()).click($.proxy(function () { this.popin('close'); }, this));
                    $(window).resize($.proxy(function () { this.popin('center'); }, this));
                    this.data($.fn.popin.dataKeys.initialized, true);
                    this.data($.fn.popin.dataKeys.background, background);
                }
            },

            open: function () {
                this.popin().show().data($.fn.popin.dataKeys.background).show();
                this.popin('center');
            },

            close: function () {
                this.popin().hide().data($.fn.popin.dataKeys.background).hide();
            },

            center: function () {
                if (this.is(':visible')) {
                    var win = $(window);
                    var winHeight = win.height();
                    var content = this.children('div').first();
                    content.removeAttr('style');
                    var outerHeight = this.css({ height: 'auto' }).outerHeight();
                    if (outerHeight > winHeight) {
                        var height = winHeight - (outerHeight - this.height() + 100);
                        this.css({ height: height, left: (win.width() - this.outerWidth()) / 2 }).css({ top: (winHeight - this.outerHeight()) / 2 });
                        content.css({ maxHeight: this.height() - this.children('header').first().outerHeight() });
                    }
                    else {
                        this.css({ top: (winHeight - outerHeight) / 2, left: (win.width() - this.outerWidth()) / 2 });
                    }
                }
            },

            dataKeys: {
                background: 'background',
                initialized: 'initialized'
            }
        }
    );
}
)(jQuery);