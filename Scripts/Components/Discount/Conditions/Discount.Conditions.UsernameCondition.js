Type.registerNamespace('Magelia.WebStore.Discount.Conditions');

Magelia.WebStore.Discount.Conditions.UsernameCondition = function (editor, model) {
    this.editor = editor;
    this.initialize(model);
};

Magelia.WebStore.Discount.Conditions.UsernameCondition.prototype = {
    identifier: 'username',
    template: 'UsernameConditionEditor',
    category: 'user',

    initialize: function (model) {
        this.model = $.extend({ Username: null }, model);
    },

    updateUsername: function (username) {
        this.model.Username = username ? username : null;
        this.editor.refresh();
    }
};
