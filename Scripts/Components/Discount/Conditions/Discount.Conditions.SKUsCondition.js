Type.registerNamespace('Magelia.WebStore.Discount.Conditions');

Magelia.WebStore.Discount.Conditions.SKUsCondition = function (editor, model) {
    this.editor = editor;
    this.initialize(model);
};

Magelia.WebStore.Discount.Conditions.SKUsCondition.prototype = {
    identifier: 'skus',
    template: 'SKUsConditionEditor',
    category: 'product',

    initialize: function (model) {
        this.sortedAscending = true;
        this.model = $.extend({ SKUs: [] }, model);
        this.sortSkus();
    },

    addSKU: function () {
        if (this.currentSKU) {
            if (this.model.SKUs.indexOf(this.currentSKU) == -1) {
                this.model.SKUs.push(this.currentSKU);
                this.sortSkus();
                this.currentSKU = null;
            }
            this.editor.refresh(true);
        }
    },

    sortSkus: function () {
        this.model.SKUs.sort();
        if (!this.sortedAscending) {
            this.model.SKUs.reverse();
        }
    },

    revertSorting: function () {
        this.sortedAscending = !this.sortedAscending;
        this.sortSkus();
        this.editor.refresh(true);
    },

    removeSKU: function (index) {
        this.model.SKUs.removeAt(index);
        this.editor.refresh(true);
    },

    editSKU: function (index) {
        this.currentSKU = this.model.SKUs.elementAt(index);
        this.model.SKUs.removeAt(index);
        this.editor.refresh(true);
    },

    implementAutoComplete: function (textbox) {
        var self = this;
        textbox.autocomplete(
            {
                minLength: 0,
                autoFocus: true,
                source: function (request, response) {
                    Magelia.WebStore.Admin.Scripts.Services.AutoCompleteServices.GetSKUs(
                        textbox.val(),
                        self.editor.culture,
                        function (productReferences) {
                            response($.map(productReferences.where(function (pr) { return self.model.SKUs.indexOf(pr.SKU) == -1; }), function (pr) { return { label: pr.Name, value: pr.SKU }; }));
                        }
                    );
                },
                select: function (e, ui) {
                    self.currentSKU = ui.item.value;
                    self.addSKU();
                }
            }
        );
    }
};