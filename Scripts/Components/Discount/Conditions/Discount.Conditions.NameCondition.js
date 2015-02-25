Type.registerNamespace('Magelia.WebStore.Discount.Conditions');

Magelia.WebStore.Discount.Conditions.NameCondition = function (editor, model) {
    this.editor = editor;
    this.initialize(model);
};

Magelia.WebStore.Discount.Conditions.NameCondition.prototype = {
    identifier: 'name',
    template: 'NameConditionEditor',
    category: 'user',

    initialize: function (model) {
        this.model = $.extend({ FirstName: null, LastName: null }, model);
    },

    updateFirstName: function (firstName) {
        this.model.FirstName = firstName ? firstName : null;
        this.editor.refresh();
    },

    updateLastName: function (lastName) {
        this.model.LastName = lastName ? lastName : null;
        this.editor.refresh();
    }
};
