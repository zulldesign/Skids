Type.registerNamespace("Magelia.WebStore");

Magelia.WebStore.SetLoaderVisibility = function (visibility) {
    var loader = $('div.loader');
    clearTimeout(loader.data('timeout'));
    if (visibility && $('div.validation:visible').length == 0) {
        var timeout = setTimeout(
            function () {
                var win = $(window);
                loader.show();
                loader.css({ left: (win.width() - loader.width()) / 2, top: (win.height() - loader.height()) / 2 });
            },
            3000
        );
        loader.data('timeout', timeout);
    }
    else {
        loader.hide();
    }
};

Magelia.WebStore.SetLoaderVisibility(true);

Sys.Application.add_load(
    function () {
        $('a.rounded').rounded();
        Magelia.WebStore.SetLoaderVisibility(false);
        if (!__doPostBack.replaced) {
            var originalPostBackFunc = __doPostBack;
            __doPostBack = function () {
                originalPostBackFunc.apply(null, arguments);
                Magelia.WebStore.SetLoaderVisibility(true);
            };
            $.extend(__doPostBack, { replaced: true });
        }
        if (!WebForm_DoPostBackWithOptions.replaced) {
            var originalWebForm_DoPostBackWithOptions = WebForm_DoPostBackWithOptions;
            WebForm_DoPostBackWithOptions = function () {
                originalWebForm_DoPostBackWithOptions.apply(null, arguments);
                Magelia.WebStore.SetLoaderVisibility(true);
            };
            $.extend(WebForm_DoPostBackWithOptions, { replaced: true });
        }
    }
);

$('a').live(
    {
        click: function () {
            var link = $(this);
            var href = link.attr('href') || '';
            if (href && href.indexOf('javascript:') == -1 && href != '#' && !link.attr('onclick') && link.attr('target') !== '_blank') {
                Magelia.WebStore.SetLoaderVisibility(true);
            }
        }
    }
);

$('input[type=image]').live({ click: function () { if (!$(this).attr('onclick')) { Magelia.WebStore.SetLoaderVisibility(true); } } });
Sys.Application.add_unload(function () { Magelia.WebStore.SetLoaderVisibility(true); });
$(window).unload(function () { Magelia.WebStore.SetLoaderVisibility(true); });
