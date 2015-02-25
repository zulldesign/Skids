Type.registerNamespace('Magelia.WebStore.Discount');

Magelia.WebStore.Discount.Editor = function (config) {
    this.initialize(config);
};

Magelia.WebStore.Discount.Editor.prototype = {
    defaultConfig: {
        culture: 127,
        vertical: true,
        showActions: true,
        showConditions: true,
        templatesLoaded: false,
        container: document.body,
        editorTemplateName: 'Editor',
        discount: { PreCondition: null, Actions: [] }
    },

    initialize: function (config) {
        $.extend(this, this.defaultConfig, config);
        this.container = $(this.container);
        this.hiddenField = $(this.hiddenField);
        this.conditions = this.getIdentifiablesInNamespace(Magelia.WebStore.Discount.Conditions);
        this.actions = this.getIdentifiablesInNamespace(Magelia.WebStore.Discount.Actions);
        this.focusPath = [];
        this.conditionEditorTemplate = this.vertical ? 'ConditionEditorVertical' : 'ConditionEditorHorizontal';
        this.getDiscount();
    },

    getIdentifiablesInNamespace: function (namespace) {
        var identifiables = [];
        if ($.isPlainObject(namespace)) {
            for (var member in namespace) {
                var element = namespace[member];
                if ($.isFunction(element) && element.prototype && element.prototype.identifier) {
                    identifiables.push(element);
                }
            }
        }
        return identifiables.sort($.proxy(function (identifiable1, identifiable2) { return this.getLocalizedName(identifiable1) < this.getLocalizedName(identifiable2) ? -1 : 1; }, this));
    },

    getLocalizedName: function (identifiable) {
        return identifiable && $.isPlainObject(identifiable.Localizations) ? identifiable.Localizations.Name || '' : '';
    },

    getDiscount: function () {
        var serializedDiscount = this.hiddenField.val();
        if (serializedDiscount) {
            var discount = $.parseJSON(serializedDiscount);
            if (discount.PreCondition) {
                this.discount.PreCondition = this.createCondition(discount.PreCondition);
            }
            this.discount.Actions = $.isArray(discount.Actions) ?
                                        $.map(
                                            discount.Actions,
                                            $.proxy(
                                                function (action) {
                                                    var actionInstance = $.extend(true, this.createAction(action), { model: { PostCondition: this.createCondition(action.PostCondition) } });
                                                    actionInstance.showPostCondition = actionInstance.model.PostCondition != null;
                                                    return actionInstance;
                                                },
                                                this
                                            )
                                        ) : [];
        }
    },

    getConditionCategories: function () {
        var categories = [];
        this.conditions.each(
            $.proxy(
                function (condition) {
                    if (condition.prototype.category) {
                        var name = Magelia.WebStore.Discount.Editor.Localizations[condition.prototype.category.substr(0, 1).toUpperCase() + condition.prototype.category.substring(1).toLowerCase() + 'Category'] || condition.prototype.category;
                        var category = categories.first(function (c) { return c.name == name });
                        if (!category) {
                            category = { name: name, code: condition.prototype.category.toLowerCase() };
                            categories.push(category);
                        }
                    }
                },
                this
            )
        );
        return categories.sort(function (c1, c2) { return c1.name < c2.name ? -1 : 1 });
    },

    getConditions: function (category) {
        return $.map(this.conditions.where(function (c) { return c.prototype.category && c.prototype.category.toLowerCase() == category }).sort($.proxy(function (c1, c2) { return this.getLocalizedName(c1) < this.getLocalizedName(c2) ? -1 : 1; }, this)), $.proxy(function (c) { return { identifier: c.prototype.identifier, name: this.getLocalizedName(c) }; }, this));
    },

    run: function () {
        if (this.templatesLoaded) {
            this.refresh(true);
        }
        else {
            this.loadTemplates();
        }
    },

    setFieldsVisibility: function () {
        if (!this.canEdit) {
            $('select,input', this.container).attr({ disabled: 'disabled' });
            $('a', this.container).filter(function () { return !$(this).parent().is('th'); }).removeAttr('onclick').click(function () { return false; });
        }
    },

    refresh: function (render) {
        if (render) {
            this.saveUIState();
            this.render();
            this.restoreUIState();
        }
        this.save();
    },

    restoreUIState: function () {
        var currentElement = this.container;
        this.focusPath.each(function (index) { currentElement = currentElement.children().eq(index); });
        currentElement.focus();
        if (currentElement.is('input[type=text],textarea') && this.caret) {
            currentElement.caret(this.caret.start, this.caret.end);
        }
    },

    saveUIState: function () {
        var currentElement = $(':focus', this.container);
        this.focusPath.clear();
        if (currentElement.length > 0) {
            this.caret = currentElement.is('input[type=text],textarea') ? currentElement.caret() : null;
            while (!currentElement.is(this.container)) {
                this.focusPath.push(currentElement.index());
                currentElement = currentElement.parent();
            }
        }
        this.focusPath.reverse();
    },

    render: function () {
        $.tmpl(this.editorTemplateName, this).appendTo(this.container.empty());
        this.setFieldsVisibility();
    },

    save: function () {
        var serialized = JSON.stringify(
            {
                PreCondition: this.getModel(this.discount.PreCondition),
                Actions: $.map(this.discount.Actions, $.proxy(function (action) { return $.extend(this.getModel(action), { PostCondition: this.getModel(action.model.PostCondition) }); }, this))
            }
        );
        this.hiddenField.val(serialized);
    },

    getModel: function (element) {
        var model = null;
        if (element && element.model) {
            if (element.identifier == 'binary') {
                model = $.extend({ identifier: element.identifier }, element.model, { firstCondition: this.getModel(element.model.firstCondition), secondCondition: this.getModel(element.model.secondCondition) })
            }
            else {
                model = $.extend({ identifier: element.identifier }, element.model);
            }
        }
        return model;
    },

    updatePreCondition: function (path, identifier) {
        var condition = this.createCondition(identifier);
        if (path) {
            this.addSubCondition(this.discount.PreCondition, path, condition);
        }
        else {
            this.discount.PreCondition = condition;
        }
        this.refresh(true);
    },

    updatePostCondition: function (path, identifier, index) {
        var action = this.discount.Actions.elementAt(index);
        var condition = this.createCondition(identifier);
        if (path) {
            this.addSubCondition(action.model.PostCondition, path, condition);
        }
        else {
            action.model.PostCondition = condition;
        }
        this.refresh(true);
    },

    addSubCondition: function (root, path, newCondition) {
        var accessor = this.getNextPathAccessor(root, path);
        accessor.parent.model[accessor.nextPath] = newCondition;
    },

    getNextPathAccessor: function (root, path) {
        var hierarchy = path.split('/');
        var currentCondition = root;
        for (var i = 0; i < hierarchy.length - 1; i++) {
            currentCondition = currentCondition.model[hierarchy[i]];
        }
        return { parent: currentCondition, nextPath: hierarchy.last() };
    },

    addCondition: function (path, index) {
        var binaryCondition = this.createCondition('binary');
        if (path) {
            var accessor = this.getNextPathAccessor(typeof index != 'undefined' ? this.discount.Actions.elementAt(index).model.PostCondition : this.discount.PreCondition, path);
            binaryCondition.model.firstCondition = accessor.parent.model[accessor.nextPath];
            accessor.parent.model[accessor.nextPath] = binaryCondition;
        }
        else if (typeof index == 'undefined') {
            binaryCondition.model.firstCondition = this.discount.PreCondition;
            this.discount.PreCondition = binaryCondition;
        }
        else {
            var action = this.discount.Actions.elementAt(index);
            binaryCondition.model.firstCondition = action.model.PostCondition;
            action.model.PostCondition = binaryCondition;
        }
        this.refresh(true);
    },

    removeCondition: function (path, index) {
        if (typeof index == 'undefined') {
            var accessor = this.getNextPathAccessor(this.discount.PreCondition, path);
            if (path && path.split('/').length > 1) {
                var previousAccessor = this.getNextPathAccessor(this.discount.PreCondition, path.substring(0, path.lastIndexOf('/')));
                if (accessor.nextPath == 'firstCondition') {
                    previousAccessor.parent.model[previousAccessor.nextPath] = accessor.parent.model['secondCondition'];
                }
                else {
                    previousAccessor.parent.model[previousAccessor.nextPath] = accessor.parent.model['firstCondition'];
                }
            }
            else {
                if (accessor.nextPath == 'firstCondition') {
                    this.discount.PreCondition = accessor.parent.model['secondCondition'];
                }
                else {
                    this.discount.PreCondition = accessor.parent.model['firstCondition'];
                }
            }
        }
        else {
            var action = this.discount.Actions.elementAt(index);
            var accessor = this.getNextPathAccessor(action.model.PostCondition, path);
            if (path && path.split('/').length > 1) {
                var previousAccessor = this.getNextPathAccessor(action.model.PostCondition, path.substring(0, path.lastIndexOf('/')));
                if (accessor.nextPath == 'firstCondition') {
                    previousAccessor.parent.model[previousAccessor.nextPath] = accessor.parent.model['secondCondition'];
                }
                else {
                    previousAccessor.parent.model[previousAccessor.nextPath] = accessor.parent.model['firstCondition'];
                }
            }
            else {
                if (accessor.nextPath == 'firstCondition') {
                    action.model.PostCondition = accessor.parent.model['secondCondition'];
                }
                else {
                    action.model.PostCondition = accessor.parent.model['firstCondition'];
                }
            }
        }
        this.refresh(true);
    },

    updateAction: function (identifier, index) {
        if (index == this.discount.Actions.length) {
            this.discount.Actions.push(this.createAction(identifier));
        }
        else if (identifier) {
            var newAction = this.createAction(identifier);
            var previousActions = this.discount.Actions.elementAt(index);
            newAction.model.PostCondition = previousActions.model.PostCondition;
            this.discount.Actions[index] = newAction;
        }
        else if (confirm(Magelia.WebStore.Discount.Editor.Localizations.RemoveActionConfirmation)) {
            this.discount.Actions.removeAt(index);
        }
        this.refresh(true);
    },

    showPostCondition: function (show, index) {
        var action = this.discount.Actions[index];
        action.showPostCondition = show;
        if (!show) { action.model.PostCondition = null; }
        this.refresh(true);
    },

    createCondition: function (param) {
        var condition = this.createElement(this.conditions, param);
        if (condition && condition.identifier == 'binary') {
            condition.model.firstCondition = this.createCondition(condition.model.firstCondition);
            condition.model.secondCondition = this.createCondition(condition.model.secondCondition);
        }
        return condition;
    },

    createAction: function (param) {
        return this.createElement(this.actions, param);
    },

    createElement: function (availables, param) {
        var isObject = $.isPlainObject(param);
        var identifier = isObject && param.identifier ? param.identifier : typeof param == 'string' ? param : '';
        var condition = availables.first(function (c) { return c.prototype.identifier == identifier; });
        return condition ? new condition(this, isObject ? param : null) : null;
    },

    loadTemplates: function () {
        if (this.templatesPath) {
            $.ajax(
                {
                    cache: false,
                    context: this,
                    method: 'get',
                    dataType: 'xml',
                    url: this.templatesPath,
                    success: function (templates) {
                        this.templatesLoaded = true;
                        this.registerTemplates(templates);
                        this.run();
                    }
                }
            );
        }
    },

    registerTemplates: function (templates) {
        var editor = this;
        $('templates', templates).children().each(
            function () {
                var template = $(this);
                var styles = template.children('styles').text();
                if (styles) {
                    $('<style>' + styles + '</style>').attr({ type: 'text/css' }).appendTo('head');
                }
                $.template(template.attr('id'), template.children('content').text());
            }
        );
    }
};