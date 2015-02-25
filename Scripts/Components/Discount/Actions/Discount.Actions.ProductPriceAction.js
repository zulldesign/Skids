Type.registerNamespace('Magelia.WebStore.Discount.Actions');

Magelia.WebStore.Discount.Actions.ProductPriceAction = function (editor, model) {
    this.editor = editor;
    this.initialize(model);
};

Magelia.WebStore.Discount.Actions.ProductPriceAction.prototype = {
    identifier: 'productprice',
    template: 'ProductPriceActionEditor',
    editor: null,
    model: null,
    currentSort: null,
    sortAscending: null,
    currentPrice: null,
    getCurrenciesCallBacks: null,
    currencyRetreiving: null,
    currencies: null,
    currentCurrencyId: null,
    currentIncludeTaxes: null,
    currentSort: null,

    initialize: function (model) {
        this.currentSort = 'Price';
        this.sortAscending = true;
        this.currencyRetreiving = false;
        this.getCurrenciesCallBacks = [];
        this.currentIncludeTaxes = false;
        this.model = $.extend({ PostCondition: null, Prices: [] }, model);
        this.sortPrices();
    },

    updateCurrentPrice: function (textbox) {
        var value = textbox.val();
        var floatValue = parseFloat(value);
        if (this.isDecimal(value) || value == '') {
            this.currentPrice = isNaN(floatValue) ? null : floatValue;
            textbox.data('last', this.currentValue);
        }
        else {
            var last = textbox.data('last');
            textbox.val(last);
            this.currentPrice = last;
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

    addPrice: function () {
        var self = this;
        if (this.currentPrice == null) {
            alert(Magelia.WebStore.Discount.Actions.ProductPriceAction.Localizations.PriceMissingErrorMessage);
            return;
        }
        if (this.currentCurrencyId == null) {
            alert(Magelia.WebStore.Discount.Actions.ProductPriceAction.Localizations.CurrencyMissingErrorMessage);
            return;
        }
        if (this.model.Prices.any(function (item) { return item.CurrencyId == self.currentCurrencyId; })) {
            alert(Magelia.WebStore.Discount.Actions.ProductPriceAction.Localizations.AlreadyDefinedForCurrencyErrorMessage);
            return;
        }
        this.model.Prices.push({ Price: this.currentPrice, IncludeTaxes: this.currentIncludeTaxes, CurrencyId: this.currentCurrencyId });
        this.sortPrices();
        this.currentPrice = null;
        this.currentIncludeTaxes = false;
        this.currentCurrencyId = null;
        this.editor.refresh(true);
    },

    sortPrices: function () {
        this.model.Prices.sort($.proxy(function (value1, value2) { return this.getMemberValue(value1, this.currentSort) < this.getMemberValue(value2, this.currentSort) ? -1 : 1; }, this));
        if (!this.sortAscending) {
            this.model.Prices.reverse();
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
        return currency ? currency.Code : Magelia.WebStore.Discount.Actions.ProductPriceAction.Localizations.UnavailableCurrencyText;
    },

    sort: function (member) {
        this.sortAscending = member == this.currentSort ? !this.sortAscending : true;
        this.currentSort = member;
        this.sortPrices();
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

    editPrice: function (index) {
        var price = this.model.Prices.elementAt(index);
        this.model.Prices.removeAt(index);
        this.currentPrice = price.Price;
        this.currentCurrencyId = price.CurrencyId;
        this.currentIncludeTaxes = price.IncludeTaxes;
        this.editor.refresh(true);
    },

    removePrice: function (index) {
        this.model.Prices.removeAt(index);
        this.editor.refresh(true);
    }
};
