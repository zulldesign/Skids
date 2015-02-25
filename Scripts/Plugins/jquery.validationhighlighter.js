(
    function ($) {
        if ($.isFunction(window.ValidatorUpdateDisplay)) {
            var original = window.ValidatorUpdateDisplay;
            window.ValidatorUpdateDisplay = function (validator) {
                original(validator);
                $.validationHighLighter.highlight(validator);
            };
        }
        $.extend(
            {
                validationHighLighter: {
                    errorCssClass: 'error',
                    highlight: function (validator) {
                        if (validator.isvalid === false && validator.controltovalidate) {
                            var labels = $('label[for=' + validator.controltovalidate + ']');
                            labels.addClass($.validationHighLighter.errorCssClass);
                            $('#' + validator.controltovalidate).addClass($.validationHighLighter.errorCssClass).one(
                                {
                                    change: function () {
                                        $(this).removeClass($.validationHighLighter.errorCssClass);
                                        labels.removeClass($.validationHighLighter.errorCssClass);
                                    }
                                }
                            );
                        }
                    }
                }
            }
        );
        $(document).ready(
            function () {
                if (typeof (Page_Validators) != 'undefined' && $.isArray(Page_Validators)) {
                    $(Page_Validators).each(function () { $.validationHighLighter.highlight(this); });
                }
            }
        );
    }
)(jQuery);