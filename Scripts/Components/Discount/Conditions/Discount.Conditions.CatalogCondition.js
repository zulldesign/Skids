Type.registerNamespace('Magelia.WebStore.Discount.Conditions');

Magelia.WebStore.Discount.Conditions.CatalogCondition = function (editor, model) {
    this.editor = editor;
    this.initialize(model);
};

Magelia.WebStore.Discount.Conditions.CatalogCondition.prototype = {
    identifier: 'catalog',
    template: 'CatalogConditionEditor',
    category: 'product',

    initialize: function (model) {
        this.model = $.extend({ Catalog: null }, model);
    },

    updateCatalog: function (catalog) {
        this.model.Catalog = catalog ? catalog : null;
        this.editor.refresh();
    },

    implementAutoComplete: function (textbox) {
        var self = this;
        textbox.autocomplete(
            {
                minLength: 0,
                autoFocus: true,
                source: function (request, response) {
                    Magelia.WebStore.Admin.Scripts.Services.AutoCompleteServices.GetCatalogs(
                        textbox.val(),
                        function (catalogs) {
                            response($.map(catalogs.where(function (c) { return c != self.model.Catalog; }), function (catalog) { return { label: catalog, value: catalog }; }));
                        }
                    );
                },
                select: function (e, ui) {
                    self.updateCatalog(ui.item.value);
                }
            }
        );
    }
};
