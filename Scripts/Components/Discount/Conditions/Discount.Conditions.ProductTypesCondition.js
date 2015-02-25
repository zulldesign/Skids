Type.registerNamespace('Magelia.WebStore.Discount.Conditions');

Magelia.WebStore.Discount.Conditions.ProductTypesCondition = function (editor, model) {
    this.editor = editor;
    this.initialize(model);
};

Magelia.WebStore.Discount.Conditions.ProductTypesCondition.prototype = {
    identifier: 'producttypes',
    template: 'ProductTypesConditionEditor',
    category: 'product',

    initialize: function (model) {
        this.sortedAscending = true;
        this.model = $.extend({ ProductTypes: [] }, model);
        this.sortProductTypes();
    },

    addProductType: function () {
        if (this.currentProductType) {
            if (this.model.ProductTypes.indexOf(this.currentProductType) == -1) {
                this.model.ProductTypes.push(this.currentProductType);
                this.sortProductTypes();
                this.currentProductType = null;
            }
            this.editor.refresh(true);
        }
    },

    sortProductTypes: function () {
        this.model.ProductTypes.sort();
        if (!this.sortedAscending) {
            this.model.ProductTypes.reverse();
        }
    },

    revertSorting: function () {
        this.sortedAscending = !this.sortedAscending;
        this.sortProductTypes();
        this.editor.refresh(true);
    },

    removeProductType: function (index) {
        this.model.ProductTypes.removeAt(index);
        this.editor.refresh(true);
    },

    editProductType: function (index) {
        this.currentProductType = this.model.ProductTypes.elementAt(index);
        this.model.ProductTypes.removeAt(index);
        this.editor.refresh(true);
    },

    registerAddTextbox: function (textbox) {
        var self = this;
        textbox.bind(
            {
                keypress: function (event) {
                    if (event.keyCode == 13) {
                        event.stopPropagation();
                        self.addProductType();
                    }
                },
                keyup: function () {
                    self.currentProductType = textbox.val();
                }
            }
        );
        this.implementAutoComplete(textbox);
    },

    implementAutoComplete: function (textbox) {
        var self = this;
        textbox.autocomplete(
            {
                minLength: 0,
                autoFocus: true,
                source: function (request, response) {
                    Magelia.WebStore.Admin.Scripts.Services.AutoCompleteServices.GetProductTypes(
                        textbox.val(),
                        function (productTypes) {
                            response($.map(productTypes.where(function (pt) { return self.model.ProductTypes.indexOf(pt) == -1; }), function (productType) { return { label: productType, value: productType }; }));
                        }
                    );
                },
                select: function (e, ui) {
                    self.currentProductType = ui.item.value;
                    self.addProductType();
                }
            }
        );
    }
};