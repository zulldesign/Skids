Type.registerNamespace('Magelia.WebStore.Discount.Conditions');

Magelia.WebStore.Discount.Conditions.PromoCodeCondition = function (editor, model) {
    this.editor = editor;
    this.initialize(model);
};

Magelia.WebStore.Discount.Conditions.PromoCodeCondition.prototype = {
    identifier: 'promocode',
    template: 'PromoCodeConditionEditor',
    category: 'various',

    initialize: function (model) {
        this.model = $.extend({ PromoCode: null }, model);
    },

    updatePromoCode: function (promoCode) {
        this.model.PromoCode = promoCode ? promoCode : null;
        this.editor.refresh();
    }
};
