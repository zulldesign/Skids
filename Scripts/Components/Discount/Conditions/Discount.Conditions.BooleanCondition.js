Type.registerNamespace('Magelia.WebStore.Discount.Conditions');

Magelia.WebStore.Discount.Conditions.BooleanCondition = function (editor, model) {
    this.editor = editor;
    this.initialize(model);
};

Magelia.WebStore.Discount.Conditions.BooleanCondition.prototype = {
    identifier: 'boolean',
    template: 'BooleanConditionEditor',
    editor: null,
    model: null,
    category: 'various',

    initialize: function (model) {
        this.model = $.extend({ valid: false }, model);
    },

    updateValidity: function (valid) { 
        this.model.valid = valid;
        this.editor.refresh();
    },
};
