Type.registerNamespace('Magelia.WebStore.Categories');

Magelia.WebStore.Categories.EditableCategoryNode = function (parent) {
    if (parent) {
        this.parent = parent;
        this.initialize();
    }
};

Magelia.WebStore.Categories.EditableCategoryNode.prototype = {
    endEditingEventName: 'endEditing',
    optionCssClass: 'option',
    cancelCssClass: 'cancel',
    saveCssClass: 'save',
    parent: null,
    item: null,
    input: null,
    addButton: null,
    canceled: null,
    started: null,
    focusOutTimeout: null,

    initialize: function () {
        this.item = $('<li/>');
        this.input = $('<input/>').attr({ type: 'text' });
        $('<table/>').append($('<tr/>').append($('<td/>'), $('<td/>').append(this.input), $('<td/>').addClass(this.optionCssClass).append($('<a/>').attr({ title: Magelia.WebStore.Categories.EditableCategoryNode.Localizations.CancelEditionTooltip }).addClass(this.cancelCssClass).click($.proxy(function () { this.canceled = true; this.end(); }, this))), $('<td/>').addClass(this.optionCssClass).append(this.addButton = $('<a/>').attr({ title: Magelia.WebStore.Categories.EditableCategoryNode.Localizations.SubmitEditionTooltip }).click($.proxy(this.triggerEnd, this)).addClass(this.saveCssClass)))).appendTo(this.item);
    },

    start: function (code) {
        var self = this;
        this.canceled = false;
        this.started = true;
        clearTimeout(this.focusOutTimeout);
        this.input.focus().bind(
            {
                keypress: function (e) {
                    if (e.which == 13) {
                        e.preventDefault();
                        e.stopPropagation();
                        self.end();
                    }
                    else if (e.keyCode == 27) {
                        self.canceled = true;
                        self.end();
                    }
                },
                focusout: $.proxy(this.triggerEnd, this)
            }
        );
        if (code) {
            this.input.val(code);
        }
    },

    triggerEnd: function () {
        clearTimeout(this.focusOutTimeout);
        this.focusOutTimeout = setTimeout(
            $.proxy(
                function () {
                    if (!this.canceled && this.started) {
                        if (!this.input.val()) {
                            this.canceled = true;
                        }
                        this.end();
                    }
                },
                this
            ),
            100
        );
    },

    end: function () {
        this.input.unbind();
        this.started = false;
        $(this).trigger(this.endEditingEventName, [this.input.val()]);
    },

    remove: function () {
        this.item.remove();
    }
};