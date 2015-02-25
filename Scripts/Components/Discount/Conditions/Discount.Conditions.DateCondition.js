Type.registerNamespace('Magelia.WebStore.Discount.Conditions');

Magelia.WebStore.Discount.Conditions.DateCondition = function (editor, model) {
    this.editor = editor;
    this.initialize(model);
};

Magelia.WebStore.Discount.Conditions.DateCondition.prototype = {
    identifier: 'date',
    template: 'DateConditionEditor',
    category: 'various',

    initialize: function (model) {
        this.model = $.extend({ StartDate: null, EndDate: null }, model);
    },

    updateStartDate: function (textbox) {
        this.updateDate(
            textbox,
            function (formatedDate) {
                this.model.StartDate = formatedDate;
                this.checkAndSave(textbox, true);
            }
        );
    },

    updateEndDate: function (textbox) {
        this.updateDate(
            textbox,
            function (formatedDate) {
                this.model.EndDate = formatedDate;
                this.checkAndSave(textbox, false);
            }
        );
    },

    checkAndSave: function (textbox, startDate) {
        var self = this;
        Magelia.WebStore.Admin.Scripts.Services.AutoCompleteServices.CheckDates(
            this.editor.culture,
            this.model.StartDate,
            this.model.EndDate,
            function (valid) {
                if (!valid) {
                    alert(Magelia.WebStore.Discount.Conditions.DateCondition.Localizations.EndDateGreaterThanStartDateErrorMessage);
                    textbox.val('');
                    if (startDate) {
                        self.model.StartDate = null;
                    }
                    else {
                        self.model.EndDate = null;
                    }
                }
                self.editor.refresh(false);
            }
        )
    },

    updateDate: function (textbox, callback) {
        var date = textbox.val();
        if (date) {
            Magelia.WebStore.Admin.Scripts.Services.AutoCompleteServices.ValidateDate(
                this.editor.culture,
                date,
                    $.proxy(
                    function (formatedDate) {
                        textbox.val(formatedDate);
                        if (!formatedDate) {
                            alert(Magelia.WebStore.Discount.Conditions.DateCondition.Localizations.InvalidDateErrorMessage);
                        }
                        if ($.isFunction(callback)) {
                            callback.call(this, formatedDate);
                        }
                    },
                    this
                )
            );
        }
        else {
            callback.call(this, null);
        }
    }
};
