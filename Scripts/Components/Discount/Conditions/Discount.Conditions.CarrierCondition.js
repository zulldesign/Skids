Type.registerNamespace('Magelia.WebStore.Discount.Conditions');

Magelia.WebStore.Discount.Conditions.CarrierCondition = function (editor, model) {
    this.editor = editor;
    this.initialize(model);
};

Magelia.WebStore.Discount.Conditions.CarrierCondition.prototype = {
    identifier: 'carrier',
    template: 'CarrierConditionEditor',
    category: 'Order Subset',

    initialize: function (model) {
        this.model = $.extend({ Carrier: null }, model);
    },

    updateCode: function (carrier) {
        this.model.Carrier = carrier ? carrier : null;
        this.editor.refresh();
    },

    implementAutoComplete: function (textbox) {
        var self = this;
        textbox.autocomplete(
            {
                minLength: 0,
                autoFocus: true,
                source: function (request, response) {
                    Magelia.WebStore.Admin.Scripts.Services.AutoCompleteServices.GetCarriers(
                        textbox.val(),
                        function (carriers) {
                            response($.map(carriers.where(function (c) { return c != self.model.Code; }), function (carrier) { return { label: carrier, value: carrier }; }));
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
