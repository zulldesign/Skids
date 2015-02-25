(
    function ($) {
        $.fn.extend(
            {
                rounded: function (func) {
                    return this.each(
                        function () {
                            var button = $(this);
                            if (button.children().length == 0) {
                                button.html('<span><span><span>' + button.html() + '</span></span></span>');
                            }
                        }
                    );
                }
            }
        );
    }
)
(jQuery);