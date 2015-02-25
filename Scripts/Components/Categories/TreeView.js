Type.registerNamespace('Magelia.WebStore.Categories');

Magelia.WebStore.Categories.TreeView = function (config) {
    if ($.isPlainObject(config)) {
        this.config = config;
        this.initialize();
    }
};

Magelia.WebStore.Categories.TreeView.prototype = {
    getSubCategoriesCountTimeOut: null,
    duplicatedCategoryId: null,
    categorySelector: null,
    catalogSelector: null,
    container: null,
    persister: null,
    config: null,
    root: null,
    list: null,

    initialize: function () {
        this.applyConfig();
        this.ensureElements();
        this.restoreState();
        this.setEventHandlers();
        this.loadDefault();
    },

    loadDefault: function () {
        if (!this.root) {
            this.loadCategories(null, true);
        }
    },

    setEventHandlers: function () {
        this.catalogSelector.change(
            $.proxy(
                function () {
                    this.clearState();
                },
                this
            )
        );
    },

    clearState: function () {
        this.persister.val('');
    },

    ensureElements: function () {
        this.categorySelector = $(this.categorySelector);
        this.catalogSelector = $(this.catalogSelector);
        this.container = $(this.container);
        this.persister = $(this.persister);
    },

    applyConfig: function () {
        $.extend(this, this.config);
    },

    restoreState: function () {
        var rawState = this.persister.val();
        if (rawState) {
            var state = $.parseJSON(rawState);
            this.catalogSelector.val(state.currentCatalogId);
            if (state.root) {
                this.appendChildCategories(null, this.createCategoryNodes(null, [state.root]));
            }
            else {
                this.removeChildCategories();
            }
        }
    },

    saveState: function () {
        this.persister.val(JSON.stringify({ currentCatalogId: this.getCurrentCatalogId(), root: this.root ? this.root.getState() : null }));
    },

    loadCategories: function (parentCategory, expand, callback) {
        var catalogId = this.getCurrentCatalogId();
        if (catalogId) {
            Magelia.WebStore.Admin.Products.Categories.Services.GetChildCategories(
                catalogId,
                parentCategory ? parentCategory.categoryId : '',
                this.config.culture,
                $.proxy(
                    function (categories) {
                        var categoryNodes = this.createCategoryNodes(parentCategory, categories);
                        this.appendChildCategories(parentCategory, categoryNodes);
                        if (expand) {
                            $(categoryNodes).each(function () { this.expand(); });
                        }
                        if ($.isFunction(callback)) {
                            callback();
                        }
                    },
                    this
                ),
                $.proxy(function () { this.showError(Magelia.WebStore.Categories.TreeView.Localizations.GetCategoriesErrorMessage); }, this)
            )
        }
    },

    createCategoryNodes: function (parentCategory, categories) {
        var self = this;
        var bindings = [];
        var selectedCategoryId = this.getSelectedCategory();
        bindings[Magelia.WebStore.Categories.CategoryNode.prototype.removedEventName] = function () { self.onCategoryRemoved(); };
        bindings[Magelia.WebStore.Categories.CategoryNode.prototype.expandingEventName] = function (e, callback) { self.onCategoryExpand(this, callback); };
        bindings[Magelia.WebStore.Categories.CategoryNode.prototype.collapsingEventName] = function () { self.onCategoryCollapse(this); };
        bindings[Magelia.WebStore.Categories.CategoryNode.prototype.addingEventName] = function () { self.onAdding(this); };
        bindings[Magelia.WebStore.Categories.CategoryNode.prototype.deletingEventName] = function () { self.onDeleting(this); };
        bindings[Magelia.WebStore.Categories.CategoryNode.prototype.selectingEventName] = function () { self.onSelecting(this); };
        bindings[Magelia.WebStore.Categories.CategoryNode.prototype.unselectingEventName] = function () { self.onUnselecting(this); };
        bindings[Magelia.WebStore.Categories.CategoryNode.prototype.droppedEventName] = function (event, item, index, link) { self.onDropped(this, item, index, link); };
        bindings[Magelia.WebStore.Categories.CategoryNode.prototype.enterEventName] = function () { self.onEnter(this); };
        bindings[Magelia.WebStore.Categories.CategoryNode.prototype.leaveEventName] = function () { self.onLeave(this); };
        bindings[Magelia.WebStore.Categories.CategoryNode.prototype.duplicateEventName] = function () { self.onDuplicate(this); };
        return $(categories).map(
            function () {
                var category = new Magelia.WebStore.Categories.CategoryNode(parentCategory, $.extend(this, { canEdit: self.config.canEdit, canCreateAndDelete: self.config.canCreateAndDelete, selected: selectedCategoryId == this.categoryId }));
                $(category).bind(bindings);
                return category;
            }
        ).toArray();
    },

    appendChildCategories: function (parentCategory, categories) {
        if ($.isArray(categories) && !(parentCategory instanceof Magelia.WebStore.Categories.EditableCategoryNode)) {
            if (parentCategory) {
                parentCategory.appendChildCategories(categories);
            }
            else if (categories.length > 0) {
                this.removeChildCategories(parentCategory);
                this.root = categories[0];
                this.list = $('<ul/>').appendTo(this.container);
                this.list.append(this.root.item);
            }
            for (var i = 0; i < categories.length; i++) {
                var category = categories[i];
                if ($.isArray(category._childCategories) && category._childCategories.length > 0) {
                    this.appendChildCategories(category, this.createCategoryNodes(category, category._childCategories));
                }
            }
        }
        this.saveState();
    },

    removeChildCategories: function (category) {
        if (!(category instanceof Magelia.WebStore.Categories.EditableCategoryNode)) {
            if (category) {
                category.removeChildCategories();
            }
            else if (this.root) {
                this.root.remove();
                this.root = null;
            }
        }
    },

    getCurrentCatalogId: function () {
        return this.catalogSelector.val();
    },

    showError: function (message) {
        alert(message);
    },

    unSelectCategories: function (categories) {
        for (var i = 0; i < categories.length; i++) {
            var category = categories[i];
            category.setSelected(false);
            this.unSelectCategories(category.childCategories);
        }
    },

    submitSelectedCategory: function (categoryId) {
        this.categorySelector.val(categoryId || '').change();
    },

    getSelectedCategory: function () {
        return this.categorySelector.val();
    },

    onEnter: function (category) {
        var getSubCategoriesCountTimeOut = setTimeout(
            $.proxy(
                function () {
                    Magelia.WebStore.Admin.Products.Categories.Services.CountSubCategories(
                        this.getCurrentCatalogId(),
                        category.categoryId,
                        $.proxy(
                            function (count) {
                                if (getSubCategoriesCountTimeOut == this.getSubCategoriesCountTimeOut) {
                                    category.setTooltip(count + ' ' + Magelia.WebStore.Categories.TreeView.Localizations.SubCategoriesTitleText);
                                }
                            },
                            this
                        ),
                        $.noop
                    );
                },
                this
            ),
            500
        );
        this.getSubCategoriesCountTimeOut = getSubCategoriesCountTimeOut;
    },

    onLeave: function (category) {
        clearTimeout(this.getSubCategoriesCountTimeOut);
        category.removeTooltip();
    },

    onUnselecting: function (category) {
        category.setSelected(false);
        this.saveState();
        this.submitSelectedCategory();
    },

    onSelecting: function (category) {
        this.unSelectCategories([this.root]);
        category.setSelected(true);
        this.saveState();
        this.submitSelectedCategory(category.categoryId);
    },

    isChildCategory: function (receivingCategory, movedCategory) {
        var parent = receivingCategory.parent;
        while (parent) {
            if (parent == movedCategory) {
                return true;
            }
            parent = parent.parent;
        }
        return false;
    },

    onDropped: function (receivingCategory, movedCategory, index, link) {
        if (movedCategory.parent) {
            if (!link && (this.isChildCategory(receivingCategory, movedCategory) || receivingCategory == movedCategory)) {
                this.showError(Magelia.WebStore.Categories.TreeView.Localizations.ParentCategoryMovedInChildCategoryErrorMessage);
                return;
            }
            if (link && receivingCategory == movedCategory.parent) {
                this.showError(Magelia.WebStore.Categories.TreeView.Localizations.CategoryAlreadyContainedErrorMessage);
                return;
            }
            if (link && (movedCategory.categoryId == receivingCategory.categoryId)) {
                this.showError(Magelia.WebStore.Categories.TreeView.Localizations.CategoryMovedToItSelfErrorMessage);
                return;
            }
            Magelia.WebStore.Admin.Products.Categories.Services.MoveCategory(
                this.getCurrentCatalogId(),
                receivingCategory.categoryId,
                movedCategory.parent.categoryId,
                movedCategory.categoryId,
                index,
                link,
                $.proxy(
                    function (result) {
                        switch (result) {
                            case -1:
                                this.showError(Magelia.WebStore.Categories.TreeView.Localizations.MovingCategoryErrorMessage);
                                break;
                            case -2:
                                this.showError(Magelia.WebStore.Categories.TreeView.Localizations.CategoryAlreadyContainedErrorMessage);
                                break;
                            default:
                                var state = movedCategory.getState();
                                var copy = this.createCategoryNodes(receivingCategory, [state])[0];
                                var childCategories = this.createCategoryNodes(copy, state._childCategories);
                                if (childCategories.length > 0) {
                                    this.appendChildCategories(copy, childCategories);
                                }
                                if (!link) {
                                    movedCategory.parent.removeChildCategory(movedCategory);
                                }
                                if (receivingCategory.expanded) {
                                    receivingCategory.insertChildCategory(copy, result);
                                    this.saveState();
                                }
                                else {
                                    receivingCategory.expand();
                                }
                                break;
                        }
                    },
                    this
                ),
                $.proxy(function () { this.showError(Magelia.WebStore.Categories.TreeView.Localizations.MovingCategoryErrorMessage); }, this)
            );
        }
    },

    onCategoryRemoved: function () {
        this.saveState();
    },

    onCategoryExpand: function (category, callBack) {
        this.loadCategories(category, false, callBack);
    },

    onCategoryCollapse: function (category) {
        this.removeChildCategories(category);
        this.saveState();
    },

    onAdding: function (category) {
        if ($('input[type=text]', this.container).length == 0) {
            var editableCategoryNode = new Magelia.WebStore.Categories.EditableCategoryNode(category);
            this.appendChildCategories(category, [editableCategoryNode]);
            $(editableCategoryNode).bind(
                Magelia.WebStore.Categories.EditableCategoryNode.prototype.endEditingEventName,
                $.proxy(
                    function (event, code) {
                        this.onEndEditing(editableCategoryNode, code)
                    },
                    this
                )
            );
            editableCategoryNode.start();
        }
    },

    onDuplicate: function (category) {
        if ($('input[type=text]', this.container).length == 0) {
            var editableCategoryNode = new Magelia.WebStore.Categories.EditableCategoryNode(category.parent);
            this.duplicatedCategoryId = category.categoryId;
            category.parent.insertChildCategory(editableCategoryNode, category.parent.getChildCategoryIndex(category) + 1);
            $(editableCategoryNode).bind(Magelia.WebStore.Categories.EditableCategoryNode.prototype.endEditingEventName, $.proxy(function (event, code) { this.onEndDuplicating(editableCategoryNode, code) }, this));
            editableCategoryNode.start((/^(.*)(\s)\(\d+\)/).exec(category.code)[1]);
        }
    },

    onDeleting: function (category) {
        if (category.parent && confirm(Magelia.WebStore.Categories.TreeView.Localizations.DeletingConfirmationMessage)) {
            Magelia.WebStore.Admin.Products.Categories.Services.DeleteCategory(
                this.getCurrentCatalogId(),
                category.parent.categoryId,
                category.categoryId,
                $.proxy(
                    function (result) {
                        if (result) {
                            category.parent.removeChildCategory(category);
                            this.saveState();
                            if (result.deleted && category.selected) {
                                this.submitSelectedCategory();
                            }
                        }
                        else {
                            this.showError(Magelia.WebStore.Categories.TreeView.Localizations.DeletingCategoryErrorMessage);
                        }
                    },
                    this
                ),
                $.proxy(function () { this.showError(Magelia.WebStore.Categories.TreeView.Localizations.DeletingCategoryErrorMessage); }, this)
            );
        }
    },

    onEndDuplicating: function (editableCategoryNode, code) {
        if (code && !editableCategoryNode.canceled) {
            if (code.length > 50) {
                this.showError(Magelia.WebStore.Categories.TreeView.Localizations.CategoryCodeLengthErrorMessage);
                editableCategoryNode.start();
            }
            else {
                Magelia.WebStore.Admin.Products.Categories.Services.CodeIsUnique(
                    this.getCurrentCatalogId(),
                    code,
                    $.proxy(
                        function (result) {
                            if (result) {
                                Magelia.WebStore.Admin.Products.Categories.Services.CopyCategory(
                                    this.getCurrentCatalogId(),
                                    editableCategoryNode.parent.categoryId,
                                    this.duplicatedCategoryId,
                                    code,
                                    $.proxy(
                                        function (result) {
                                            if (result) {
                                                var copy = this.createCategoryNodes(
                                                    editableCategoryNode.parent,
                                                    [
                                                        $.extend(
                                                            editableCategoryNode.parent.getChildCategory(this.duplicatedCategoryId).getState(),
                                                            { categoryId: result.categoryId, code: result.code, _childCategories: [], expanded: false }
                                                        )
                                                    ]
                                                )[0];
                                                editableCategoryNode.parent.removeChildCategory(editableCategoryNode);
                                                editableCategoryNode.parent.insertChildCategory(copy, result.index);
                                                copy.triggerSelecting();
                                            }
                                            else {
                                                this.showError(Magelia.WebStore.Categories.TreeView.Localizations.CopyCategoryErrorMessage);
                                                editableCategoryNode.start();
                                            }
                                        },
                                        this
                                    ),
                                    $.proxy(
                                        function () {
                                            this.showError(Magelia.WebStore.Categories.TreeView.Localizations.AddingCategoryErrorMessage);
                                            editableCategoryNode.start();
                                        },
                                        this
                                    )
                                );
                            }
                            else {
                                this.showError(Magelia.WebStore.Categories.TreeView.Localizations.CategoryCodeUniqueErrorMessage);
                                editableCategoryNode.start();
                            }
                        },
                        this
                    ),
                    $.proxy(
                        function () {
                            this.showError(Magelia.WebStore.Categories.TreeView.Localizations.ValidatingCodeErrorMessage);
                            editableCategoryNode.start();
                        },
                        this
                    )
                );
            }
        }
        else {
            editableCategoryNode.parent.removeChildCategory(editableCategoryNode);
        }
    },

    onEndEditing: function (editableCategoryNode, code) {
        if (!editableCategoryNode.canceled) {
            if (!code) {
                this.showError(Magelia.WebStore.Categories.TreeView.Localizations.CategoryCodeRequiredErrorMessage);
                editableCategoryNode.start();
                return;
            }
            if (code.length > 50) {
                this.showError(Magelia.WebStore.Categories.TreeView.Localizations.CategoryCodeLengthErrorMessage);
                editableCategoryNode.start();
                return;
            }
            else {
                Magelia.WebStore.Admin.Products.Categories.Services.CodeIsUnique(
                    this.getCurrentCatalogId(),
                    code,
                    $.proxy(
                        function (result) {
                            if (result) {
                                Magelia.WebStore.Admin.Products.Categories.Services.AddCategory(
                                    this.getCurrentCatalogId(),
                                    editableCategoryNode.parent.categoryId,
                                    code,
                                    $.proxy(
                                        function (result) {
                                            if (result) {
                                                editableCategoryNode.parent.removeChildCategory(editableCategoryNode);
                                                if (editableCategoryNode.parent.expanded) {
                                                    var childCategories = this.createCategoryNodes(editableCategoryNode.parent, [{ categoryId: result, code: $('<div/>').text(code).html() + ' (0)' }]);
                                                    this.appendChildCategories(editableCategoryNode.parent, childCategories);
                                                    childCategories[0].triggerSelecting();
                                                }
                                                else {
                                                    editableCategoryNode.parent.expand(
                                                        function () {
                                                            editableCategoryNode.parent.childCategories[editableCategoryNode.parent.childCategories.length - 1].triggerSelecting();
                                                        }
                                                    );
                                                }
                                            }
                                            else {
                                                this.showError(Magelia.WebStore.Categories.TreeView.Localizations.AddingCategoryErrorMessage);
                                                editableCategoryNode.start();
                                            }
                                        },
                                        this
                                    ),
                                    $.proxy(
                                        function () {
                                            this.showError(Magelia.WebStore.Categories.TreeView.Localizations.AddingCategoryErrorMessage);
                                            editableCategoryNode.start();
                                        },
                                        this
                                    )
                                );
                            }
                            else {
                                this.showError(Magelia.WebStore.Categories.TreeView.Localizations.CategoryCodeUniqueErrorMessage);
                                editableCategoryNode.start();
                            }
                        },
                        this
                    ),
                    $.proxy(
                        function () {
                            this.showError(Magelia.WebStore.Categories.TreeView.Localizations.ValidatingCodeErrorMessage);
                            editableCategoryNode.start();
                        },
                        this
                    )
                )
            }
        }
        else {
            editableCategoryNode.parent.removeChildCategory(editableCategoryNode);
        }
    }
};