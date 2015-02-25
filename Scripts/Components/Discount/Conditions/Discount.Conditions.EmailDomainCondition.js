Type.registerNamespace('Magelia.WebStore.Discount.Conditions');

Magelia.WebStore.Discount.Conditions.EmailDomainCondition = function (editor, model) {
    this.editor = editor;
    this.initialize(model);
};

Magelia.WebStore.Discount.Conditions.EmailDomainCondition.prototype = {
    identifier: 'emaildomain',
    template: 'EmailDomainConditionEditor',
    category: 'user',

    initialize: function (model) {
        this.model = $.extend({ Domain: null }, model);
    },

    updateDomain: function (textbox) {
        this.model.Domain = textbox.val() || null;
        if (/^[a-zA-Z0-9_\.\-]+\.[a-zA-Z0-9]+$/.test(this.model.Domain)) {
            textbox.removeClass('wrongEmail');
        }
        else {
            textbox.addClass('wrongEmail');
        }
        this.editor.refresh(false);
    }
};
