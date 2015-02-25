Type.registerNamespace('Magelia.WebStore.Discount.Conditions');

Magelia.WebStore.Discount.Conditions.MaxApplicationCondition = function (editor, model) {
    this.editor = editor;
    this.initialize(model);
};

Magelia.WebStore.Discount.Conditions.MaxApplicationCondition.prototype = {
    identifier: 'maxapplication',
    template: 'MaxApplicationConditionEditor',
    category: 'various',

    initialize: function (model) {
        this.model = $.extend({ MaxApplication: 0, Type: 0 }, model);
    },

    updateType: function (type) {
        this.model.Type = parseInt(type);
        this.editor.refresh();
    },

    updateMaxApplication: function (textbox) {
        var value = textbox.val();
        var intValue = parseInt(value);
        if (/^\d+$/.test(value) || value == '') {
            this.model.MaxApplication = isNaN(intValue) ? 0 : intValue;
            textbox.data('last', this.model.MaxApplication);
        }
        else {
            var last = textbox.data('last') || 0;
            this.model.MaxApplication = last;
            textbox.val(last);
        }
        this.editor.refresh();
    }
};
