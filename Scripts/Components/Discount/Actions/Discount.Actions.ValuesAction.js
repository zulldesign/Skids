Type.registerNamespace('Magelia.WebStore.Discount.Actions');

Magelia.WebStore.Discount.Actions.ValuesAction = function (editor, model) {
    this.editor = editor;
    this.initialize(model);
};

Magelia.WebStore.Discount.Actions.ValuesAction.prototype = {
    identifier: 'values',
    template: 'ValuesActionEditor',
    editor: null,
    model: null,
    currentSort: null,
    sortAscending: null,
    currentValue: null,
    getCurrenciesCallBacks: null,
    currencyRetreiving: null,
    currencies: null,
    currentCurrencyId: null,
    currentIncludeTaxes: null,
    currentSort: null,

    initialize: function (model) {
        this.currentSort = 'Value';
        this.sortAscending = true;
        this.currencyRetreiving = false;
        this.getCurrenciesCallBacks = [];
        this.currentIncludeTaxes = false;
        this.model = $.extend({ PostCondition: null, Target: 0, Values: [] }, model);
        this.sortValues();
    },

    updateTarget: function (target) {
        this.model.Target = parseInt(target);
        this.editor.refresh(false);
    },

    updateCurrentValue: function (textbox) {
        var value = textbox.val();
        var floatValue = parseFloat(value);
        if (this.isDecimal(value) || value == '') {
            this.currentValue = isNaN(floatValue) ? null : floatValue;
            textbox.data('last', this.currentValue);
        }
        else {
            var last = textbox.data('last');
            textbox.val(last);
            this.currentValue = last;
        }
    },

    updateCurrentIncludeTaxes: function (includeTaxes) {
        this.currentIncludeTaxes = includeTaxes;
    },

    isDecimal: function (value) {
        return /^\d+\.{0,1}\d*$/.test(value);
    },

    populateWithCurrencies: function (select, value) {
        if (!this.currencies) {
            this.getCurrencies(function () { this.populateWithCurrencies(select, value); });
        }
        else {
            this.currencies.each(
                function (currency) {
                    $('<option/>').attr({ value: currency.CurrencyId }).text(currency.Code).appendTo(select);
                }
            );
            select.val(value ? value : select.children().first().attr('value')).change();
        }
    },

    updateCurrentCurrency: function (currencyId) {
        this.currentCurrencyId = currencyId ? parseInt(currencyId) : null;
    },

    addValue: function () {
        var currentCurrency = this.currentCurrencyId;
        if (this.currentValue == null) {
            alert(Magelia.WebStore.Discount.Actions.ValuesAction.Localizations.ValueMissingErrorMessage);
            return;
        }
        if (this.currentCurrencyId == null) {
            alert(Magelia.WebStore.Discount.Actions.ValuesAction.Localizations.CurrencyMissingErrorMessage);
            return;
        }
        if ($(this.model.Values).filter(function () { return this.CurrencyId == currentCurrency; }).length > 0) {
            alert(Magelia.WebStore.Discount.Actions.ValuesAction.Localizations.ValueAlreadyDefinedErrorMessage);
            return;
        }
        this.model.Values.push({ Value: this.currentValue, IncludeTaxes: this.currentIncludeTaxes, CurrencyId: currentCurrency });
        this.sortValues();
        this.currentValue = null;
        this.currentIncludeTaxes = false;
        this.currentCurrencyId = null;
        this.editor.refresh(true);
    },

    sortValues: function () {
        this.model.Values.sort($.proxy(function (value1, value2) { return this.getMemberValue(value1, this.currentSort) < this.getMemberValue(value2, this.currentSort) ? -1 : 1; }, this));
        if (!this.sortAscending) {
            this.model.Values.reverse();
        }
    },

    getMemberValue: function (value, property) {
        var member = value[property];
        return property == 'CurrencyId' ? this.getCurrencyCode(member) : member;
    },

    setCurrencyCode: function (td, currencyId) {
        if (!this.currencies) {
            this.getCurrencies(function () { this.setCurrencyCode(td, currencyId); });
        }
        else {
            td.text(this.getCurrencyCode(currencyId));
        }
    },

    getCurrencyCode: function (currencyId) {
        var currency = this.currencies.first(function (c) { return c.CurrencyId == currencyId; });
        return currency ? currency.Code : Magelia.WebStore.Discount.Conditions.OrderAmountCondition.Localizations.UnavailableCurrencyText;
    },

    sort: function (member) {
        this.sortAscending = member == this.currentSort ? !this.sortAscending : true;
        this.currentSort = member;
        this.sortValues();
        this.editor.refresh(true);
    },

    getCurrencies: function (callback) {
        this.getCurrenciesCallBacks.push(callback);
        if (!this.currencyRetreiving) {
            this.currencyRetreiving = true;
            Magelia.WebStore.Admin.Scripts.Services.AutoCompleteServices.GetCurrencies(
                $.proxy(
                    function (currencies) {
                        this.currencies = currencies;
                        this.getCurrenciesCallBacks.each(
                            $.proxy(
                                function (cb) {
                                    if ($.isFunction(cb)) {
                                        cb.call(this);
                                    }
                                },
                                this
                            )
                        );
                        this.getCurrenciesCallBacks.clear();
                    },
                    this
                )
            );
        }
    },

    editValue: function (index) {
        var value = this.model.Values.elementAt(index);
        this.model.Values.removeAt(index);
        this.currentValue = value.Value;
        this.currentCurrencyId = value.CurrencyId;
        this.currentIncludeTaxes = value.IncludeTaxes;
        this.editor.refresh(true);
    },

    removeValue: function (index) {
        this.model.Values.removeAt(index);
        this.editor.refresh(true);
    }
};
