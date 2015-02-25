Type.registerNamespace('Magelia.WebStore.Discount.Conditions');

Magelia.WebStore.Discount.Conditions.TagsCondition = function (editor, model) {
    this.editor = editor;
    this.initialize(model);
};

Magelia.WebStore.Discount.Conditions.TagsCondition.prototype = {
    identifier: 'tags',
    template: 'TagsConditionEditor',
    category: 'various',

    initialize: function (model) {
        this.sortedAscending = true;
        this.model = $.extend({ Tags: [] }, model);
        this.sortTags();
    },

    addTag: function () {
        if (this.currentTag) {
            if (this.model.Tags.indexOf(this.currentTag) == -1) {
                this.model.Tags.push(this.currentTag);
                this.sortTags();
                this.currentTag = null;
            }
            this.editor.refresh(true);
        }
    },

    sortTags: function () {
        this.model.Tags.sort();
        if (!this.sortedAscending) {
            this.model.Tags.reverse();
        }
    },

    revertSorting: function () {
        this.sortedAscending = !this.sortedAscending;
        this.sortTags();
        this.editor.refresh(true);
    },

    removeTag: function (index) {
        this.model.Tags.removeAt(index);
        this.editor.refresh(true);
    },

    editTag: function (index) {
        this.currentTag = this.model.Tags.elementAt(index);
        this.model.Tags.removeAt(index);
        this.editor.refresh(true);
    },

    registerAddTextbox: function (textbox) {
        var self = this;
        textbox.bind(
            {
                keypress: function (event) {
                    if (event.keyCode == 13) {
                        event.stopPropagation();
                        self.addTag();
                    }
                },
                keyup: function () {
                    self.currentTag = textbox.val();
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
                    Magelia.WebStore.Admin.Scripts.Services.AutoCompleteServices.GetTags(
                        textbox.val(),
                        function (tags) {
                            response($.map(tags.where(function (s) { return self.model.Tags.indexOf(s) == -1; }), function (tag) { return { label: tag, value: tag }; }));
                        }
                    );
                },
                select: function (e, ui) {
                    self.currentTag = ui.item.value;
                    self.addTag();
                }
            }
        );
    }
};