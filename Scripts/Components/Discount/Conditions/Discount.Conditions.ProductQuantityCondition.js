Type.registerNamespace('Magelia.WebStore.Discount.Conditions');

Magelia.WebStore.Discount.Conditions.ProductQuantityCondition = function (editor, model) {
	this.editor = editor;
	this.initialize(model);
};

Magelia.WebStore.Discount.Conditions.ProductQuantityCondition.prototype = {
	identifier: 'productquantity',
	template: 'QuantityConditionEditor',
	category: 'product',
	lowerQuantity: 1,

	initialize: function (model) {
		this.model = $.extend({ Quantity: this.lowerQuantity, Operator: 4 }, model);
	},

	updateOperator: function (type) {
		this.model.Operator = parseInt(type);
		this.editor.refresh();
	},

	updateQuantity: function (textbox) {
		var value = textbox.val();
		this.model.Quantity = !value ? null : /^\d+$/.test(value) && value >= this.lowerQuantity ? parseInt(value) : this.model.Quantity;
		if (value != this.model.Quantity) {
			textbox.val(this.model.Quantity);
		}
		this.editor.refresh();
	}
};
