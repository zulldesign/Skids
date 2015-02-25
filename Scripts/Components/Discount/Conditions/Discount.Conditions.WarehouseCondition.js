Type.registerNamespace('Magelia.WebStore.Discount.Conditions');

Magelia.WebStore.Discount.Conditions.WarehouseCondition = function (editor, model) {
    this.editor = editor;
    this.initialize(model);
};

Magelia.WebStore.Discount.Conditions.WarehouseCondition.prototype = {
    identifier: 'warehouse',
    template: 'WarehouseConditionEditor',
    category: 'Order Subset',
    
    initialize: function (model) {
        this.model = $.extend({ Warehouse: null }, model);
    },

    updateCode: function (warehouse) {
        this.model.Warehouse = warehouse ? warehouse : null;
        this.editor.refresh();
    },

    implementAutoComplete: function (textbox) {
        var self = this;
        textbox.autocomplete(
            {
                minLength: 0,
                autoFocus: true,
                source: function (request, response) {
                    Magelia.WebStore.Admin.Scripts.Services.AutoCompleteServices.GetWarehouses(
                        textbox.val(),
                        function (warehouses) {
                            response($.map(warehouses.where(function (w) { return w != self.model.Code; }), function (warehouse) { return { label: warehouse, value: warehouse }; }));
                        }
                    );
                },
                select: function (e, ui) {
                    self.updateCode(ui.item.value);
                }
            }
        );
    }
};
