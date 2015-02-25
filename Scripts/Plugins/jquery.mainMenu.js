(
function ($) {
    $.fn.extend(
        {
            mainMenu: function (stateKey) {
                stateKey = stateKey || $.fn.mainMenu.defaultStateKey;
                return this.each(
                    function () {
                        var lastClick = null;
                        var leaveTimeout = null;
                        var clickTimeout = null;
                        var mainMenu = $(this);
                        var subs = mainMenu.find('ul.sub');
                        var headers = mainMenu.find('ul.head');
                        headers.children().not('.toggle').bind({
                            'click dblclick': function () {
                                var index = $(this).index();
                                var time = new Date().valueOf();
                                var state = $.fn.mainMenu.getState(headers, stateKey);
                                clearTimeout(clickTimeout);
                                if (lastClick && (time - lastClick <= 300)) {
                                    if (!state.open) {
                                        state.open = true;
                                    }
                                    else if (index == state.index) {
                                        state.absolute = !state.absolute;
                                    }
                                    else {
                                        state.absolute = true;
                                    }
                                }
                                else {
                                    if (index == state.index) {
                                        if (!state.lastMouseEnter || (state.lastMouseEnter && time - state.lastMouseEnter > 500)) {
                                            state.open = !state.open;
                                        }
                                    }
                                    else {
                                        state.open = true;
                                    }
                                }
                                lastClick = time;
                                state.index = index;
                                clickTimeout = setTimeout(
                                    function () {
                                        $.fn.mainMenu.update(headers, subs, state, stateKey);
                                    },
                                    301
                                );
                            }
                        }).mouseenter(function () {
                            var index = $(this).index();
                            var state = $.fn.mainMenu.getState(headers, stateKey);
                            clearTimeout(leaveTimeout);
                            if (state.absolute) {
                                state.open = true;
                                state.index = index;
                                state.lastMouseEnter = new Date().valueOf();
                                $.fn.mainMenu.update(headers, subs, state, stateKey);
                            }
                        });
                        mainMenu.hover(
                            function () {
                                clearTimeout(leaveTimeout);
                            },
                            function () {
                                leaveTimeout = setTimeout(
                                    function () {
                                        var state = $.fn.mainMenu.getState(headers, stateKey);
                                        if (state.absolute) {
                                            state.open = false;
                                            $.fn.mainMenu.update(headers, subs, state, stateKey);
                                        }
                                    },
                                    500
                                );
                            }
                        );
                        headers.children('.toggle').click(
                            function () {
                                var state = $.fn.mainMenu.getState(headers, stateKey);
                                state.open = !state.open;
                                $.fn.mainMenu.update(headers, subs, state, stateKey);
                            }
                        );
                        var initialState = $.fn.mainMenu.getState(headers, stateKey);
                        if (initialState.absolute) {
                            initialState.open = false;
                        }
                        if (!initialState.open) {
                            subs.hide();
                        }
                        $.fn.mainMenu.update(headers, subs, initialState, stateKey);
                    }
                );
            }
        }
    );
    $.extend(
        $.fn.mainMenu,
        {
            selectedCssClass: 'selected',
            absoluteCssClass: 'absolute',
            defaultStateKey: 'main-menu',

            update: function (headers, subs, state, stateKey) {
                var toggle = headers.children('.toggle');
                subs.children().removeClass($.fn.mainMenu.selectedCssClass).eq(state.index).addClass($.fn.mainMenu.selectedCssClass);
                headers.children().not('.toggle').removeClass($.fn.mainMenu.selectedCssClass).eq(state.index).addClass($.fn.mainMenu.selectedCssClass);
                if (state.open) {
                    subs.slideDown('fast');
                    toggle.removeClass('closed');
                }
                else {
                    subs.stop(true);
                    subs.slideUp('fast');
                    toggle.addClass('closed');
                }
                if (state.absolute) {
                    subs.addClass($.fn.mainMenu.absoluteCssClass).css({ width: headers.width() });
                }
                else {
                    subs.removeClass($.fn.mainMenu.absoluteCssClass).css({ width: '' });
                }
                $.fn.mainMenu.saveState(stateKey, state);
            },

            saveState: function (stateKey, state) {
                $.cookie(stateKey, JSON.stringify(state), { expires: 7, path: '/' });
            },

            getState: function (headers, stateKey) {
                var previousState = $.cookie(stateKey);
                if (previousState) {
                    return JSON.parse(previousState);
                }
                else {
                    var selectedHeader = headers.children().filter('.' + $.fn.mainMenu.selectedCssClass);
                    return {
                        open: true,
                        absolute: false,
                        index: selectedHeader.length == 1 ? selectedHeader.index() : 0
                    };
                }
            }
        }
    );
}
)(jQuery);