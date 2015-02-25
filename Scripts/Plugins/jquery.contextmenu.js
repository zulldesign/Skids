(
    function ($) {
        $.fn.extend(
            {
                contextMenu: function (items) {
                    document.oncontextmenu = function () { return false; };
                    if ($.isArray(items)) {
                        this.each(
                            function () {
                                var element = $(this);
                                element.bind(
                                    {
                                        contextmenu: function (e) {
                                            var win = $(window);
                                            var close = function () { contextMenu.remove(); overlay.remove(); };
                                            var contextMenu = $('<ul/>').addClass('contextMenu').css($.extend({ position: 'absolute', top: e.pageY, left: e.pageX, zIndex: 9999 }, element.parents('div.popin').length > 0 ? { position: 'fixed', top: e.pageY - win.scrollTop()} : null));
                                            var overlay = $('<div/>').addClass('contextMenuOverlay').bind('click contextmenu', close);
                                            var filteredContextMenuItems = $(items).filter(function () { return ($.isPlainObject(this) && this.text) || $.isArray(this); })
                                            win.one('resize', close);
                                            filteredContextMenuItems.each(
                                                function (contextMenuItemIndex) {
                                                    var contextMenuItem = this;
                                                    if ($.isArray(contextMenuItem)) {
                                                        $(contextMenuItem)
                                                            .filter(function () { return $.isPlainObject(this) && this.text; })
                                                            .each(
                                                                function () {
                                                                    var subContextMenuItem = this;
                                                                    $('<li/>').html(subContextMenuItem.text).addClass(subContextMenuItem.cssClass).appendTo(contextMenu).click(function () { (subContextMenuItem.click || $.noop).call(element); close(); });
                                                                }
                                                            )
                                                        if (contextMenuItemIndex < filteredContextMenuItems.length - 1) {
                                                            $('<li/>').addClass('separator').appendTo(contextMenu);
                                                        }
                                                    }
                                                    else {
                                                        $('<li/>').html(contextMenuItem.text).addClass(contextMenuItem.cssClass).appendTo(contextMenu).click(function () { (contextMenuItem.click || $.noop).call(element); close(); });
                                                    }
                                                }
                                            );
                                            if (contextMenu.children().length > 0) {
                                                contextMenu.appendTo(document.body);
                                                overlay.appendTo(document.body);
                                            }
                                            return false;
                                        }
                                    }
                                );
                            }
                        );
                    }
                    else if (typeof items == 'string') {
                        switch (items.toLowerCase()) {
                            case 'destroy':
                                this.unbind('contextmenu');
                                break;
                        }
                    }
                    return this;
                }
            }
        );
    }
)(jQuery);