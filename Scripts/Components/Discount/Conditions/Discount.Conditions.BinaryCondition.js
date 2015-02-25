Type.registerNamespace('Magelia.WebStore.Discount.Conditions');

Magelia.WebStore.Discount.Conditions.BinaryCondition = function (editor, model) {
    this.editor = editor;
    this.initialize(model);
};

Magelia.WebStore.Discount.Conditions.BinaryCondition.prototype = {
    identifier: 'binary',
    operators: ['and', 'or', 'ornot', 'andnot'],

    initialize: function (model) {
        this.model = $.extend({ operator: this.operators.first(), firstCondition: null, secondCondition: null }, model);
    },

    updateOperator: function (operator, update, path, index) {
        if (operator) {
            if (this.operators.any(function (o) { return o == operator; })) {
                this.model.operator = operator;
                this.editor.refresh();
            }
            else if (operator == 'reverse') {
                var firstCondition = this.model.firstCondition;
                var secondCondition = this.model.secondCondition;
                this.model.firstCondition = secondCondition;
                this.model.secondCondition = firstCondition;
                this.editor.refresh(true);
            }
        }
        else if (confirm(Magelia.WebStore.Discount.Conditions.BinaryCondition.Localizations.RemoveConfirmation)) {
            update.call(this.editor, path, null, index);
        }
        else {
            this.editor.refresh(true);
        }
    }
};
