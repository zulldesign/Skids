Type.registerNamespace('Magelia.WebStore.Discount.Conditions');

Magelia.WebStore.Discount.Conditions.SuppliersCondition = function (editor, model) {
    this.editor = editor;
    this.initialize(model);
};

Magelia.WebStore.Discount.Conditions.SuppliersCondition.prototype = {
    identifier: 'suppliers',
    template: 'SuppliersConditionEditor',
    category: 'product',

    initialize: function (model) {
        this.sortedAscending = true;
        this.model = $.extend({ Suppliers: [] }, model);
        this.sortSuppliers();
    },

    addSupplier: function () {
        if (this.currentSupplier) {
            if (this.model.Suppliers.indexOf(this.currentSupplier) == -1) {
                this.model.Suppliers.push(this.currentSupplier);
                this.sortSuppliers();
                this.currentSupplier = null;
            }
            this.editor.refresh(true);
        }
    },

    sortSuppliers: function () {
        this.model.Suppliers.sort();
        if (!this.sortedAscending) {
            this.model.Suppliers.reverse();
        }
    },

    revertSorting: function () {
        this.sortedAscending = !this.sortedAscending;
        this.sortSuppliers();
        this.editor.refresh(true);
    },

    removeSupplier: function (index) {
        this.model.Suppliers.removeAt(index);
        this.editor.refresh(true);
    },

    editSupplier: function (index) {
        this.currentSupplier = this.model.Suppliers.elementAt(index);
        this.model.Suppliers.removeAt(index);
        this.editor.refresh(true);
    },

    registerAddTextbox: function (textbox) {
        var self = this;
        textbox.bind(
            {
                keypress: function (event) {
                    if (event.keyCode == 13) {
                        event.stopPropagation();
                        self.addSupplier();
                    }
                },
                keyup: function () {
                    self.currentSupplier = textbox.val();
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
                    Magelia.WebStore.Admin.Scripts.Services.AutoCompleteServices.GetSuppliers(
                        textbox.val(),
                        function (suppliers) {
                            response($.map(suppliers.where(function (s) { return self.model.Suppliers.indexOf(s) == -1; }), function (supplier) { return { label: supplier, value: supplier }; }));
                        }
                    );
                },
                select: function (e, ui) {
                    self.currentSupplier = ui.item.value;
                    self.addSupplier();
                }
            }
        );
    }
};