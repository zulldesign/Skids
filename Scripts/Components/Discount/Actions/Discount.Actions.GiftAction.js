Type.registerNamespace('Magelia.WebStore.Discount.Actions');

Magelia.WebStore.Discount.Actions.GiftAction = function (editor, model) {
    this.editor = editor;
    this.initialize(model);
};

Magelia.WebStore.Discount.Actions.GiftAction.prototype = {
    identifier: 'gift',
    template: 'GiftActionEditor',
    editor: null,
    model: null,
    currentSort: null,
    sortAscending: null,
    currentPurchasedQuantity: null,
    currentPurchasedSKU: null,
    currentOfferedQuantity: null,
    currentOfferedSKU: null,
    currentRepeatable: null,
    currentCatalog: null,

    initialize: function (model) {
        this.currentSort = 'PurchasedQuantity';
        this.sortAscending = true;
        this.currentRepeatable = false;
        this.model = $.extend({ PostCondition: null, GiftDefinitions: [] }, model);
        this.sortGiftDefinitions();
    },

    sort: function (member) {
        this.sortAscending = member == this.currentSort ? !this.sortAscending : true;
        this.currentSort = member;
        this.sortGiftDefinitions();
        this.editor.refresh(true);
    },

    sortGiftDefinitions: function () {
        this.model.GiftDefinitions.sort($.proxy(function (gd1, gd2) { return (gd1[this.currentSort] || '') < (gd2[this.currentSort] || '') ? -1 : 1 }, this));
        if (!this.sortAscending) {
            this.model.GiftDefinitions.reverse();
        }
    },

    updateCurrentPurchasedQuantity: function (textbox, cbxRepeatable) {
        var purchasedQuantity = parseInt(textbox.val());
        this.currentPurchasedQuantity = isNaN(purchasedQuantity) || purchasedQuantity < 1 ? null : purchasedQuantity;
        textbox.val(this.currentPurchasedQuantity);
        this.updateRepetableActivation(cbxRepeatable);
    },

    updateCurrentPurchasedSKU: function (sku, cbxRepeatable) {
        this.currentPurchasedSKU = sku;
        this.updateRepetableActivation(cbxRepeatable);
    },

    updateRepetableActivation: function (cbxRepeatable) {
        if (this.currentPurchasedSKU && this.currentPurchasedQuantity != null) {
            cbxRepeatable.removeAttr('disabled');
        }
        else {
            cbxRepeatable.attr({ disabled: 'disabled' });
        }
    },

    updateCurrentOfferedQuantity: function (textbox) {
        var offeredQuantity = parseInt(textbox.val());
        if (!isNaN(offeredQuantity) && offeredQuantity > 0) {
            this.currentOfferedQuantity = offeredQuantity;
        }
        textbox.val(this.currentOfferedQuantity);
    },

    updateCurrentOfferedSKU: function (sku) {
        this.currentOfferedSKU = sku;
    },

    updateCurrentCatalog: function (catalog) {
        this.currentCatalog = catalog;
    },

    updateCurrentRepeatable: function (Repeatable) {
        this.currentRepeatable = Repeatable;
    },

    addGiftDefinition: function () {
        if (!this.currentPurchasedQuantity && this.currentPurchasedSKU) {
            alert(Magelia.WebStore.Discount.Actions.GiftAction.Localizations.PurchasedQuantityRequiredErrorMessage);
            return;
        }
        if (!this.currentPurchasedSKU && this.currentPurchasedQuantity) {
            alert(Magelia.WebStore.Discount.Actions.GiftAction.Localizations.PurchasedSKURequiredErrorMessage);
            return;
        }
        if (!this.currentOfferedQuantity) {
            alert(Magelia.WebStore.Discount.Actions.GiftAction.Localizations.OfferedQuantityRequiredErrorMessage);
            return;
        }
        if (!this.currentOfferedSKU) {
            alert(Magelia.WebStore.Discount.Actions.GiftAction.Localizations.OfferedSKURequiredErrorMessage);
            return;
        }
        this.model.GiftDefinitions.push({ PurchasedQuantity: this.currentPurchasedQuantity, PurchasedSKU: this.currentPurchasedSKU, OfferedQuantity: this.currentOfferedQuantity, OfferedSKU: this.currentOfferedSKU, Repeatable: this.currentRepeatable && this.currentPurchasedSKU && this.currentPurchasedQuantity != null, Catalog: this.currentCatalog });
        this.sortGiftDefinitions();
        this.currentPurchasedQuantity = null;
        this.currentPurchasedSKU = null;
        this.currentOfferedQuantity = null;
        this.currentOfferedSKU = null;
        this.currentCatalog = null;
        this.currentRepeatable = false;
        this.editor.refresh(true);
    },

    editGiftDefinition: function (index) {
        var giftDefinition = this.model.GiftDefinitions.elementAt(index);
        this.currentPurchasedQuantity = giftDefinition.PurchasedQuantity;
        this.currentPurchasedSKU = giftDefinition.PurchasedSKU;
        this.currentOfferedQuantity = giftDefinition.OfferedQuantity;
        this.currentOfferedSKU = giftDefinition.OfferedSKU;
        this.currentRepeatable = giftDefinition.Repeatable;
        this.currentCatalog = giftDefinition.Catalog;
        this.model.GiftDefinitions.removeAt(index);
        this.editor.refresh(true);
    },

    removeGiftDefinition: function (index) {
        this.model.GiftDefinitions.removeAt(index);
        this.editor.refresh(true);
    },

    implementAutoComplete: function (textbox) {
        var self = this;
        textbox.autocomplete(
            {
                minLength: 0,
                autoFocus: true,
                source: function (request, response) {
                    Magelia.WebStore.Admin.Scripts.Services.AutoCompleteServices.GetSKUs(
                        textbox.val(),
                        self.editor.culture,
                        function (productReferences) {
                            response($.map(productReferences, function (pr) { return { label: pr.Name, value: pr.SKU }; }));
                        }
                    );
                },
                select: function (e, ui) {
                    textbox.val(ui.item.value);
                    textbox.keyup();
                }
            }
        );
    },

    populateWithCatalogs: function (select) {
        Magelia.WebStore.Admin.Scripts.Services.AutoCompleteServices.GetAllCatalogs(
            $.proxy(
                function (catalogs) {
                    if ($.isArray(catalogs)) {
                        for (var i = 0; i < catalogs.length; i++) {
                            var catalog = catalogs[i];
                            $('<option/>').attr({ value: catalog }).html(catalog).appendTo(select);
                        }
                        select.val(this.currentCatalog);
                    }
                    else {
                        this.currentCatalog = null;
                    }
                },
                this
            )
        )
    }
};
