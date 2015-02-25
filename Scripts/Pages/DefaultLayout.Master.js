Type.registerNamespace('Magelia.WebStore.WebStore');

Magelia.WebStore.SetLoaderVisibility = function (visibility) {
    var loader = $('div.loader');
    clearTimeout(loader.data('timeout'));
    if (visibility) {
        var timeout = setTimeout(
             function () {
                 var win = $(window);
                 loader.show().css({ left: (win.width() - loader.width()) / 2, top: (win.height() - loader.height()) / 2 });
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

Magelia.WebStore.Confirm = function (message) {
    Magelia.WebStore.SetLoaderVisibility(false);
    var confirmation = confirm(message);
    Magelia.WebStore.SetLoaderVisibility(confirmation);
    return confirmation;
};

$(document).ready(
    function () {
        WebForm_FireDefaultButton = function (event, target) {
            if (!$(event.srcElement || event.target).is('input[type=image],select,textarea') && event.keyCode == 13) {
                var defaultButton;
                if (__nonMSDOMBrowser) {
                    defaultButton = document.getElementById(target);
                }
                else {
                    defaultButton = document.all[target];
                }
                if (defaultButton) {
                    if (defaultButton.click && typeof (defaultButton.click) != 'undefined') {
                        defaultButton.click();
                    } else {
                        eval(defaultButton.getAttribute('href'));
                    }
                    event.cancelBubble = true;
                    if (event.stopPropagation) event.stopPropagation();
                    return false;
                }
                return true;
            }
        };

        $('#nMenu').mainMenu();

        $('div.contextual').clone().insertAfter('#bContent').addClass('bottom').find('*').each(function () { var el = $(this); var id = el.attr('id'); if (id) { el.attr({ id: id + '_bottom' }); } });

        $('#nMenu ul.sub li.featuremissing>a').click(function () { $('#bEditions').popin('open'); return false; });
        $('#nMenu ul.sub li.pro>a,#nMenu ul.sub li.enterprise>a').click(function () { $('#bEditions').popin('open'); return false; });
        $('#nMenu li.unauthorized a').click(function () { return false; });

        var __LASTFOCUS = $('#__LASTFOCUS');
        $('*').focus(function () { __LASTFOCUS.val($(this).attr('id')); });

        $('input').live({ keypress: function (e) { if (e.which == 13 && ($(this).attr('type') || '').toLowerCase() != 'image') { return false; } } });

        // without this requiredfieldvalidator and TinyMCE won't work in chrome (see #4633)
        if (typeof (Page_ClientValidate) == 'function') {
            var oldPage_ClientValidate = Page_ClientValidate;
            Page_ClientValidate = function () {
                if (typeof(tinyMCE) != 'undefined') {
                    tinyMCE.triggerSave();
                }
                oldPage_ClientValidate.apply(this, arguments);
            };
        }
    }
);

Sys.Application.add_load(
    function () {
        $('.popin').popin('center');

        $('a.rounded').rounded();

        $('tr').each(
            function () {
                var row = $(this);
                row.removeClass('odd');
                if (row.index() % 2 != 0) {
                    row.addClass('odd');
                }
            }
        );

        $('label[title],th>a[title],th>span[title],legend>span[title]').each(
            function () {
                var element = $(this);
                if (!element.hasClass('tooltip')) {
                    var title = element.attr('title');
                    element.removeAttr('title');
                    $('<span/>').addClass('tooltip').attr('title', title).insertAfter(element);
                }
            }
        );

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
                if ((arguments != null && arguments.length > 0)
                    && (typeof (arguments[0].validationGroup) != 'undefined' && arguments[0].validationGroup != null)
                    && (typeof (Page_Validators) != 'undefined' && $.isArray(Page_Validators))) {
                    var validationGroup = arguments[0].validationGroup;
                    var invalidElements = $(Page_Validators).filter(function () { return this.validationGroup == validationGroup && !this.isvalid; });
                    if (invalidElements.length == 0) {
                        Magelia.WebStore.SetLoaderVisibility(true);
                    }
                } else {
                    Magelia.WebStore.SetLoaderVisibility(true);
                }
            };
            $.extend(WebForm_DoPostBackWithOptions, { replaced: true });
        }

        Magelia.WebStore.SetLoaderVisibility(false);

        var productDetailTimeOut = null;

        $('span.productDetail').each(
            function () {
                var productDetail = $(this);
                var productId = productDetail.data('productId');
                if (!productDetail.data('initialized') && productId) {
                    productDetail.mouseenter(
                        function () {
                            clearTimeout(productDetailTimeOut);
                            productDetailTimeOut = setTimeout(function () { Magelia.WebStore.Admin.Scripts.Services.AutoCompleteServices.GetProductDetail(productId, productDetail.data('culture'), function (response) { productDetail.attr({ title: response }).unbind('mouseenter'); }); }, 300);
                        }
                    );
                    productDetail.data('initialized', true);
                }
            }
        );

        $('input[type=text].color-picker').each(
            function () {
                var tbx = $(this);
                if (!tbx.data('initialized')) {
                    var getColor = function () {
                        var color = tbx.val();
                        return $.type(color) == 'string' && color.length > 0 ? color.indexOf('#') == 0 ? color.substr(1) : color : '914299';
                    };
                    tbx.ColorPicker({ color: getColor(), onSubmit: function (hsb, hex) { tbx.val('#' + hex); }, onChange: function (hsb, hex) { tbx.val('#' + hex); } }).keyup(function () { tbx.ColorPickerSetColor(getColor()) });
                    tbx.data('initialized', true);
                }
            }
        );

        $('textarea.tinymce').each(
            function () {
                var textarea = $(this);
                textarea.tinymce(
                    {
                        // General options
                        theme: 'advanced',
                        plugins: 'autolink,lists,spellchecker,pagebreak,style,layer,table,save,advhr,advimage,advlink,emotions,iespell,inlinepopups,insertdatetime,preview,media,searchreplace,print,contextmenu,paste,directionality,fullscreen,noneditable,visualchars,nonbreaking,xhtmlxtras',

                        width: '100%',

                        oninit: function () { $(window).resize(); },
                        relative_urls: false,
                        convert_urls: false,
                        file_browser_callback: 'openFileManager',

                        // Theme options
                        theme_advanced_buttons1: ',bold,italic,|,justifyleft,justifycenter,justifyright,justifyfull,|,numlist,bullist,|,cut,copy,paste,|,search,replace,|,undo,redo,|,link,unlink,|,image,media,|,formatselect,forecolor,charmap,|,code,fullscreen',
                        theme_advanced_buttons2: '',
                        theme_advanced_buttons3: '',
                        theme_advanced_buttons4: '',
                        theme_advanced_toolbar_location: 'top',
                        theme_advanced_toolbar_align: 'left',
                        theme_advanced_statusbar_location: 'bottom',
                        theme_advanced_resizing: true,
                        theme_advanced_resize_horizontal: false,
                        readonly: textarea.is(':disabled')
                    }
                );
            }
        );
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