Type.registerNamespace('Magelia.WebStore.Discount.Conditions');

Magelia.WebStore.Discount.Conditions.AuthenticationStateCondition = function (editor, model) {
    this.editor = editor;
    this.initialize(model);
};

Magelia.WebStore.Discount.Conditions.AuthenticationStateCondition.prototype = {
    identifier: 'authenticationstate',
    template: 'AuthenticationStateConditionEditor',
    category: 'user',

    initialize: function (model) {
        this.model = $.extend({ AuthenticationState: 0 }, model);
    },

    updateAuthenticationState: function (authenticationState) {
        this.model.AuthenticationState = parseInt(authenticationState);
        this.editor.refresh();
    }
};
