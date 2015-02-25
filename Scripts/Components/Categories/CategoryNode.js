Type.registerNamespace('Magelia.WebStore.Categories');

Magelia.WebStore.Categories.CategoryNode = function (parent, config) {
    if ($.isPlainObject(config)) {
        this.parent = parent;
        this.config = config;
        this.initialize();
    }
};

Magelia.WebStore.Categories.CategoryNode.prototype = {
    enterEventName: 'enter',
    leaveEventName: 'leave',
    duplicateEventName: 'duplicate',
    selectingEventName: 'selecting',
    unselectingEventName: 'unselecting',
    droppedEventName: 'dropped',
    addingEventName: 'adding',
    deletingEventName: 'deleting',
    removedEventName: 'removed',
    expandingEventName: 'expanding',
    collapsingEventName: 'collapsing',
    categoryHelperCssClass: 'categoryHelper',
    separatorCssClass: 'separator',
    hoverCssClass: 'hover',
    expanderCssClass: 'expander',
    expandedCssClass: 'expanded',
    linkerCssClass: 'linker',
    duplicatorCssClass: 'duplicate',
    contentCssClass: 'content',
    optionCssClass: 'option',
    deleteCssClass: 'delete',
    selectedCssClass: 'selected',
    addCssClass: 'add',
    editCssClass: 'edit',
    tooltipCssClass: 'categoryTooltip',
    categoryDataKey: 'category',
    tooltip: null,
    linker: null,
    duplicator: null,
    selected: null,
    contentLink: null,
    childCategories: null,
    categoryId: null,
    parent: null,
    config: null,
    expanded: null,
    expander: null,
    item: null,
    code: null,
    list: null,

    initialize: function () {
        this.applyConfig();
        this.buildInterface();
        this.refreshState();
        this.setEventHandlers();
        this.registerCategory();
    },

    applyConfig: function () {
        $.extend(this, { expanded: false, childCategories: [], selected: false }, this.config);
    },

    buildInterface: function () {
        var table = $('<table/>');
        var line = $('<tr/>').appendTo(table);
        this.contentLink = this.createLink().text(this.code).click($.proxy(this.triggerSelecting, this));
        this.list = $('<ul/>');
        this.item = $('<li/>').append(table);
        $('<td/>').addClass(this.contentCssClass).append(this.contentLink).appendTo(line);
        this.expander = this.createLink().addClass(this.expanderCssClass);
        $('<td/>').append(this.expander).prependTo(line);
        if (this.parent && this.config.canCreateAndDelete) {
            this.linker = this.appendOption(line, this.linkerCssClass, Magelia.WebStore.Categories.CategoryNode.Localizations.LinkCategoryTooltip);
            this.duplicator = this.appendOption(line, this.duplicatorCssClass, Magelia.WebStore.Categories.CategoryNode.Localizations.CopyCategoryTooltip, this.triggerDuplicate);
            this.appendOption(line, this.editCssClass, Magelia.WebStore.Categories.CategoryNode.Localizations.EditCategoryTooltip, this.triggerSelecting);
            this.appendOption(line, this.deleteCssClass, Magelia.WebStore.Categories.CategoryNode.Localizations.DeleteCategoryTooltip, this.triggerDeleting);
        }
        else {
            this.appendOption(line, this.editCssClass, Magelia.WebStore.Categories.CategoryNode.Localizations.EditCategoryTooltip, this.triggerSelecting);
        }
        if (this.config.canCreateAndDelete) {
            this.appendOption(line, this.addCssClass, Magelia.WebStore.Categories.CategoryNode.Localizations.AddChildCategoryTooltip, this.triggerAdding);
        }
        this.tooltip = $('<div/>').addClass(this.tooltipCssClass).appendTo(this.item).css({ opacity: 0.7 }).hide();
    },

    registerCategory: function () {
        this.item.data(this.categoryDataKey, this);
    },

    appendOption: function (line, cssClass, title, trigger) {
        var link = this.createLink().addClass(cssClass).attr({ title: title });
        if ($.isFunction(trigger)) {
            link.click($.proxy(trigger, this))
        }
        $('<td/>').addClass(this.optionCssClass).append(link).appendTo(line);
        return link;
    },

    createLink: function () {
        return $('<a/>').attr({ href: 'javascript:void(0);' });
    },

    refreshState: function () {
        if (this.expanded) {
            this.setExpanded();
        }
        this.setSelected(this.selected);
    },

    setEventHandlers: function () {
        var self = this;
        var table = this.item.children().first();
        this.expander.click(
            $.proxy(
                function () {
                    if (this.expanded) {
                        this.collapse();
                    }
                    else {
                        this.expand();
                    }
                },
                this
            )
        );
        if (this.parent && this.config.canEdit) {
            table.draggable(
                {
                    cursorAt: { left: -5, top: 32 },
                    helper: $.proxy(
                        function () {
                            return $('<div/>').addClass(this.categoryHelperCssClass).text(this.code)[0];
                        },
                        this
                    )
                }
            );
            if (this.config.canCreateAndDelete) {
                this.linker.draggable(
                    {
                        cursorAt: { left: -5, top: 32 },
                        helper: $.proxy(
                            function () {
                                return $('<div/>').addClass(this.categoryHelperCssClass).addClass(this.linkerCssClass).text(this.code)[0];
                            },
                            this
                        )
                    }
                );
            }
        }
        table.droppable(
            {
                hoverClass: this.hoverCssClass,
                tolerance: 'pointer',
                drop: function (e, ui) {
                    self.triggerDropped(ui.draggable.closest('li').data(self.categoryDataKey), '', ui.draggable.hasClass(self.linkerCssClass));
                }
            }
        );
        this.contentLink.hover($.proxy(this.triggerEnter, this), $.proxy(this.triggerLeave, this)).mousemove(
                $.proxy(
                function (e) {
                    this.tooltip.show();
                    this.tooltip.css({ top: e.clientY - this.tooltip.outerHeight(), left: e.clientX - this.tooltip.outerWidth() });
                    if (!this.tooltip.html()) {
                        this.tooltip.hide();
                    }
                },
                this
            )
        );
    },

    collapse: function () {
        this.setCollapsed();
        $(this).trigger(this.collapsingEventName);
    },

    setCollapsed: function () {
        this.expander.removeClass(this.expandedCssClass);
        this.expanded = false;
    },

    expand: function (callBack) {
        this.setExpanded();
        $(this).trigger(this.expandingEventName, [callBack]);
    },

    setExpanded: function () {
        this.expander.addClass(this.expandedCssClass);
        this.expanded = true;
    },

    setSelected: function (selected) {
        this.selected = selected;
        if (this.selected) {
            this.contentLink.addClass(this.selectedCssClass);
        }
        else {
            this.contentLink.removeClass(this.selectedCssClass);
        }
    },

    triggerEnter: function () {
        $(this).trigger(this.enterEventName);
    },

    triggerLeave: function () {
        $(this).trigger(this.leaveEventName);
    },

    triggerSelecting: function () {
        if (this.selected) {
            $(this).trigger(this.unselectingEventName);
        }
        else {
            $(this).trigger(this.selectingEventName);
        }
    },

    triggerAdding: function () {
        $(this).trigger(this.addingEventName);
    },

    triggerDeleting: function () {
        $(this).trigger(this.deletingEventName);
    },

    removeChildCategories: function () {
        var childCategories = this.childCategories;
        for (var i = 0; i < childCategories.length; i++) {
            this.removeChildCategory(childCategories[i]);
        }
    },

    remove: function () {
        this.removeChildCategories();
        this.item.remove();
    },

    setTooltip: function (tooltip) {
        var previousHeight = this.tooltip.outerHeight();
        var previousWidth = this.tooltip.outerWidth();
        this.tooltip.text(tooltip).fadeIn();
        this.tooltip.css({ top: this.tooltip.position().top - this.tooltip.outerHeight() + previousHeight, left: this.tooltip.position().left - this.tooltip.outerWidth() + previousWidth });
    },

    removeTooltip: function () {
        this.tooltip.hide().html('');
    },

    removeChildCategory: function (childCategory, preserveItem) {
        if (!(childCategory instanceof Magelia.WebStore.Categories.EditableCategoryNode)) {
            childCategory.removeChildCategories();
        }
        childCategory.item.prev().remove();
        childCategory.remove();
        this.childCategories = $(this.childCategories).filter(function () { return this != childCategory; }).toArray();
        if (this.childCategories.length == 0) {
            this.removeSeparators();
            this.list.remove();
            this.setCollapsed();
        }
        $(this).trigger(this.removedEventName);
    },

    appendChildCategories: function (categories) {
        this.removeSeparators();
        this.setExpanded();
        if (categories.length > 0) {
            this.list.appendTo(this.item);
            for (var i = 0; i < categories.length; i++) {
                var category = categories[i];
                this.list.append(category.item);
                this.childCategories.push(category);
            }
        }
        this.addSeparators();
    },

    getChildCategory: function (categoryId) {
        for (var i = 0; i < this.childCategories.length; i++) {
            var childCategory = this.childCategories[i];
            if (childCategory.categoryId == categoryId) {
                return childCategory;
            }
        }
    },

    getChildCategoryIndex: function (category) {
        for (var i = 0; i < this.childCategories.length; i++) {
            var childCategory = this.childCategories[i];
            if (childCategory == category) {
                return i;
            }
        }
    },

    insertChildCategory: function (category, index) {
        var childCategories = [];
        for (var i = 0; i <= this.childCategories.length; i++) {
            if (i < index) {
                childCategories.push(this.childCategories[i]);
            }
            else if (i > index) {
                childCategories.push(this.childCategories[i - 1]);
            }
            else {
                childCategories.push(category);
            }
        }
        if (this.childCategories.length == 0) {
            this.setExpanded();
            this.list.appendTo(this.item);
            if (this.getSeparators().length == 0) {
                this.createSeparator().appendTo(this.list);
            }
            category.item.appendTo(this.list);
            this.createSeparator().appendTo(this.list);
        }
        else {
            var maxIndex = this.childCategories.length - 1;
            if (index > maxIndex) {
                category.item.insertAfter(this.childCategories[maxIndex].item);
                this.createSeparator().insertBefore(category.item);
            }
            else {
                category.item.insertBefore(this.childCategories[index].item);
                this.createSeparator().insertAfter(category.item);
            }
        }
        this.childCategories = childCategories;
    },

    addSeparators: function () {
        var children = this.list.children();
        for (var i = 0; i < children.length; i++) {
            this.createSeparator().insertBefore(children[i]);
        }
        this.createSeparator().appendTo(this.list);
    },

    createSeparator: function () {
        var self = this;
        var separator = $('<li/>').addClass(this.separatorCssClass).droppable(
            {
                tolerance: 'pointer',
                hoverClass: this.hoverCssClass,
                drop: function (e, ui) {
                    var separatorIndex = separator.index();
                    self.triggerDropped(ui.draggable.closest('li').data(self.categoryDataKey), separatorIndex - (separatorIndex / 2), ui.draggable.hasClass(self.linkerCssClass));
                }
            }
        );
        return separator;
    },

    triggerDuplicate: function () {
        $(this).trigger(this.duplicateEventName);
    },

    triggerDropped: function (category, index, link) {
        $(this).trigger(this.droppedEventName, [category, index, link]);
    },

    removeSeparators: function () {
        this.getSeparators().remove();
    },

    getSeparators: function () {
        return this.list.children('.' + this.separatorCssClass);
    },

    getState: function () {
        var state = { code: this.code, categoryId: this.categoryId, selected: this.selected, expanded: this.expanded, _childCategories: [] };
        for (var i = 0; i < this.childCategories.length; i++) {
            var childCategory = this.childCategories[i];
            if (!(childCategory instanceof Magelia.WebStore.Categories.EditableCategoryNode)) {
                state._childCategories.push(childCategory.getState());
            }
        }
        return state;
    }
};
