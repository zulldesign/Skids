Type.registerNamespace('Magelia.WebStore.Discount.Conditions');

Magelia.WebStore.Discount.Conditions.ProductPriceCondition = function (editor, model) {
    this.editor = editor;
    this.initialize(model);
};

Magelia.WebStore.Discount.Conditions.ProductPriceCondition.prototype = {
    identifier: 'productpriceamout',
    template: 'AmountConditionEditor',
    category: 'product',

    initialize: function (model) {
        this.shipping = false;
        this.currentIncludeTaxes = false;
        this.currentIncludeDiscount = false;
        this.model = $.extend({ Values: [] }, model);
        this.sortAscending = true;
        this.currencyRetreiving = false;
        this.getCurrenciesCallBacks = [];
        this.currentSort = 'Minimum';
        this.sortValues();
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

    sort: function (member) {
        this.sortAscending = member == this.currentSort ? !this.sortAscending : true;
        this.currentSort = member;
        this.sortValues();
        this.editor.refresh(true);
    },

    updateCurrentMinimum: function (textbox) {
        var value = textbox.val();
        if (this.isDecimal(value)) {
            this.currentMinimum = parseFloat(value);
            textbox.data('last', this.currentMinimum);
        }
        else {
            this.currentMinimum = null;
            textbox.val(textbox.data('last'));
        }
    },

    updateCurrentMaximum: function (textbox) {
        var value = textbox.val();
        if (this.isDecimal(value)) {
            this.currentMaximum = parseFloat(value);
            textbox.data('last', this.currentMinimum);
        }
        else {
            this.currentMaximum = null;
            textbox.val(textbox.data('last'));
        }
    },

    updateCurrentIncludeTaxes: function (includeTaxes) {
        this.currentIncludeTaxes = includeTaxes;
    },

    updateCurrentIncludeDiscount: function (includeDiscount) {
        this.currentIncludeDiscount = includeDiscount;
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

    updateCurrentCurrency: function (currencyId) {
        this.currentCurrencyId = currencyId ? parseInt(currencyId) : null;
    },

    addValue: function () {
        var self = this;
        if (this.currentMinimum == null && this.currentMaximum == null) {
            alert(Magelia.WebStore.Discount.Conditions.AmountCondition.Localizations.MinimumOrMaximumMissingErrorMessage);
            return;
        }
        if (this.currentCurrencyId == null) {
            alert(Magelia.WebStore.Discount.Conditions.AmountCondition.Localizations.CurrencyMissingErrorMessage);
            return;
        }
        if (this.currentMaximum != null && this.currentMinimum != null && this.currentMaximum < this.currentMinimum) {
            alert(Magelia.WebStore.Discount.Conditions.AmountCondition.Localizations.MinimumGreaterThanMaximumErrorMessage);
            return;
        }
        if (this.model.Values.any(function (value) { return value.CurrencyId == self.currentCurrencyId && ((self.currenMinimum >= value.Minimum && self.currenMinimum < value.Maximum) || (self.currentMaximum > value.Minimum && self.currentMaximum <= value.Maximum)); })) {
            alert(Magelia.WebStore.Discount.Conditions.AmountCondition.Localizations.ValueConflictsErrorMessage);
            return;
        }
        this.model.Values.push({ Minimum: this.currentMinimum, Maximum: this.currentMaximum, IncludeTaxes: this.currentIncludeTaxes, IncludeDiscount: this.currentIncludeDiscount, CurrencyId: this.currentCurrencyId });
        this.sortValues();
        this.currentMinimum = null;
        this.currentMaximum = null;
        this.currentIncludeTaxes = false;
        this.currentIncludeDiscount = false;
        this.currentCurrencyId = null;
        this.editor.refresh(true);
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
        return currency ? currency.Code : Magelia.WebStore.Discount.Conditions.AmountCondition.Localizations.UnavailableCurrencyText;
    },

    editValue: function (index) {
        var value = this.model.Values.elementAt(index);
        this.model.Values.removeAt(index);
        this.currentMinimum = value.Minimum;
        this.currentMaximum = value.Maximum;
        this.currentIncludeTaxes = value.IncludeTaxes;
        this.currentIncludeDiscount = value.IncludeDiscount;
        this.currentCurrencyId = value.CurrencyId;
        this.editor.refresh(true);
    },

    removeValue: function (index) {
        this.model.Values.removeAt(index);
        this.editor.refresh(true);
    }
};
