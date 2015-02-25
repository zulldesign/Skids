Type.registerNamespace('Magelia.WebStore.Discount.Conditions');

Magelia.WebStore.Discount.Conditions.BrandsCondition = function (editor, model) {
    this.editor = editor;
    this.initialize(model);
};

Magelia.WebStore.Discount.Conditions.BrandsCondition.prototype = {
    identifier: 'brands',
    template: 'BrandsConditionEditor',
    category: 'product',

    initialize: function (model) {
        this.sortedAscending = true;
        this.model = $.extend({ Brands: [] }, model);
        this.sortBrands();
    },

    addBrand: function () {
        if (this.currentBrand) {
            if (this.model.Brands.indexOf(this.currentBrand) == -1) {
                this.model.Brands.push(this.currentBrand);
                this.sortBrands();
                this.currentBrand = null;
            }
            this.editor.refresh(true);
        }
    },

    sortBrands: function () {
        this.model.Brands.sort();
        if (!this.sortedAscending) {
            this.model.Brands.reverse();
        }
    },

    revertSorting: function () {
        this.sortedAscending = !this.sortedAscending;
        this.sortBrands();
        this.editor.refresh(true);
    },

    removeBrand: function (index) {
        this.model.Brands.removeAt(index);
        this.editor.refresh(true);
    },

    editBrand: function (index) {
        this.currentBrand = this.model.Brands.elementAt(index);
        this.model.Brands.removeAt(index);
        this.editor.refresh(true);
    },

    registerAddTextbox: function (textbox) {
        var self = this;
        textbox.bind(
            {
                keypress: function (event) {
                    if (event.keyCode == 13) {
                        event.stopPropagation();
                        self.addBrand();
                    }
                },
                keyup: function () {
                    self.currentBrand = textbox.val();
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
                    Magelia.WebStore.Admin.Scripts.Services.AutoCompleteServices.GetBrands(
                        textbox.val(),
                        function (brands) {
                            response($.map(brands.where(function (b) { return self.model.Brands.indexOf(b) == -1; }), function (brand) { return { label: brand, value: brand }; }));
                        }
                    );
                },
                select: function (e, ui) {
                    self.currentBrand = ui.item.value;
                    self.addBrand();
                }
            }
        );
    }
};