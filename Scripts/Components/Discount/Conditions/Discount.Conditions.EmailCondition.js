Type.registerNamespace('Magelia.WebStore.Discount.Conditions');

Magelia.WebStore.Discount.Conditions.EmailCondition = function (editor, model) {
    this.editor = editor;
    this.initialize(model);
};

Magelia.WebStore.Discount.Conditions.EmailCondition.prototype = {
    identifier: 'email',
    template: 'EmailConditionEditor',
    category: 'user',

    initialize: function (model) {
        this.model = $.extend({ Email: null }, model);
    },

    updateEmail: function (textbox) {
        this.model.Email = textbox.val() || null;
        if ((/^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9])+$/).test(this.model.Email)) {
            textbox.removeClass('wrongEmail');
        }
        else {
            textbox.addClass('wrongEmail');
        }
        this.editor.refresh(false);
    }
};
