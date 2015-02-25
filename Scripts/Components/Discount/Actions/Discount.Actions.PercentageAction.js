Type.registerNamespace('Magelia.WebStore.Discount.Actions');

Magelia.WebStore.Discount.Actions.PercentageAction = function (editor, model) {
    this.editor = editor;
    this.initialize(model);
};

Magelia.WebStore.Discount.Actions.PercentageAction.prototype = {
    identifier: 'percentage',
    template: 'PercentageActionEditor',
    editor: null,
    model: null,

    initialize: function (model) {
        this.model = $.extend({ PostCondition: null, Percentage: 0, Target: 0, Accumulative: true, IncludeShippingRates: true }, model);
    },

    updateTarget: function (target) {
        this.model.Target = parseInt(target);
        this.editor.refresh(true);
    },

    updatePercentage: function (textbox) {
        var value = textbox.val();
        var floaValue = parseFloat(value);
        if ((this.isDecimal(value) && floaValue >= 0 && floaValue <= 100) || value == '') {
            this.model.Percentage = isNaN(floaValue) ? 0 : floaValue;
            textbox.data('last', this.model.Percentage);
        }
        else {
            var last = textbox.data('last') || 0;
            this.model.Percentage = last;
        }
        textbox.val(this.model.Percentage);
        this.editor.refresh(false);
    },

    updateAccumulative: function (accumulative) {
        this.model.Accumulative = accumulative;
        this.editor.refresh(false);
    },

    updateIncludeShippingRates: function (includeShippingRates) {
        this.model.IncludeShippingRates = includeShippingRates;
        this.editor.refresh(false);
    },

    isDecimal: function (value) {
        return /^\d+\.{0,1}\d*$/.test(value);
    }
};
