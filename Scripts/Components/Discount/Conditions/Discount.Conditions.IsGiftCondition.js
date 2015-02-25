Type.registerNamespace('Magelia.WebStore.Discount.Conditions');

Magelia.WebStore.Discount.Conditions.IsGiftCondition = function (editor, model) {
    this.editor = editor;
    this.initialize(model);
};

Magelia.WebStore.Discount.Conditions.IsGiftCondition.prototype = {
    identifier: 'isgift',
    template: 'IsGiftConditionEditor',
    category: 'product',

    initialize: function (model) {
        this.model = $.extend({ IsGift: false }, model);
    },

    updateIsGift: function (valid) {
        this.model.IsGift = valid;
        this.editor.refresh();
    },
};
