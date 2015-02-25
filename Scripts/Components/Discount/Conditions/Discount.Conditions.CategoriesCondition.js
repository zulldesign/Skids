Type.registerNamespace('Magelia.WebStore.Discount.Conditions');

Magelia.WebStore.Discount.Conditions.CategoriesCondition = function (editor, model) {
    this.editor = editor;
    this.initialize(model);
};

Magelia.WebStore.Discount.Conditions.CategoriesCondition.prototype = {
    identifier: 'categories',
    template: 'CategoriesConditionEditor',
    category: 'product',

    initialize: function (model) {
        this.sortedAscending = true;
        this.model = $.extend({ Categories: [] }, model);
        this.sortCategories();
    },

    addCategory: function () {
        if (this.currentCategory) {
            if (this.model.Categories.indexOf(this.currentCategory) == -1) {
                this.model.Categories.push(this.currentCategory);
                this.sortCategories();
                this.currentCategory = null;
            }
            this.editor.refresh(true);
        }
    },

    sortCategories: function () {
        this.model.Categories.sort();
        if (!this.sortedAscending) {
            this.model.Categories.reverse();
        }
    },

    revertSorting: function () {
        this.sortedAscending = !this.sortedAscending;
        this.sortCategories();
        this.editor.refresh(true);
    },

    removeCategory: function (index) {
        this.model.Categories.removeAt(index);
        this.editor.refresh(true);
    },

    editCategory: function (index) {
        this.currentCategory = this.model.Categories.elementAt(index);
        this.model.Categories.removeAt(index);
        this.editor.refresh(true);
    },

    registerAddTextbox: function (textbox) {
        var self = this;
        textbox.bind(
            {
                keypress: function (event) {
                    if (event.keyCode == 13) {
                        event.stopPropagation();
                        self.addCategory();
                    }
                },
                keyup: function () {
                    self.currentCategory = textbox.val();
                }
            }
        );
        this.implementAutoComplete(textbox);
    },

    implementAutoComplete: function (textbox) {
        var self = this;
        textbox.autocomplete(
            {
                minLength: 0,
                autoFocus: true,
                source: function (request, response) {
                    Magelia.WebStore.Admin.Scripts.Services.AutoCompleteServices.GetCategories(
                        textbox.val(),
                        function (categories) {
                            response($.map(categories.where(function (c) { return self.model.Categories.indexOf(c) == -1; }), function (c) { return { label: c, value: c }; }));
                        }
                    );
                },
                select: function (e, ui) {
                    self.currentCategory = ui.item.value;
                    self.addCategory();
                }
            }
        );
    }
};