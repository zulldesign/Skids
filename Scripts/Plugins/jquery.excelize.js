(
    function ($) {
        if ($) {
            $.fn.extend(
                {
                    excelize: function () {
                        return $(this).each(
                            function () {
                                var container = this;
                                $($.fn.excelize.selector, container).live(
                                    {
                                        change: function () {
                                            $(this).removeClass('uptoDate');
                                        },
                                        keydown: function (e) {
                                            var element = $(this);
                                            var elementToFocus = null;
                                            if (e.which == 9) {
                                                var count = 1;
                                                var isValid = false;
                                                var elements = $($.fn.excelize.selector, container);
                                                var elementIndex = elements.index(this);
                                                e.preventDefault();
                                                if (e.shiftKey) {
                                                    do {
                                                        elementToFocus = elements.eq(elementIndex - count);
                                                        var td = elementToFocus.closest('td');
                                                        var tr = td.parent();
                                                        isValid = tr.index() != 0 ? td.index() != tr.children().length - 1 : true;
                                                        count++;
                                                    } while (elementIndex - count >= 0 && !isValid);
                                                }
                                                else {
                                                    do {
                                                        elementToFocus = elements.eq(elementIndex + count);
                                                        var td = elementToFocus.closest('td');
                                                        var tr = td.parent();
                                                        isValid = td.index() == tr.children().length - 1 ? tr.index() == 0 : true;
                                                        count++;
                                                    } while ((elementIndex + count <= elements.length - 1) && !isValid);
                                                }
                                                if (!isValid) {
                                                    elementToFocus = null;
                                                }
                                            }
                                            if (!element.is('select')) {
                                                if (e.which == 38) {
                                                    var td = element.closest('td');
                                                    elementToFocus = td.parent().prev().children().eq(td.index()).find($.fn.excelize.selector).first().focus();
                                                }
                                                else if (e.which == 40) {
                                                    var td = element.closest('td');
                                                    elementToFocus = td.parent().next().children().eq(td.index()).find($.fn.excelize.selector).first().focus();
                                                }
                                            }
                                            if (elementToFocus) {
                                                var domElement = elementToFocus[0];
                                                elementToFocus.focus();
                                                if (domElement && $.isFunction(domElement.select)) {
                                                    domElement.select();
                                                }
                                            }
                                        }
                                    }
                                );
                            }
                        );
                    }
                }
            );
            $.fn.extend($.fn.excelize, { selector: 'input[type=text]:enabled, select:enabled, input[type=image]:enabled' });
        }
    }
)(jQuery)