Type.registerNamespace('Magelia.WebStore.File');

Magelia.WebStore.File.Manager = function (config) {
    if ($.isPlainObject(config)) {
        this.config = config;
        this.initialize();
        this.saveState();
    }
};

Magelia.WebStore.File.Manager.prototype = {
    config: null,
    container: null,
    statePersistor: null,
    selectionPersistor: null,
    serviceProxy: null,
    layout: null,
    containerExplorer: null,
    optionsMenu: null,
    contentList: null,
    selection: null,
    metadataEditor: null,
    intialized: null,
    savingToken: null,
    uploadPopin: null,
    upload: null,
    selectionButton: null,
    imageLoader: null,
    uploadPopinCssClass: 'upload',
    containerCssClass: 'fileManager',

    initialize: function () {
        this.getElements();
        this.createComponents();
        this.dispatchComponents();
        this.container.addClass(this.containerCssClass);
        this.uploadStack = [];
        this.isUploading = false;
        this.start();
        this.intialized = true;
    },

    start: function () {
        var state = this.getState();
        if (state) {
            this.restoreState(state);
        }
        else {
            this.containerExplorer.rootContainerItem.expand();
            this.containerExplorer.rootContainerItem.toggleSelection();
        }
    },

    getElements: function () {
        this.container = $(this.config.container);
        this.statePersistor = $(this.config.statePersistor);
        this.selectionPersistor = $(this.config.selectionPersistor);
        this.selectionButton = $(this.config.selectionButton);
    },

    restoreState: function (state) {
        var rawFileIds = this.selectionPersistor.val();
        this.containerExplorer.restoreState(state);
        this.contentList.restoreState(state);
        this.selection.restoreState(state, rawFileIds ? $.parseJSON(rawFileIds) : []);
        this.metadataEditor.restoreState(state);
    },

    getState: function () {
        var rawState = this.statePersistor.val();
        if (rawState) {
            return $.parseJSON(rawState);
        }
    },

    saveState: function (imediate) {
        if (this.intialized) {
            if (this.savingToken) {
                clearTimeout(this.savingToken);
            }
            var save = $.proxy(
                function () {
                    this.statePersistor.val(JSON.stringify($.extend({}, this.containerExplorer.getState(), this.contentList.getState(), this.selection.getState(), this.metadataEditor.getState())));
                    this.selectionPersistor.val(JSON.stringify($.map(this.selection.childs, function (child) { return child.config.FileId })));
                },
                this
            );
            if (imediate) {
                save();
            }
            else {
                this.savingToken = setTimeout(save, 100);
            }
        }
    },

    pathChanged: function () {
        this.optionsMenu.updatePath(this.getCurrentPath());
    },

    dispatchComponents: function () {
        this.layout.appendToLeftPanel(this.containerExplorer);
        this.layout.appendToMiddlePanel(this.optionsMenu, this.contentList);
        this.layout.appendToRightPanel(this.metadataEditor, this.selection);
        this.uploadPopin.appendContent(this.upload.container);
    },

    downloadSelectedItems: function () {
        this.contentList.downloadSelectedItems();
    },

    createComponents: function () {
        var rawFileIds = this.selectionPersistor.val();
        this.serviceProxy = new Magelia.WebStore.File.ServiceProxy(this);
        this.layout = new Magelia.WebStore.File.Layout(this);
        this.containerExplorer = new Magelia.WebStore.File.ContainerExplorer(this);
        this.optionsMenu = new Magelia.WebStore.File.OptionsMenu(this);
        this.contentList = new Magelia.WebStore.File.ContentList(this);
        this.selection = new Magelia.WebStore.File.Selection(this);
        this.metadataEditor = new Magelia.WebStore.File.MetadataEditor(this);
        this.upload = new Magelia.WebStore.File.Upload(this);
        this.uploadPopin = new Magelia.WebStore.File.Popin({ cssClass: this.uploadPopinCssClass });
        this.imageLoader = Magelia.WebStore.File.ImageLoader.StaticInstance;
    },

    showError: function (message) {
        alert(message || Magelia.WebStore.File.Manager.Localizations.DefaultErrorMessage);
    },

    combine: function (basePath, endPath) {
        return basePath + (basePath ? this.config.pathSeparator : '') + endPath;
    },

    listContent: function (path) {
        this.contentList.loadContent(path);
    },

    clearContent: function () {
        this.contentList.currentPath = null;
        this.pathChanged();
        this.contentList.clearContent();
        this.metadataEditor.clearEdition();
    },

    updateSelection: function (path) {
        this.containerExplorer.updateSelection(path);
    },

    getCurrentPath: function () {
        return this.contentList.currentPath;
    },

    refreshContentList: function () {
        var currentPath = this.getCurrentPath();
        this.contentSelectionStop();
        if (currentPath != null) {
            this.listContent(currentPath);
        }
    },

    triggerAddContainer: function () {
        this.contentList.startContainerAdding();
    },

    select: function (names) {
        var self = this;
        this.selection.appendChildsFromPaths($(names).map(function () { return self.combine(self.getCurrentPath(), this); }).toArray());
    },

    loadParent: function () {
        var currentPath = this.getCurrentPath();
        if (currentPath) {
            this.listContent(currentPath.indexOf(this.config.pathSeparator) == -1 ? '' : currentPath.substring(0, currentPath.lastIndexOf(this.config.pathSeparator)));
            this.metadataEditor.clearEdition();
        }
    },

    contentDragStart: function (draggedContainerPaths, draggedElementPaths) {
        if (this.config.canEdit) {
            this.containerExplorer.allowDropForContentDrag(draggedContainerPaths, draggedElementPaths);
        }
        this.selection.removeDropping();
        if (draggedContainerPaths.length == 0) {
            this.selection.implementDropping(draggedElementPaths);
        }
    },

    contentDragStop: function () {
        this.containerExplorer.removeDropping();
        this.selection.removeDropping();
    },

    contentDropped: function (containerItem, draggedContainerPaths, draggedElementPaths) {
        var self = this;
        var fullPath = containerItem.fullPath();
        if (draggedContainerPaths.length > 0) {
            this.serviceProxy.moveContainers(
                $.map(draggedContainerPaths, function (draggedContainerPath) { return { OldPath: draggedContainerPath, NewPath: self.combine(fullPath, draggedContainerPath.indexOf(self.config.pathSeparator) == -1 ? draggedContainerPath : draggedContainerPath.substring(draggedContainerPath.lastIndexOf(self.config.pathSeparator) + 1, draggedContainerPath.length)) }; }),
                function (movedContainerPath) {
                    var movedContainerItem = self.containerExplorer.findContainerByPath(movedContainerPath);
                    if (containerItem.expanded) {
                        var name = movedContainerPath.indexOf(self.config.pathSeparator) == -1 ? movedContainerPath : movedContainerPath.substr(movedContainerPath.lastIndexOf(self.config.pathSeparator) + 1);
                        var newPath = self.combine(fullPath, name);
                        if (movedContainerItem) {
                            movedContainerItem.parent.childs.splice(movedContainerItem.parent.getIndexOfChild(movedContainerItem), 1);
                            movedContainerItem.parent.changed();
                        }
                        else {
                            movedContainerItem = new Magelia.WebStore.File.ContainerItem(self.containerExplorer, { path: fullPath, name: name, parent: containerItem });
                        }
                        containerItem.appendChild(movedContainerItem);
                        movedContainerItem.parent = containerItem;
                        movedContainerItem.path = fullPath;
                        movedContainerItem.updateChildPath(movedContainerPath, newPath);
                    }
                    else if (movedContainerItem) {
                        movedContainerItem.parent.removeChild(movedContainerItem);
                    }
                    self.contentList.removeContentItem(movedContainerPath);
                }
            );
        }
        if (draggedElementPaths.length > 0) {
            this.serviceProxy.moveElements(
                $.map(draggedElementPaths, function (draggedElementPath) { return { OldPath: draggedElementPath, NewPath: self.combine(fullPath, draggedElementPath.indexOf(self.config.pathSeparator) == -1 ? draggedElementPath : draggedElementPath.substring(draggedElementPath.lastIndexOf(self.config.pathSeparator) + 1, draggedElementPath.length)) }; }),
                function (movedElementPath) {
                    self.contentList.removeContentItem(movedElementPath);
                }
            );
        }
    },

    renameContainer: function (path, newName) {
        this.serviceProxy.renameContainer(
            path,
            newName,
            $.proxy(
                function () {
                    var containerItem = this.containerExplorer.findContainerByPath(path);
                    this.refreshContentList();
                    if (containerItem) {
                        containerItem.updateName(newName);
                    }
                },
                this
            )
        );
    },

    updateCurrentPath: function (path) {
        this.contentList.currentPath = path;
        this.pathChanged();
        this.saveState();
    },

    deleteContainers: function (containersToDelete) {
        this.serviceProxy.deleteContainers(
            containersToDelete,
            $.proxy(
                function (deleteContainer) {
                    this.contentList.removeContentItem(deleteContainer);
                },
                this
            ),
            $.proxy(this.containersDeleted, this)
        );
    },

    containersDeleted: function () {
        this.selection.refresh();
    },

    pushContainer: function (path) {
        this.serviceProxy.pushContainer(
            path,
            $.proxy(
                function () {
                    var parentPath = path.indexOf(this.config.pathSeparator) == -1 ? '' : path.substring(0, path.lastIndexOf(this.config.pathSeparator));
                    var parentContainer = this.containerExplorer.findContainerByPath(parentPath);
                    if (parentContainer && parentContainer.expanded) {
                        parentContainer.appendChild(new Magelia.WebStore.File.ContainerItem(this.containerExplorer, { path: parentPath, name: parentPath ? path.substr(parentPath.length + 1) : path, parent: parentContainer }));
                    }
                    this.refreshContentList();
                },
                this
            )
        );
    },

    getConfigsFromPaths: function (paths) {
        var self = this;
        return $(this.contentList.childs).filter(
            function () {
                var child = this;
                return $(paths).filter(function () { return self.combine(self.contentList.currentPath, child.config.Key) == this; }).length == 1;
            }
        ).map(function () { return this.config; }).toArray();
    },

    fileRenamed: function (fileId) {
        if ($(this.selection.childs).filter(function () { return this.config.FileId == fileId; }).length == 1) {
            this.selection.refresh();
        }
    },

    contentSelectionStop: function (contentItems) {
        if ($.isArray(contentItems) && contentItems.length == 1 && contentItems[0].config.Type != 'container') {
            var contentItem = contentItems[0];
            this.metadataEditor.startEditing(contentItem);
        }
        else {
            this.metadataEditor.clearEdition();
        }
    },

    contentItemRemoved: function (contentItem) {
        var selectionItems = $(this.selection.childs).filter(function () { return this.config.FileId == contentItem.config.fileId; });
        if (selectionItems.length == 1) {
            this.selection.removeChild(selectionItems[0]);
        }
        if (contentItem == this.metadataEditor.contentItem) {
            this.metadataEditor.clearEdition();
        }
        this.containerExplorer.removeFromSelected(contentItem.config.Key);
    },

    startUpload: function () {
        if (this.getCurrentPath() == null) {
            this.showError(Magelia.WebStore.File.Manager.Localizations.UploadErrorMessage);
        }
        else {
            this.upload.reset();
            this.uploadPopin.open();
        }
    },

    fileUpload: function () {
        this.uploadPopin.center();
    },

    fileUploaded: function () {
        this.uploadPopin.center();
        this.refreshContentList();
    },

    startDirectUpload: function (files) {
        this.upload.startDirectUpload(files);
    },

    directUploadStarting: function () {
        this.uploadPopin.close();
    },

    directUploadStarted: function () {
        this.uploadPopin.open();
        this.uploadPopin.center();
    },

    getContentItemByName: function (name) {
        return $(this.contentList.childs).filter(function () { return this.config.Key == name; })[0];
    },

    download: function (folders, files) {
        var anyFiles = $.isArray(files) && files.length > 0;
        var anyFolders = $.isArray(folders) && folders.length > 0;

        if (this.config.downloadServicePath && (anyFiles || anyFolders)) {
            var form = $('<form/>').attr({ action: this.config.downloadServicePath, method: 'post' }).appendTo(document.body).hide();

            if (anyFolders) {
                for (var i = 0; i < folders.length; i++) {
                    $('<input/>').attr({ name: 'folder_' + i, value: folders[i], type: 'hidden' }).appendTo(form);
                }
            }

            if (anyFiles) {
                for (var i = 0; i < files.length; i++) {
                    $('<input/>').attr({ name: 'file_' + i, value: files[i], type: 'hidden' }).appendTo(form);
                }
            }

            form.submit();
        }
    }
};


Magelia.WebStore.File.ServiceProxy = function (manager) {
    if (manager instanceof Magelia.WebStore.File.Manager) {
        this.manager = manager;
        this.initialize();
    }
};

Magelia.WebStore.File.ServiceProxy.prototype = {
    manager: null,
    executors: null,
    displayError: null,

    initialize: function () {
        var self = this;
        this.executors = [];
        this.displayError = true;
        Sys.Net.WebRequestManager.add_invokingRequest(function (sender, args) { self.executors.push(args.get_webRequest().get_executor()); });
    },

    abortAll: function () {
        this.displayError = false;
        for (var i = 0; i < this.executors.length; i++) {
            this.executors[i].abort();
        }
        this.displayError = true;
    },

    list: function (path, fileObjectType, callback) {
        Magelia.WebStore.Admin.Content.Files.Services.List(
            path,
            fileObjectType,
            $.proxy(function (fileObjects) { this.callCallback(callback, fileObjects); }, this),
            $.proxy(this.serviceError, this)
        );
    },

    moveContainers: function (containerMovements, callback) {
        Magelia.WebStore.Admin.Content.Files.Services.MoveContainers(
            containerMovements,
             $.proxy(
                function (movementsStatus) {
                    for (var i = 0; i < movementsStatus.length; i++) {
                        var movementStatus = movementsStatus[i];
                        switch (movementStatus.Status) {
                            case 0:
                                this.callCallback(callback, movementStatus.Path);
                                break;
                            case 2:
                                this.manager.showError(Magelia.WebStore.File.ServiceProxy.Localizations.InvalidParameterErrorMessage);
                                break;
                            case 3:
                                this.manager.showError(Magelia.WebStore.File.ServiceProxy.Localizations.InvalidPathErrorMessage);
                                break;
                            case 4:
                                this.manager.showError(Magelia.WebStore.File.ServiceProxy.Localizations.ContainerAlreadyExistsErrorMessage);
                                break;
                            case 5:
                                this.manager.showError(Magelia.WebStore.File.ServiceProxy.Localizations.PathTooLongErrorMessage);
                                break;
                            case 6:
                                this.manager.showError(Magelia.WebStore.File.ServiceProxy.Localizations.UnauthorizedErrorMessage);
                                break;
                            default:
                                this.manager.showError(Magelia.WebStore.File.ServiceProxy.Localizations.UnexpectedErrorMessage);
                                break;
                        }
                    }
                },
                this
            ),
            $.proxy(this.serviceError, this)
        );
    },

    deleteElements: function (elementsToDelete, callback) {
        Magelia.WebStore.Admin.Content.Files.Services.DeleteElements(
            elementsToDelete,
             $.proxy(
                function (deleteStatus) {
                    for (var i = 0; i < deleteStatus.length; i++) {
                        var elementDeleteStatus = deleteStatus[i];
                        switch (elementDeleteStatus.Status) {
                            case 0:
                                this.callCallback(callback, elementDeleteStatus.Path);
                                break;
                            case 2:
                                this.manager.showError(Magelia.WebStore.File.ServiceProxy.Localizations.InvalidParameterErrorMessage);
                                break;
                            case 3:
                                this.manager.showError(Magelia.WebStore.File.ServiceProxy.Localizations.InvalidPathErrorMessage);
                                break;
                            case 4:
                                this.manager.showError(Magelia.WebStore.File.ServiceProxy.Localizations.PathTooLongErrorMessage);
                                break;
                            case 5:
                                this.manager.showError(Magelia.WebStore.File.ServiceProxy.Localizations.UndeletableErrorMessage);
                                break;
                            case 6:
                                this.manager.showError(Magelia.WebStore.File.ServiceProxy.Localizations.UnauthorizedErrorMessage);
                                break;
                            default:
                                this.manager.showError(Magelia.WebStore.File.ServiceProxy.Localizations.UnexpectedErrorMessage);
                                break;
                        }
                    }
                },
                this
            ),
            $.proxy(this.serviceError, this)
        );
    },

    moveElements: function (elementMovements, callback) {
        Magelia.WebStore.Admin.Content.Files.Services.MoveElements(
            elementMovements,
             $.proxy(
                function (movementsStatus) {
                    for (var i = 0; i < movementsStatus.length; i++) {
                        var movementStatus = movementsStatus[i];
                        switch (movementStatus.Status) {
                            case 0:
                                this.callCallback(callback, movementStatus.Path);
                                break;
                            case 2:
                                this.manager.showError(Magelia.WebStore.File.ServiceProxy.Localizations.InvalidParameterErrorMessage);
                                break;
                            case 3:
                                this.manager.showError(Magelia.WebStore.File.ServiceProxy.Localizations.ElementAlreayExistsErrorMessage);
                                break;
                            case 4:
                                this.manager.showError(Magelia.WebStore.File.ServiceProxy.Localizations.PathTooLongErrorMessage);
                                break;
                            case 5:
                                this.manager.showError(Magelia.WebStore.File.ServiceProxy.Localizations.InvalidPathErrorMessage);
                                break;
                            case 6:
                                this.manager.showError(Magelia.WebStore.File.ServiceProxy.Localizations.ElementNotFoundErrorMessage);
                                break;
                            case 7:
                                this.manager.showError(Magelia.WebStore.File.ServiceProxy.Localizations.UnauthorizedErrorMessage);
                                break;
                            default:
                                this.manager.showError(Magelia.WebStore.File.ServiceProxy.Localizations.UnexpectedErrorMessage);
                                break;
                        }
                    }
                },
                this
            ),
            $.proxy(this.serviceError, this)
        );
    },

    deleteContainers: function (containerPaths, callback, finalCallBack) {
        Magelia.WebStore.Admin.Content.Files.Services.DeleteContainers(
           containerPaths,
           $.proxy(
                function (deleteStatus) {
                    for (var i = 0; i < deleteStatus.length; i++) {
                        var deleteContainerStatus = deleteStatus[i];
                        switch (deleteContainerStatus.Status) {
                            case 0:
                                this.callCallback(callback, deleteContainerStatus.Path);
                                break;
                            case 2:
                                this.manager.showError(Magelia.WebStore.File.ServiceProxy.Localizations.InvalidParameterErrorMessage);
                                break;
                            case 3:
                                this.manager.showError(Magelia.WebStore.File.ServiceProxy.Localizations.ContainerNotFoundErrorMessage);
                                break;
                            case 4:
                                this.manager.showError(Magelia.WebStore.File.ServiceProxy.Localizations.PathTooLongErrorMessage);
                                break;
                            case 5:
                                this.manager.showError(Magelia.WebStore.File.ServiceProxy.Localizations.UnauthorizedErrorMessage);
                                break;
                            case 6:
                                this.manager.showError(Magelia.WebStore.File.ServiceProxy.Localizations.ReadOnlyPathErrorMessage);
                                break;
                            default:
                                this.manager.showError(Magelia.WebStore.File.ServiceProxy.Localizations.UnexpectedErrorMessage);
                                break;
                        }
                        this.callCallback(finalCallBack);
                    }
                },
                this
            ),
            $.proxy(this.serviceError, this)
        );
    },

    renameContainer: function (path, newName, callback) {
        Magelia.WebStore.Admin.Content.Files.Services.RenameContainer(
            path,
            newName,
            $.proxy(
                function (status) {
                    switch (status) {
                        case 0:
                            this.callCallback(callback);
                            break;
                        case 2:
                            this.manager.showError(Magelia.WebStore.File.ServiceProxy.Localizations.InvalidParameterErrorMessage);
                            break;
                        case 3:
                            this.manager.showError(Magelia.WebStore.File.ServiceProxy.Localizations.InvalidPathErrorMessage);
                            break;
                        case 4:
                            this.manager.showError(Magelia.WebStore.File.ServiceProxy.Localizations.ContainerAlreadyExistsErrorMessage);
                            break;
                        case 5:
                            this.manager.showError(Magelia.WebStore.File.ServiceProxy.Localizations.PathTooLongErrorMessage);
                            break;
                        case 6:
                            this.manager.showError(Magelia.WebStore.File.ServiceProxy.Localizations.UnauthorizedErrorMessage);
                            break;
                        default:
                            this.manager.showError(Magelia.WebStore.File.ServiceProxy.Localizations.UnexpectedErrorMessage);
                            break;
                    }
                },
                this
            ),
            $.proxy(this.serviceError, this)
        );
    },

    renameElement: function (path, newName, callback) {
        Magelia.WebStore.Admin.Content.Files.Services.RenameElement(
            path,
            newName,
            $.proxy(
                function (status) {
                    switch (status) {
                        case 0:
                            this.callCallback(callback);
                            break;
                        case 2:
                            this.manager.showError(Magelia.WebStore.File.ServiceProxy.Localizations.InvalidParameterErrorMessage);
                            break;
                        case 3:
                            this.manager.showError(Magelia.WebStore.File.ServiceProxy.Localizations.ElementAlreayExistsErrorMessage);
                            break;
                        case 4:
                            this.manager.showError(Magelia.WebStore.File.ServiceProxy.Localizations.PathTooLongErrorMessage);
                            break;
                        case 5:
                            this.manager.showError(Magelia.WebStore.File.ServiceProxy.Localizations.InvalidPathErrorMessage);
                            break;
                        case 6:
                            this.manager.showError(Magelia.WebStore.File.ServiceProxy.Localizations.ElementNotFoundErrorMessage);
                            break;
                        default:
                            this.manager.showError(Magelia.WebStore.File.ServiceProxy.Localizations.UnexpectedErrorMessage);
                            break;
                    }
                },
                this
            ),
            $.proxy(this.serviceError, this)
        );
    },

    pushContainer: function (path, callback) {
        Magelia.WebStore.Admin.Content.Files.Services.PushContainer(
            path,
            $.proxy(
                function (status) {
                    switch (status) {
                        case 0:
                            this.callCallback(callback);
                            break;
                        case 2:
                            this.manager.showError(Magelia.WebStore.File.ServiceProxy.Localizations.InvalidParameterErrorMessage);
                            break;
                        case 3:
                            this.manager.showError(Magelia.WebStore.File.ServiceProxy.Localizations.InvalidPathErrorMessage);
                            break;
                        case 4:
                            this.manager.showError(Magelia.WebStore.File.ServiceProxy.Localizations.ContainerAlreadyExistsErrorMessage);
                            break;
                        case 5:
                            this.manager.showError(Magelia.WebStore.File.ServiceProxy.Localizations.PathTooLongErrorMessage);
                            break;
                        case 6:
                            this.manager.showError(Magelia.WebStore.File.ServiceProxy.Localizations.UnauthorizedErrorMessage);
                            break;
                        case 6:
                            this.manager.showError(Magelia.WebStore.File.ServiceProxy.Localizations.ReadOnlyPathErrorMessage);
                            break;
                        default:
                            this.manager.showError(Magelia.WebStore.File.ServiceProxy.Localizations.UnexpectedErrorMessage);
                            break;
                    }
                },
                this
            ),
            $.proxy(this.serviceError, this)
        );
    },

    getFilesByIds: function (fileIds, callback) {
        Magelia.WebStore.Admin.Content.Files.Services.GetFilesByIds(
            fileIds,
             $.proxy(
                 function (files) {
                     this.callCallback(callback, files);
                 },
                 this
             ),
             $.proxy(this.serviceError, this)
        );
    },

    updateFileProperties: function (fileId, filePath, properties, callback) {
        Magelia.WebStore.Admin.Content.Files.Services.UpdateFileProperties(
            fileId,
            filePath,
            properties,
            $.proxy(
                function (success) {
                    this.callCallback(callback, success);
                },
                this
            ),
            $.proxy(this.serviceError, this)
        );
    },

    getFileProperties: function (fileId, callback) {
        Magelia.WebStore.Admin.Content.Files.Services.GetFileProperties(
            fileId,
            $.proxy(
                function (properties) {
                    this.callCallback(callback, properties);
                },
                this
            ),
            $.proxy(this.serviceError, this)
        );
    },

    getFileLocalization: function (fileId, cultureId, callback) {
        Magelia.WebStore.Admin.Content.Files.Services.GetFileLocalization(
            fileId,
            cultureId,
            $.proxy(
                function (localization) {
                    this.callCallback(callback, localization);
                },
                this
            ),
            $.proxy(this.serviceError, this)
        );
    },

    updateFileLocalization: function (fileId, filePath, localization, callback) {
        Magelia.WebStore.Admin.Content.Files.Services.UpdateFileLocalization(
            fileId,
            filePath,
            localization,
            $.proxy(
                function (success) {
                    this.callCallback(callback, success);
                },
                this
            ),
            $.proxy(this.serviceError, this)
        );
    },

    deleteFileLocalization: function (fileId, cultureId, callback) {
        Magelia.WebStore.Admin.Content.Files.Services.DeleteFileLocalization(
            fileId,
            cultureId,
            $.proxy(
                function (success) {
                    this.callCallback(callback, success);
                },
                this
            ),
            $.proxy(this.serviceError, this)
        );
    },

    callCallback: function (callback, args) {
        if ($.isFunction(callback)) {
            callback(args);
        }
    },

    serviceError: function (error) {
        if (this.displayError && error.get_statusCode() != 0) {
            this.manager.showError(Magelia.WebStore.File.ServiceProxy.Localizations.ServiceDefaultErrorMessage);
        }
    }
};


Magelia.WebStore.File.Layout = function (manager) {
    if (manager instanceof Magelia.WebStore.File.Manager) {
        this.manager = manager;
        this.initialize();
    }
},

Magelia.WebStore.File.Layout.prototype = {
    manager: null,
    leftPanel: null,
    middlePanel: null,
    rightPanel: null,
    leftPanelCssClass: 'left',
    middlePanelCssClass: 'middle',
    rightPanelCssClass: 'right',

    initialize: function () {
        this.clearContainer();
        this.createLayout();
        this.appendLayout();
    },

    clearContainer: function () {
        this.manager.container.html('');
    },

    createLayout: function () {
        this.leftPanel = $('<div/>').addClass(this.leftPanelCssClass);
        this.middlePanel = $('<div/>').addClass(this.middlePanelCssClass);
        this.rightPanel = $('<div/>').addClass(this.rightPanelCssClass);
    },

    appendLayout: function () {
        this.manager.container.append(this.leftPanel, this.middlePanel, this.rightPanel);
    },

    appendToLeftPanel: function () {
        this.appendToPanel(this.leftPanel, arguments);
    },

    appendToMiddlePanel: function () {
        this.appendToPanel(this.middlePanel, arguments);
    },

    appendToRightPanel: function () {
        this.appendToPanel(this.rightPanel, arguments);
    },

    appendToPanel: function (panel, components) {
        for (var i = 0; i < components.length; i++) {
            panel.append(components[i].container);
        }
    }
};


Magelia.WebStore.File.ContainerExplorer = function (manager) {
    if (manager instanceof Magelia.WebStore.File.Manager) {
        this.manager = manager;
        this.initialize();
    }
};

Magelia.WebStore.File.ContainerExplorer.prototype = {
    manager: null,
    container: null,
    rootList: null,
    subContainer: null,
    rootContainerItem: null,
    containerExplorerCssClass: 'containers',

    initialize: function () {
        this.container = $('<div/>').addClass(this.containerExplorerCssClass);
        this.subContainer = $('<div/>').appendTo(this.container);
        this.rootList = $('<ul/>').appendTo(this.subContainer);
        this.createRootContainerItem({ name: Magelia.WebStore.File.ContainerExplorer.Localizations.RootContainerItemName, path: '', isRoot: true });
        $('<p/>').html(Magelia.WebStore.File.ContainerExplorer.Localizations.Title).prependTo(this.container);
    },

    createRootContainerItem: function (config) {
        this.rootContainerItem = new Magelia.WebStore.File.ContainerItem(this, config);
        this.rootContainerItem.item.appendTo(this.rootList);
    },

    restoreState: function (state) {
        this.rootContainerItem.item.remove();
        delete this.rootContainerItem;
        this.createRootContainerItem(state.rootContainer);
    },

    getState: function () {
        return { rootContainer: this.rootContainerItem.getState() };
    },

    updateSelection: function (path, containerItem) {
        containerItem = containerItem || this.rootContainerItem;
        var pathMatchs = containerItem.fullPath() == path;
        if (pathMatchs && !containerItem.selected) {
            containerItem.setSelected();
        }
        else if (!pathMatchs && containerItem.selected) {
            containerItem.setUnselected();
        }
        for (var i = 0; i < containerItem.childs.length; i++) {
            this.updateSelection(path, containerItem.childs[i]);
        }
    },

    clearSelection: function (triggerContainerItem) {
        this.unselect(this.rootContainerItem, triggerContainerItem);
    },

    unselect: function (element, triggerContainerItem) {
        if ($.isArray(element)) {
            for (var i = 0; i < element.length; i++) {
                this.unselect(element[i], triggerContainerItem);
            }
        }
        else if (element instanceof Magelia.WebStore.File.ContainerItem) {
            if (element.selected && element != triggerContainerItem) {
                element.toggleSelection();
            }
            else {
                this.unselect(element.childs, triggerContainerItem);
            }
        }
    },

    triggerListing: function (containerItem) {
        this.manager.listContent(containerItem.fullPath());
    },

    clearList: function () {
        this.manager.clearContent();
    },

    setDroppableFrom: function (draggedContainerItem, containerItem) {
        containerItem = containerItem || this.rootContainerItem;
        if (containerItem.path.indexOf(draggedContainerItem.fullPath()) == -1 && draggedContainerItem.parent != containerItem) {
            containerItem.implementDropping(draggedContainerItem);
        }
        $(containerItem.childs).each($.proxy(function (index, childContainerItem) { this.setDroppableFrom(draggedContainerItem, childContainerItem); }, this));
    },

    removeDropping: function (containerItem) {
        containerItem = containerItem || this.rootContainerItem;
        containerItem.removeDropping();
        $(containerItem.childs).each($.proxy(function (index, childContainerItem) { this.removeDropping(childContainerItem); }, this));
    },

    removeFromSelected: function (name) {
        this.rootContainerItem.removeFromSelected(name);
    },

    allowDropForContentDrag: function (draggedContainerPaths, draggedElementPaths, containerItem) {
        containerItem = containerItem || this.rootContainerItem;
        var self = this;
        var fullPath = containerItem.fullPath();
        if (
            $(draggedContainerPaths).filter(
                function () {
                    var parentPath = this.indexOf(self.manager.config.pathSeparator) == -1 ? '' : this.substring(0, this.lastIndexOf(self.manager.config.pathSeparator));
                    return fullPath == this || fullPath == parentPath || fullPath.indexOf(this + self.manager.config.pathSeparator) != -1;
        }
            ).length == 0 &&
            $(draggedElementPaths).filter(function () { return (this.indexOf(self.manager.config.pathSeparator) == -1 ? '' : this.substring(0, this.lastIndexOf(self.manager.config.pathSeparator))) == fullPath; }).length == 0
        ) {
            containerItem.setDroppableForContent(draggedContainerPaths, draggedElementPaths);
        }
        for (var i = 0; i < containerItem.childs.length; i++) {
            this.allowDropForContentDrag(draggedContainerPaths, draggedElementPaths, containerItem.childs[i]);
        }
    },

    contentDropped: function (containerItem, draggedContainerPaths, draggedElementPaths) {
        this.manager.contentDropped(containerItem, draggedContainerPaths, draggedElementPaths);
    },

    findContainerByPath: function (path, containerItem) {
        containerItem = containerItem || this.rootContainerItem;
        if (containerItem.fullPath() == path) {
            return containerItem;
        }
        else {
            for (var i = 0; i < containerItem.childs.length; i++) {
                var childContainer = this.findContainerByPath(path, containerItem.childs[i]);
                if (childContainer) {
                    return childContainer;
                }
            }
        }
    },

    moveContainer: function (draggedContainerItem, droppedContainerItem) {
        var oldPath = draggedContainerItem.fullPath();
        var dropPath = droppedContainerItem.fullPath();
        var newPath = this.manager.combine(dropPath, draggedContainerItem.name);
        this.manager.serviceProxy.moveContainers(
            [{ OldPath: oldPath, NewPath: newPath }],
            $.proxy(
                function () {
                    var previousParent = draggedContainerItem.parent;
                    if (droppedContainerItem.expanded) {
                        draggedContainerItem.parent.childs.splice(draggedContainerItem.parent.getIndexOfChild(draggedContainerItem), 1);
                        droppedContainerItem.appendChild(draggedContainerItem);
                    }
                    else {
                        draggedContainerItem.parent.removeChild(draggedContainerItem);
                    }
                    draggedContainerItem.parent = droppedContainerItem;
                    draggedContainerItem.path = dropPath;
                    draggedContainerItem.updateChildPath(oldPath, newPath);
                    previousParent.changed();
                    if (droppedContainerItem.selected) {
                        this.triggerListing(droppedContainerItem);
                    }
                    else if (previousParent.selected) {
                        this.triggerListing(previousParent);
                    }
                    if (draggedContainerItem.selected) {
                        this.manager.updateCurrentPath(newPath);
                    }
                },
                this
            )
        );
    },

    loadChilds: function (containerItem) {
        var path = containerItem.fullPath();
        this.manager.serviceProxy.list(
            path,
            256,
            $.proxy(
                function (containers) {
                    containerItem.appendChilds($.map(containers, function (container) { return { name: container.Key, path: path, parent: containerItem }; }));
                    this.updateSelection(this.manager.getCurrentPath());
                },
                this
            )
        )
    },

    deleteContainer: function (containerItem) {
        if (confirm(Magelia.WebStore.File.ContainerExplorer.Localizations.DeleteConfirmationMessage)) {
            this.manager.serviceProxy.deleteContainers(
                [containerItem.fullPath()],
                $.proxy(
                    function () {
                        if (containerItem.selected) {
                            containerItem.toggleSelection();
                        }
                        containerItem.parent.removeChild(containerItem);
                        if (containerItem.parent.selected) {
                            this.triggerListing(containerItem.parent);
                        }
                        this.manager.containersDeleted();
                    },
                    this
                )
            );
        }
    },

    renameContainer: function (containerItem, newName) {
        var path = containerItem.fullPath();
        this.manager.serviceProxy.renameContainer(
            path,
            newName,
            $.proxy(
                function () {
                    containerItem.updateName(newName);
                    if (containerItem.parent.selected) {
                        this.triggerListing(containerItem.parent);
                    }
                    else if (containerItem.selected) {
                        this.manager.updateCurrentPath(containerItem.fullPath());
                    }
                },
                this
            )
        );
    },

    pushContainer: function (parentContainerItem, name) {
        var parentPath = parentContainerItem.fullPath();
        var path = this.manager.combine(parentPath, name);
        this.manager.serviceProxy.pushContainer(
            path,
            $.proxy(
                function () {
                    if (parentContainerItem.expanded) {
                        parentContainerItem.appendChild(new Magelia.WebStore.File.ContainerItem(this, { name: name, path: parentPath, parent: parentContainerItem }));
                    }
                    if (parentContainerItem.selected) {
                        this.triggerListing(parentContainerItem);
                    }
                },
                this
            )
        );
    }
};


Magelia.WebStore.File.OptionsMenu = function (manager) {
    if (manager instanceof Magelia.WebStore.File.Manager) {
        this.manager = manager;
        this.initialize();
    }
};

Magelia.WebStore.File.OptionsMenu.prototype = {
    manager: null,
    container: null,
    path: null,
    optionsMenuCssClass: 'optionsMenu',
    uploadMenuItemCssClass: 'upload',
    refreshMenuItemCssClass: 'refresh',
    downloadMenuItemCssClass: 'download',
    goUpMenuItemCssClass: 'goUp',
    newContainerMenuItemCssClass: 'new',
    pathCssClass: 'path',

    initialize: function () {
        this.container = $('<ul/>').addClass(this.optionsMenuCssClass);
        this.path = $('<li/>').addClass(this.pathCssClass);
        this.appendMenuItems();
    },

    appendMenuItems: function () {
        if (this.manager.config.canCreateAndDelete) {
            this.appendMenuItem(new Magelia.WebStore.File.OptionsMenuItem(this, { label: Magelia.WebStore.File.OptionsMenu.Localizations.UploadMenuItemLabel, cssClass: this.uploadMenuItemCssClass, click: $.proxy(this.upload, this) }));
        }
        this.appendMenuItem(new Magelia.WebStore.File.OptionsMenuItem(this, { label: Magelia.WebStore.File.OptionsMenu.Localizations.DownloadMenuItemLabel, cssClass: this.downloadMenuItemCssClass, click: $.proxy(this.download, this) }));
        this.appendMenuItem(new Magelia.WebStore.File.OptionsMenuItem(this, { label: Magelia.WebStore.File.OptionsMenu.Localizations.RefreshMenuItemLabel, cssClass: this.refreshMenuItemCssClass, click: $.proxy(this.refresh, this) }));
        this.appendMenuItem(new Magelia.WebStore.File.OptionsMenuItem(this, { label: Magelia.WebStore.File.OptionsMenu.Localizations.GoUpMenuItemLabel, cssClass: this.goUpMenuItemCssClass, click: $.proxy(this.goUp, this) }));
        if (this.manager.config.canCreateAndDelete) {
            this.appendMenuItem(new Magelia.WebStore.File.OptionsMenuItem(this, { label: Magelia.WebStore.File.OptionsMenu.Localizations.NewContainerMenuItemLabel, cssClass: this.newContainerMenuItemCssClass, click: $.proxy(this.triggerAddContainer, this) }));
        }
        this.appendEntry(this.path);
    },

    download: function () {
        this.manager.downloadSelectedItems();
    },

    triggerAddContainer: function () {
        this.manager.triggerAddContainer();
    },

    appendMenuItem: function (menuItem) {
        if (menuItem instanceof Magelia.WebStore.File.OptionsMenuItem) {
            this.appendEntry(menuItem.item);
        }
    },

    updatePath: function (path) {
        if (path == null) {
            this.path.hide();
        }
        else {
            this.path.show().html(Magelia.WebStore.File.OptionsMenu.Localizations.PathPrefix + '/' + path);
        }
    },

    appendEntry: function (entry) {
        this.container.append(entry);
    },

    refresh: function () {
        this.manager.refreshContentList();
    },

    goUp: function () {
        this.manager.loadParent();
    },

    upload: function () {
        this.manager.startUpload();
    }
};


Magelia.WebStore.File.OptionsMenuItem = function (optionsMenu, config) {
    if (optionsMenu instanceof Magelia.WebStore.File.OptionsMenu) {
        this.optionsMenu = optionsMenu;
        this.config = config;
        this.initialize();
    }
};

Magelia.WebStore.File.OptionsMenuItem.prototype = {
    optionsMenu: null,
    config: null,
    item: null,

    initialize: function () {
        this.item = $('<li/>').addClass(this.config.cssClass).click(this.config.click || $.noop);
        this.item.html(this.config.label);
    }
};


Magelia.WebStore.File.ContainerItem = function (containerExplorer, config) {
    if (containerExplorer instanceof Magelia.WebStore.File.ContainerExplorer) {
        this.containerExplorer = containerExplorer;
        this.config = config;
        this.initialize();
    }
};

Magelia.WebStore.File.ContainerItem.prototype = {
    containerExplorer: null,
    config: null,
    item: null,
    entry: null,
    expander: null,
    description: null,
    subContainersList: null,
    name: null,
    path: null,
    isRoot: null,
    parent: null,
    childs: null,
    expanded: null,
    selected: null,
    emptyCssClass: 'empty',
    descriptionCssClass: 'description',
    expanderCssClass: 'expander',
    expandedCssClass: 'expanded',
    selectedCssClass: 'selected',
    hoverCssClass: 'hover',
    refreshCssClass: 'refresh',
    renameCssClass: 'rename',
    deleteCssClass: 'delete',
    addCssClass: 'add',
    downloadCssClass: 'download',

    initialize: function () {
        this.applyConfig();
        this.createElements();
        this.implementContextMenu();
        this.implementDragging();
        this.intializeChilds();
        this.changed();
    },

    implementDragging: function () {
        if (!this.isRoot && this.containerExplorer.manager.config.canEdit) {
            this.entry.draggable(
                {
                    revert: 'invalid',
                    zIndex: 2,
                    cursorAt: { top: -2, left: -2 },
                    start: $.proxy(
                        function () {
                            this.containerExplorer.setDroppableFrom(this);
                        },
                        this
                    ),
                    stop: $.proxy(
                        function () {
                            this.containerExplorer.removeDropping();
                        },
                        this
                    )
                }
            );
        }
    },

    implementDropping: function (draggedContainerItem) {
        this.entry.droppable(
            {
                hoverClass: this.hoverCssClass,
                tolerance: 'pointer',
                drop: $.proxy(
                    function () {
                        draggedContainerItem.entry.css({ left: 0, top: 0 });
                        this.containerExplorer.moveContainer(draggedContainerItem, this);
                    },
                    this
                )
            }
        );
    },

    setDroppableForContent: function (draggedContainerPaths, draggedElementPaths) {
        this.entry.droppable(
            {
                hoverClass: this.hoverCssClass,
                tolerance: 'pointer',
                drop: $.proxy(function () { this.contentDropped(draggedContainerPaths, draggedElementPaths); }, this)
            }
        );
    },

    contentDropped: function (draggedContainerPaths, draggedElementPaths) {
        this.containerExplorer.contentDropped(this, draggedContainerPaths, draggedElementPaths);
    },

    removeDropping: function () {
        if (this.entry.hasClass('ui-droppable')) {
            this.entry.droppable('destroy');
        }
    },

    applyConfig: function () {
        $.extend(this, { isRoot: false, expanded: false, selected: false }, this.config);
    },

    createElements: function () {
        this.item = $('<li/>');
        this.entry = $('<div/>').addClass(this.selected ? this.selectedCssClass : '').attr({ title: this.name }).appendTo(this.item);
        this.expander = $('<div/>').addClass(this.expanderCssClass).click($.proxy(this.expand, this)).appendTo(this.entry);
        this.description = $('<div/>').addClass(this.descriptionCssClass).text(this.name).dblclick($.proxy(this.toggleSelection, this)).appendTo(this.entry);
    },

    implementContextMenu: function () {
        var contextMenuEntries = [];
        contextMenuEntries.push([{ text: Magelia.WebStore.File.ContainerItem.Localizations.RefreshContextMenuItemText, cssClass: this.refreshCssClass, click: $.proxy(this.refresh, this) }]);
        if (!this.isRoot && this.containerExplorer.manager.config.canEdit) {
            var middleEntries = [{ text: Magelia.WebStore.File.ContainerItem.Localizations.RenameContextMenuItemText, cssClass: this.renameCssClass, click: $.proxy(this.startRenaiming, this) }];
            if (this.containerExplorer.manager.config.canCreateAndDelete) {
                middleEntries.push({ text: Magelia.WebStore.File.ContainerItem.Localizations.DeleteContextMenuItemText, cssClass: this.deleteCssClass, click: $.proxy(this.startDeleting, this) });
            }
            contextMenuEntries.push(middleEntries);
        }
        if (this.containerExplorer.manager.config.canCreateAndDelete) {
            contextMenuEntries.push([{ text: Magelia.WebStore.File.ContainerItem.Localizations.NewContainerMenuItemText, cssClass: this.addCssClass, click: $.proxy(this.startAdding, this) }]);
        }
        contextMenuEntries.push([{ text: Magelia.WebStore.File.ContainerItem.Localizations.DownloadMenuItemText, cssClass: this.downloadCssClass, click: $.proxy(this.download, this) }]);
        this.entry.contextMenu(contextMenuEntries);
    },

    download: function () {
        this.containerExplorer.manager.download([this.fullPath()]);
    },

    intializeChilds: function () {
        this.childs = [];
        this.appendChilds(this.config.childs);
    },

    refresh: function () {
        if (this.expanded) {
            this.expanded = false;
            this.clearExpander();
            this.expand();
        }
    },

    removeFromSelected: function (name) {
        if (this.selected) {
            var childs = $(this.childs).filter(function () { return this.name == name }).toArray();
            if (childs.length == 1) {
                this.removeChild(childs[0]);
            }
        }
        else {
            $(this.childs).each(function () { this.removeFromSelected(name); });
        }
    },

    toggleSelection: function () {
        if (window.getSelection) {
            window.getSelection().removeAllRanges();
        }
        else if (document.selection) {
            document.selection.empty();
        }
        if (this.selected) {
            this.setUnselected();
            this.containerExplorer.clearList();
        }
        else {
            this.setSelected();
            this.containerExplorer.triggerListing(this);
        }
        this.containerExplorer.clearSelection(this);
        this.changed();
    },

    setUnselected: function () {
        this.entry.removeClass(this.selectedCssClass);
        this.selected = false;
    },

    setSelected: function () {
        this.entry.addClass(this.selectedCssClass);
        this.selected = true;
    },

    startRenaiming: function () {
        var self = this;
        $('<input/>')
            .attr({ type: 'text' })
            .val(this.name)
            .focusout(
                function () {
                    var textBox = $(this);
                    var newName = textBox.val();
                    textBox.remove();
                    self.description.html(self.name);
                    if (newName && newName != self.name) {
                        self.containerExplorer.renameContainer(self, newName);
                    }
                }
            )
            .keypress(
                function (e) {
                    if (e.which == 13) {
                        e.preventDefault();
                        e.stopPropagation();
                        $(this).focusout();
                    }
                }
            )
            .appendTo(this.description.html(''))
            .select()
            .focus();
    },

    updateName: function (newName) {
        var oldPath = this.fullPath();
        this.name = newName;
        this.description.html(this.name);
        this.updateChildPath(oldPath, this.fullPath());
        this.parent.reorderChilds();
        this.changed();
    },

    updateChildPath: function (oldPath, newPath, childs) {
        childs = childs || this.childs;
        for (var i = 0; i < childs.length; i++) {
            var child = childs[i];
            child.path = child.path.replace(oldPath, newPath);
            this.updateChildPath(oldPath, newPath, child.childs);
        }
    },

    startDeleting: function () {
        this.containerExplorer.deleteContainer(this);
    },

    startAdding: function () {
        var self = this;
        this.ensureSubContainersList();
        this.clearExpander();
        this.setExpanded();
        $('<input/>').attr({ type: 'text' })
        .focusout(
            function () {
                var textBox = $(this);
                var name = textBox.val();
                textBox.parent().remove();
                self.changed();
                if (name) {
                    self.containerExplorer.pushContainer(self, name);
                }
            }
        )
        .keypress(
            function (e) {
                if (e.which == 13) {
                    e.preventDefault();
                    e.stopPropagation();
                    $(this).focusout();
                }
            }
        )
        .appendTo($('<li/>').prependTo(this.subContainersList))
        .focus();
    },

    reorderChilds: function () {
        this.childs.sort(function (ci1, ci2) { return ci1.name < ci2.name ? -1 : 1; });
        for (var i = 0; i < this.childs.length; i++) {
            if (i == 0) {
                this.subContainersList.prepend(this.childs[i].item);
            }
            else {
                this.childs[i].item.insertAfter(this.childs[i - 1].item);
            }
        }
    },

    appendChilds: function (childs) {
        if ($.isArray(childs)) {
            for (var i = 0; i < childs.length; i++) {
                this.appendChild(new Magelia.WebStore.File.ContainerItem(this.containerExplorer, $.extend({ parent: this }, childs[i])));
            }
            this.changed();
        }
    },

    changed: function () {
        if (this.childs.length > 0) {
            this.setExpanded();
            this.reorderChilds();
        }
        else if (this.expanded) {
            this.setEmpty();
            this.removeSubContainersList();
        }
        else {
            this.clearExpander();
        }
        this.containerExplorer.manager.saveState();
    },

    removeSubContainersList: function () {
        if (this.subContainersList) {
            this.subContainersList.remove();
            delete this.subContainersList;
        }
    },

    appendChild: function (childContainerItem) {
        this.ensureSubContainersList();
        if ($(this.childs).filter(function () { return this.name == childContainerItem.name; }).length == 0) {
            this.childs.push(childContainerItem);
            this.subContainersList.append(childContainerItem.item);
            this.changed();
        }
    },

    ensureSubContainersList: function () {
        if (!this.subContainersList) {
            this.subContainersList = $('<ul/>').appendTo(this.item);
        }
    },

    isEmpty: function () {
        return this.expanded && this.childs.length == 0;
    },

    fullPath: function () {
        return this.isRoot ? '' : this.containerExplorer.manager.combine(this.path, this.name);
    },

    expand: function () {
        if (!this.isEmpty()) {
            var expanded = this.expanded;
            this.expanded = !this.expanded;
            this.removeChilds();
            if (!expanded) {
                this.containerExplorer.loadChilds(this);
            }
        }
    },

    removeChilds: function () {
        $(this.childs).each($.proxy(function (index, child) { this.removeChild(child); }, this));
    },

    removeChild: function (child) {
        var index = this.getIndexOfChild(child);
        this.childs.splice(index, 1);
        this.subContainersList.children().eq(index).remove();
        this.changed();
    },

    getIndexOfChild: function (child) {
        for (var i = 0; i < this.childs.length; i++) {
            if (this.childs[i] == child) {
                return i;
            }
        }
        return -1;
    },

    setExpanded: function () {
        this.clearExpander();
        this.expander.addClass(this.expandedCssClass);
    },

    setEmpty: function () {
        this.clearExpander();
        this.expander.addClass(this.emptyCssClass);
    },

    clearExpander: function () {
        this.expander.removeClass(this.emptyCssClass).removeClass(this.expandedCssClass);
    },

    getState: function () {
        var state = { name: this.name, path: this.path, childs: [], expanded: this.expanded, isRoot: this.isRoot, selected: this.selected };
        for (var i = 0; i < this.childs.length; i++) {
            state.childs.push(this.childs[i].getState());
        }
        return state;
    }
};


Magelia.WebStore.File.Selection = function (manager) {
    if (manager instanceof Magelia.WebStore.File.Manager) {
        this.manager = manager;
        this.initialize();
    }
};

Magelia.WebStore.File.Selection.prototype = {
    manager: null,
    container: null,
    dropContainer: null,
    subContainer: null,
    selectionButton: null,
    list: null,
    childs: null,
    stateToRestore: null,
    selectionCssClass: 'selection',
    emptyCssClass: 'empty',
    oneSelectionCssClass: 'one',
    hoverCssClass: 'hover',
    highlightBackgroundColor: '#e0e0e0',

    initialize: function () {
        this.childs = [];
        this.container = $('<div/>').addClass(this.selectionCssClass);
        this.subContainer = $('<div/>').appendTo(this.container);
        this.dropContainer = $('<div/>').appendTo(this.subContainer);
        this.manager.selectionButton.appendTo(this.container);
        if (this.manager.config.selection == 1) {
            this.manager.selectionButton.hide();
            this.container.addClass(this.oneSelectionCssClass);
        }
        $('<p/>').html(Magelia.WebStore.File.Selection.Localizations.Title).prependTo(this.container);
        this.setInstructions();
        if (!this.manager.config.selection) {
            this.container.hide();
        }
    },

    setInstructions: function () {
        this.dropContainer.html(Magelia.WebStore.File.Selection.Localizations.DragInstructionText).addClass(this.emptyCssClass);
    },

    removeInstructions: function () {
        if (this.dropContainer.children().length == 0) {
            this.dropContainer.html('');
        }
        this.dropContainer.removeClass(this.emptyCssClass);
    },

    loadFiles: function (fileIds) {
        if (fileIds.length > 0) {
            this.manager.serviceProxy.getFilesByIds(
                fileIds,
                $.proxy(
                    function (files) {
                        this.clearChilds();
                        this.appendChilds(files);
                        if (this.stateToRestore) {
                            this.restoreSelection(this.stateToRestore);
                            this.stateToRestore = null;
                        }
                    },
                    this
                )
            );
        }
    },

    restoreSelection: function (state) {
        for (var i = 0; i < state.selectedFileIds.length; i++) {
            var fileId = state.selectedFileIds[i];
            var childs = $(this.childs).filter(function () { return this.config.FileId == fileId; });
            if (childs.length == 1) {
                childs[0].setSelected();
                this.changed();
            }
        }
    },

    clearChilds: function () {
        this.removeChilds(this.childs.slice(0));
    },

    removeDropping: function () {
        if (this.dropContainer.hasClass('ui-droppable')) {
            this.dropContainer.droppable('destroy');
        }
    },

    implementDropping: function (draggedElementPaths) {
        this.dropContainer.droppable(
            {
                hoverClass: this.hoverCssClass,
                tolerance: 'pointer',
                drop: $.proxy(
                    function () {
                        this.appendChildsFromPaths(draggedElementPaths);
                    },
                    this
                )
            }
        );
    },

    appendChildsFromPaths: function (draggedElementPaths) {
        var configs = this.manager.getConfigsFromPaths(draggedElementPaths)
        var childsConfigs = $.map(configs, function (config) { return { FileId: config.FileId, Key: config.Key, Type: config.Type }; });
        if (this.appendChilds(childsConfigs)) {
            this.highlight();
        }
    },

    highlight: function () {
        var originalBackgroundColor = this.dropContainer.css('backgroundColor');
        this.dropContainer.animate({ backgroundColor: this.highlightBackgroundColor }).animate({ backgroundColor: originalBackgroundColor });
    },

    appendChilds: function (configs) {
        var filesCount = 0;
        var selectOne = this.manager.config.selection == 1;
        if (selectOne) {
            if (this.childs.length > 0) {
                this.removeChild(this.childs[0]);
            }
            configs = configs.slice(0, 1);
        }
        for (var i = 0; i < configs.length; i++) {
            var config = configs[i];
            if ($(this.childs).filter(function () { return this.config.FileId == config.FileId && config.FileId; }).length == 0) {
                this.appendChild(new Magelia.WebStore.File.SelectionItem(this, config));
                filesCount++;
            }
        }
        this.makeSelectable();
        this.changed(true);
        if (selectOne && filesCount == 1) {
            if (typeof (tinyMCEPopup) == 'undefined') {
                this.manager.serviceProxy.abortAll();
                document.location.href = this.manager.selectionButton.attr('href');
            }
            else {
                var fileUrl = this.manager.getConfigsFromPaths([this.manager.combine(this.manager.getCurrentPath(), configs[0].Key)])[0].Url;
                var win = tinyMCEPopup.getWindowArg('window');
                win.document.getElementById(tinyMCEPopup.getWindowArg('input')).value = fileUrl;
                if (win.getImageData) {
                    win.getImageData();
                }
                if (typeof (win.ImageDialog) != 'undefined') {
                    if (win.ImageDialog.getImageData) {
                        win.ImageDialog.getImageData();
                    }
                    if (win.ImageDialog.showPreviewImage) {
                        win.ImageDialog.showPreviewImage(fileUrl);
                    }
                }
                this.manager.serviceProxy.abortAll();
                tinyMCEPopup.close();
                return false;
            }
        }
        return true;
    },

    makeSelectable: function () {
        if (this.dropContainer.hasClass('ui-selectable')) {
            this.dropContainer.selectable('destroy');
        }
        this.dropContainer.selectable(
            {
                filter: 'li',
                selected: $.proxy(function (event, ui) { this.setSelection($(ui.selected), true); }, this),
                unselected: $.proxy(function (event, ui) { this.setSelection($(ui.unselected), false); }, this)
            }
        );
    },

    setSelection: function (item, status) {
        var child = this.childs[item.index()];
        if (status) {
            child.setSelected();
        }
        else {
            child.setUnselected();
        }
        this.changed();
    },

    appendChild: function (child) {
        this.removeInstructions();
        this.ensureList();
        this.childs.push(child);
        this.list.append(child.item);
        this.reorderChilds();
        this.changed();
    },

    reorderChilds: function () {
        this.childs.sort(function (c1, c2) { return c1.config.Key < c2.config.Key ? -1 : 1; });
        for (var i = 0; i < this.childs.length; i++) {
            if (i == 0) {
                this.childs[i].item.prependTo(this.list);
            }
            else {
                this.childs[i].item.insertAfter(this.childs[i - 1].item);
            }
        }
    },

    changed: function (imediate) {
        this.manager.saveState(imediate);
    },

    ensureList: function () {
        if (!this.list) {
            this.list = $('<ul/>').appendTo(this.dropContainer);
        }
    },

    deleteList: function () {
        if (this.list) {
            this.list.remove();
            delete this.list;
        }
    },

    hide: function () {
        this.container.hide();
    },

    remove: function (selectionItem) {
        if (selectionItem.selected) {
            this.removeChilds($(this.childs).filter(function () { return this.selected; }).toArray());
        }
        else {
            this.removeChilds([selectionItem]);
        }
    },

    removeChild: function (childToRemove) {
        this.removeChilds([childToRemove]);
    },

    removeChilds: function (childsToRemove) {
        for (var i = 0; i < childsToRemove.length; i++) {
            var childToRemove = childsToRemove[i];
            this.childs.splice(this.getIndexOfChild(childToRemove), 1);
            childToRemove.item.remove();
        }
        if (this.childs.length == 0) {
            this.deleteList();
            this.setInstructions();
        }
        this.changed();
    },

    getIndexOfChild: function (childToFind) {
        for (var i = 0; i < this.childs.length; i++) {
            var child = this.childs[i];
            if (child == childToFind) {
                return i;
            }
        }
        return -1;
    },

    refresh: function () {
        this.stateToRestore = this.getState();
        this.loadFiles($(this.childs).map(function () { return this.config.FileId; }).toArray());
    },

    getState: function () {
        return { selectedFileIds: $(this.childs).filter(function () { return this.selected; }).map(function () { return this.config.FileId; }).toArray() }
    },

    restoreState: function (state, fileIds) {
        this.stateToRestore = state;
        this.loadFiles(fileIds);
    }
};


Magelia.WebStore.File.SelectionItem = function (selection, config) {
    if (selection instanceof Magelia.WebStore.File.Selection) {
        this.selection = selection;
        this.config = config;
        this.initialize();
    }
};

Magelia.WebStore.File.SelectionItem.prototype = {
    selection: null,
    config: null,
    item: null,
    selected: null,
    removeCssClass: 'delete',
    selectedCssClass: 'ui-selected',

    initialize: function () {
        this.selected = false;
        this.item = $('<li/>').html(this.config.Key).addClass(this.config.Type);
        this.setContextMenu();
    },

    setContextMenu: function () {
        this.item.contextMenu(
            [
                { text: Magelia.WebStore.File.SelectionItem.Localizations.RemoveContextMenuItemText, cssClass: this.removeCssClass, click: $.proxy(this.remove, this) }
            ]
        );
    },

    remove: function () {
        this.selection.remove(this);
    },

    setSelected: function () {
        this.selected = true;
        this.item.addClass(this.selectedCssClass);
    },

    setUnselected: function () {
        this.selected = false;
        this.item.removeClass(this.selectedCssClass);
    }
};


Magelia.WebStore.File.ContentList = function (manager) {
    if (manager instanceof Magelia.WebStore.File.Manager) {
        this.manager = manager;
        this.initialize();
    }
};

Magelia.WebStore.File.ContentList.prototype = {
    manager: null,
    container: null,
    list: null,
    childs: null,
    currentPath: null,
    subContainer: null,
    contentListCssClass: 'list',
    dragCssClass: 'drag',
    hoverCssClass: 'hover',
    newContainerCssClass: 'add',
    uploadCssClass: 'upload',

    initialize: function () {
        this.childs = [];
        this.container = $('<div/>').addClass(this.contentListCssClass);
        this.subContainer = $('<div/>').appendTo(this.container);
        this.setContextMenu();
        this.setDirectUpload();
    },

    setDirectUpload: function () {
        if (this.manager.config.canCreateAndDelete) {
            this.container.bind(
                {
                    drop: $.proxy(
                        function (e) {
                            if (e.dataTransfer) {
                                this.startDirectUpload(e.dataTransfer.files);
                            }
                            e.stopPropagation();
                            e.preventDefault();
                            return false;
                        },
                        this
                    ),
                    dragover: function (e) {
                        e.stopPropagation();
                        e.preventDefault();
                        return false;
                    }
                }
            );
        }
    },

    startDirectUpload: function (files) {
        if (files && files.length > 0) {
            this.manager.startDirectUpload(files);
        }
    },

    setContextMenu: function () {
        if (this.manager.config.canCreateAndDelete) {
            this.subContainer.contextMenu(
                [
                    { text: Magelia.WebStore.File.ContentList.Localizations.UploadContextMenuItemText, cssClass: this.uploadCssClass, click: $.proxy(this.startUpload, this) },
                    { text: Magelia.WebStore.File.ContentList.Localizations.NewContainerContextMenuItemText, cssClass: this.newContainerCssClass, click: $.proxy(this.startContainerAdding, this) }
                ]
            );
        }
    },

    startUpload: function () {
        this.manager.startUpload();
    },

    startContainerAdding: function () {
        if (this.currentPath != null) {
            var self = this;
            this.ensureList();
            $('<input/>')
                .attr({ type: 'text' })
                .focusout(
                    function () {
                        var textBox = $(this);
                        var name = textBox.val();
                        textBox.closest('li').remove();
                        if (self.list.children().length == 0) {
                            self.list.remove();
                            delete self.list;
                        }
                        if (name) {
                            self.manager.pushContainer(self.manager.combine(self.currentPath, name));
                        }
                    }
                )
                .keypress(
                    function (e) {
                        if (e.which == 13) {
                            e.preventDefault();
                            e.stopPropagation();
                            $(this).focusout();
                        }
                    }
                )
                .appendTo($('<li/>').addClass('container').append('<p/>').prependTo(this.list).find('p'))
                .focus();
        }
        else {
            alert(Magelia.WebStore.File.ContentList.Localizations.SelectPathErrorMessage);
        }
    },

    select: function (contentItem) {
        this.manager.select($(this.childs).filter(function () { return this.selected; }).map(function () { return this.config.Key; }).toArray());
    },

    loadContent: function (path) {
        this.manager.serviceProxy.list(
            path,
            this.manager.config.fileType + 256,
            $.proxy(
                function (fileObjects) {
                    this.currentPath = path;
                    this.manager.pathChanged();
                    this.manager.updateSelection(path);
                    this.setContent(fileObjects);
                },
                this
            )
        );
    },

    setContent: function (fileObjects) {
        this.clearContent();
        for (var i = 0; i < fileObjects.length; i++) {
            this.appendChild(fileObjects[i]);
        }
        this.makeSelectable();
        this.changed();
    },

    getState: function () {
        return { currentPath: this.currentPath, contentItems: $.map(this.childs, function (child) { return child.getState(); }) }
    },

    restoreState: function (state) {
        var self = this;
        this.currentPath = state.currentPath;
        this.manager.pathChanged();
        this.setContent(state.contentItems);
        this.makeDraggable();
        if (this.list) {
            this.list.children().each(function () { var item = $(this); self.setSelection(item, self.childs[item.index()].selected); });
        }
    },

    selectionStart: function () {
        $(this.childs).each(
            function () {
                if (this.item.hasClass('ui-draggable')) {
                    this.item.draggable('destroy');
                }
            }
        );
    },

    createDraggingHelper: function (selectedItems) {
        var self = this;
        var helper = $('<ul/>').addClass(this.dragCssClass).appendTo(this.manager.container);
        selectedItems.each(
            function () {
                var selectedItem = $(this);
                var child = self.childs[selectedItem.index()];
                $('<li/>').html(child.config.Key).addClass(child.config.Type).appendTo(helper);
            }
        );
        return helper[0]
    },

    dragStart: function (selectedItems) {
        var self = this;
        var selectedChilds = selectedItems.map(function () { return self.childs[$(this).index()]; }).toArray();
        if (this.manager.config.canEdit) {
            this.list
            .children()
            .filter(function () { return self.childs[$(this).index()].config.Type == 'container' && selectedItems.filter(this).length == 0; })
            .droppable(
                {
                    tolerance: 'pointer',
                    hoverClass: this.hoverCssClass,
                    drop: function () { self.itemsDropped($(this), selectedItems); }
                }
            );
        }
        this.manager.contentDragStart(
            $(selectedChilds).filter(function () { return this.config.Type == 'container'; }).map(function () { return self.manager.combine(self.currentPath, this.config.Key); }).toArray(),
            $(selectedChilds).filter(function () { return this.config.Type != 'container'; }).map(function () { return self.manager.combine(self.currentPath, this.config.Key); }).toArray()
        );
    },

    itemsDropped: function (dropItem, droppedItems) {
        var self = this;
        var container = this.childs[dropItem.index()];
        var droppedChild = droppedItems.map(function () { return self.childs[$(this).index()]; }).toArray();
        var droppedContainers = $(droppedChild).filter(function () { return this.config.Type == 'container'; }).toArray();
        var droppedFiles = $(droppedChild).filter(function () { return this.config.Type != 'container'; }).toArray();
        if (droppedContainers.length > 0) {
            this.moveContainers(container, droppedContainers);
        }
        if (droppedFiles.length > 0) {
            this.moveFiles(container, droppedFiles);
        }
    },

    moveFiles: function (destinationContainer, filesToMove) {
        this.manager.serviceProxy.moveElements(
            $.map(filesToMove, $.proxy(function (fileToMove) { return { OldPath: this.manager.combine(this.currentPath, fileToMove.config.Key), NewPath: this.manager.combine(this.manager.combine(this.currentPath, destinationContainer.config.Key), fileToMove.config.Key) }; }, this)),
            $.proxy(
                function (movedFile) {
                    var self = this;
                    var child = $(filesToMove).filter(function () { return self.manager.combine(self.currentPath, this.config.Key) == movedFile }).toArray()[0];
                    this.removeChild(child);
                },
                this
            )
        );
    },

    moveContainers: function (destinationContainer, containerToMoves) {
        this.manager.serviceProxy.moveContainers(
            $.map(containerToMoves, $.proxy(function (containerToMove) { return { OldPath: this.manager.combine(this.currentPath, containerToMove.config.Key), NewPath: this.manager.combine(this.manager.combine(this.currentPath, destinationContainer.config.Key), containerToMove.config.Key) }; }, this)),
            $.proxy(
                function (movedContainer) {
                    var self = this;
                    this.removeChild($(containerToMoves).filter(function () { return self.manager.combine(self.currentPath, this.config.Key) == movedContainer }).toArray()[0]);
                },
                this
            )
        );
    },

    removeChild: function (contentItem) {
        contentItem.item.remove();
        this.childs.splice(this.getIndexOfChild(contentItem), 1);
        this.manager.contentItemRemoved(contentItem);
        if (this.childs.length == 0) {
            this.clearContent();
        }
        else {
            this.changed();
        }
    },

    getIndexOfChild: function (child) {
        for (var i = 0; i < this.childs.length; i++) {
            if (this.childs[i] == child) {
                return i;
            }
        }
        return -1;
    },

    makeDraggable: function () {
        if (this.list) {
            var self = this;
            var selectedItems = this.list.children('.ui-selected');
            selectedItems.draggable(
                {
                    revert: 'invalid',
                    opacity: 0.5,
                    delay: 200,
                    cursorAt: { top: -2, left: -2 },
                    helper: $.proxy(function () { return this.createDraggingHelper(selectedItems); }, this),
                    start: $.proxy(function () { this.dragStart(selectedItems); }, this),
                    stop: $.proxy(this.dragStop, this)
                }
            );
        }
    },

    dragStop: function () {
        this.manager.contentDragStop();
    },

    setSelection: function (item, status) {
        var index = item.index();
        if (index < this.childs.length) {
            var child = this.childs[index];
            child.updateSelectionStatus(status);
            if (!status || (status && this.list.children().filter('.ui-selected').length == 1)) {
                child.setDefaultContextMenu();
            }
            else {
                child.setSelectedContextMenu();
            }
            this.changed();
        }
    },

    makeSelectable: function () {
        var self = this;
        if (this.subContainer.hasClass('ui-selectable')) {
            this.subContainer.selectable('destroy');
        }
        this.subContainer.selectable(
            {
                filter: 'li',
                start: $.proxy(this.selectionStart, this),
                stop: $.proxy(
                    function () {
                        this.makeDraggable();
                        if (this.list) {
                            var children = this.list.children();
                            children.not('.ui-selected').each(function () { self.setSelection($(this), false); });
                            this.manager.contentSelectionStop(children.filter('.ui-selected').each(function () { self.setSelection($(this), true); }).map(function () { return self.childs[$(this).index()]; }).toArray());
                        }
                        else {
                            this.manager.contentSelectionStop();
                        }
                    },
                    this
                ),
                unselected: $.proxy(function (event, ui) { this.setSelection($(ui.unselected), false); }, this)
            }
        );
    },

    appendChild: function (child) {
        var contentItem = new Magelia.WebStore.File.ContentItem(this, child);
        this.ensureList();
        this.childs.push(contentItem);
        this.list.append(contentItem.item);
        this.changed();
    },

    removeContentItem: function (path) {
        if (path.indexOf(this.currentPath) != -1) {
            var name = path.replace(this.currentPath, '').replace(this.manager.config.pathSeparator, '');
            var childs = $(this.childs).filter(function () { return this.config.Key == name; });
            if (childs.length == 1) {
                var child = childs[0];
                this.removeChild(child);
            }
        }
    },

    ensureList: function () {
        if (!this.list) {
            this.list = $('<ul/>').appendTo(this.subContainer);
        }
    },

    clearContent: function () {
        this.childs.splice(0, this.childs.length);
        if (this.list) {
            this.list.remove();
            delete this.list;
            this.changed();
        }
    },

    changed: function () {
        this.manager.saveState();
    },

    remame: function (contentItem, newName) {
        var fullPath = this.manager.combine(this.currentPath, contentItem.config.Key);
        if (contentItem.config.Type == 'container') {
            this.manager.renameContainer(fullPath, newName);
        }
        else {
            this.manager.serviceProxy.renameElement(
                fullPath,
                newName,
                 $.proxy(
                     function () {
                         this.manager.refreshContentList();
                         this.manager.fileRenamed(contentItem.config.FileId);
                     },
                     this
                )
            );
        }
    },

    deleteSelectedChilds: function () {
        var self = this;
        this.deleteElements(this.list.children().filter('.ui-selected').map(function () { return self.childs[$(this).index()]; }).toArray());
    },

    downloadSelectedItems: function () {
        var self = this;
        var selected = this.list.children().filter('.ui-selected').map(function () { return self.childs[$(this).index()]; });
        var folders = selected.filter(function () { return this.config.Type == 'container' }).map(function () { return self.manager.combine(self.currentPath, this.config.Key); }).toArray();
        var files = selected.filter(function () { return this.config.Type != 'container' }).map(function () { return self.manager.combine(self.currentPath, this.config.Key); }).toArray();
        if (folders.length > 0 || files.length > 0) {
            this.manager.download(folders, files);
        }
        else {
            alert(Magelia.WebStore.File.ContentList.Localizations.DownloadSelectionErrorMessage);
        }
    },

    deleteElements: function (elementsToDelete) {
        var self = this;
        var containerPathToDelete = $(elementsToDelete).filter(function () { return this.config.Type == 'container' }).map(function () { return self.manager.combine(self.currentPath, this.config.Key); }).toArray();
        var elementPathToDelete = $(elementsToDelete).filter(function () { return this.config.Type != 'container' }).map(function () { return self.manager.combine(self.currentPath, this.config.Key); }).toArray();
        if (containerPathToDelete.length > 0) {
            this.manager.deleteContainers(containerPathToDelete);
        }
        if (elementPathToDelete.length > 0) {
            this.manager.serviceProxy.deleteElements(
                elementPathToDelete,
                $.proxy(
                    function (deleteElement) {
                        this.removeContentItem(deleteElement);
                    },
                    this
                )
            );
        }
    },

    closeExistingViews: function (except) {
        $(this.childs).each(
            function () {
                if (this != except && this.largeImage) {
                    this.largeImage.click();
                }
            }
        );
    }
};


Magelia.WebStore.File.ContentItem = function (contentList, config) {
    if (contentList instanceof Magelia.WebStore.File.ContentList) {
        this.contentList = contentList;
        this.config = config;
        this.initialize();
    }
};

Magelia.WebStore.File.ContentItem.prototype = {
    config: null,
    contentList: null,
    item: null,
    selected: null,
    description: null,
    image: null,
    largeImage: null,
    resizeProxy: null,
    scrollProxy: null,
    renameCssClass: 'rename',
    deleteCssClass: 'delete',
    viewCssClass: 'view',
    selectedCssClass: 'ui-selected',
    imageLoadedCssClass: 'loaded',
    imageErrorCssClass: 'error',
    downloadCssClass: 'download',

    initialize: function () {
        this.config = $.extend({}, { selected: false }, this.config);
        this.item = $('<li/>').addClass(this.config.Type).attr({ title: this.config.Key });
        this.description = $('<p/>').html(this.config.Key).appendTo(this.item);
        if (this.config.Type == 'container') {
            this.item.dblclick($.proxy(this.openContainer, this));
        }
        this.updateSelectionStatus(this.config.selected);
        this.setDefaultContextMenu();
        this.setQuickSelection();
        this.startImageLoading();
    },

    setQuickSelection: function () {
        if (this.config.Type != 'container') {
            this.item.dblclick($.proxy(function () { this.contentList.select(); }, this));
        }
    },

    startImageLoading: function () {
        if (this.config.Type == 'image') {
            var url = this.config.Thumb || this.config.Url;
            if (url) {
                this.contentList.manager.imageLoader.loadImage(url, $.proxy(this.appendImage, this), $.proxy(this.setError, this));
            }
        }
    },

    appendImage: function (image) {
        this.image = image;
        var imageContainer = $('<div/>').prependTo(this.item.addClass(this.imageLoadedCssClass));
        this.image.prependTo(imageContainer).css({ marginLeft: (imageContainer.width() - image.width()) / 2, marginTop: (imageContainer.height() - image.height()) / 2 });
    },

    setError: function () {
        this.item.addClass(this.imageErrorCssClass);
    },

    clearContextMenu: function () {
        this.item.contextMenu('destroy');
    },

    setDefaultContextMenu: function () {
        var contextMenuItems = [];
        this.clearContextMenu();
        if (this.config.Type == 'image') {
            contextMenuItems.push([{ text: Magelia.WebStore.File.ContentItem.Localizations.ViewContextMenuItemText, cssClass: this.viewCssClass, click: $.proxy(this.view, this) }]);
        }

        var edition = [];

        if (this.contentList.manager.config.canEdit) {
            edition.push({ text: Magelia.WebStore.File.ContentItem.Localizations.RenameContextMenuItemText, cssClass: this.renameCssClass, click: $.proxy(this.startRenaming, this) });
        }
        if (this.contentList.manager.config.canCreateAndDelete) {
            edition.push({ text: Magelia.WebStore.File.ContentItem.Localizations.DeleteContextMenuItemText, cssClass: this.deleteCssClass, click: $.proxy(this.startDeleting, this) });
        }

        if (edition.length > 0) {
            contextMenuItems.push(edition);
        }

        contextMenuItems.push([{ text: Magelia.WebStore.File.ContentItem.Localizations.DownloadContextMenuItemText, cssClass: this.downloadCssClass, click: $.proxy(this.download, this) }]);

        this.item.contextMenu(contextMenuItems);
    },

    download: function () {
        var path = this.contentList.manager.combine(this.contentList.currentPath, this.config.Key);
        this.contentList.manager.download(
            this.config.Type == 'container' ? [path] : [],
            this.config.Type != 'container' ? [path] : []
        );
    },

    view: function () {
        this.contentList.closeExistingViews(this);
        if (!this.largeImage) {
            this.contentList.manager.imageLoader.loadImage(
                this.config.Url,
                $.proxy(
                    function (image) {
                        this.largeImage = image;
                        var css = { position: 'absolute', zIndex: 9999, cursor: 'pointer' };
                        if (this.image) {
                            var offset = this.image.offset();
                            $.extend(css, { top: offset.top, left: offset.left, width: this.image.width(), height: this.image.height() });
                        }
                        else {
                            $.extend(css, { top: 0, left: 0 });
                        }
                        this.largeImage.css(css).animate(this.getCenteredLargeImageConfig()).click($.proxy(function () { this.closeView(true); }, this));
                        this.resizeProxy = $.proxy(this.recenterLargeImage, this);
                        this.scrollProxy = $.proxy(this.recenterLargeImage, this);
                        $(window).bind({ resize: this.resizeProxy, scroll: this.scrollProxy });
                    },
                    this
                )
            );
        }
    },

    recenterLargeImage: function () {
        this.largeImage.css(this.getCenteredLargeImageConfig());
    },

    getCenteredLargeImageConfig: function () {
        if (this.largeImage) {
            var win = $(window);
            var clone = this.largeImage.clone().appendTo(document.body).css({ width: 'auto', height: 'auto' });
            var winWidth = win.width();
            var winHeight = win.height();
            var largImageWidth = clone.width();
            var largImageHeight = clone.height();
            if (largImageWidth > winWidth) {
                largImageHeight = largImageHeight * winWidth / largImageWidth;
                largImageWidth = winWidth;
            }
            if (largImageHeight > winHeight) {
                largImageWidth = largImageWidth * winHeight / largImageHeight;
                largImageHeight = winHeight;
            }
            clone.remove();
            return { width: largImageWidth, height: largImageHeight, top: ((winHeight - largImageHeight) / 2) + win.scrollTop(), left: ((winWidth - largImageWidth) / 2) + win.scrollLeft() };
        }
    },

    closeView: function (animated) {
        if (this.largeImage) {
            if (animated && this.image) {
                var offset = this.image.offset();
                this.largeImage.animate(
                    { top: offset.top, left: offset.left, width: this.image.width(), height: this.image.height() },
                    $.proxy(this.destroyLargeImage, this)
                );
            }
            else {
                this.destroyLargeImage();
            }
        }
    },

    destroyLargeImage: function () {
        var win = $(window);
        this.largeImage.remove();
        win.unbind('resize', this.resizeProxy);
        win.unbind('scroll', this.scrollProxy);
        this.resizeProxy = null;
        this.scrollProxy = null;
        this.largeImage = null;
    },

    setSelectedContextMenu: function () {
        this.clearContextMenu();
        if (this.contentList.manager.config.canCreateAndDelete) {
            this.item.contextMenu(
                [
                    [{ text: Magelia.WebStore.File.ContentItem.Localizations.DeleteContextMenuItemText, cssClass: this.deleteCssClass, click: $.proxy(this.startDeletingSelectedElements, this) }],
                    [{ text: Magelia.WebStore.File.ContentItem.Localizations.DownloadContextMenuItemText, cssClass: this.downloadCssClass, click: $.proxy(this.downloadSelectedItems, this) }]
                ]
            );
        }
    },

    downloadSelectedItems: function () {
        this.contentList.downloadSelectedItems();
    },

    startDeletingSelectedElements: function () {
        if (confirm(Magelia.WebStore.File.ContentItem.Localizations.DeleteConfirmationMessage)) {
            this.contentList.deleteSelectedChilds();
        }
    },

    startDeleting: function () {
        if (confirm(Magelia.WebStore.File.ContentItem.Localizations.DeleteConfirmationMessage)) {
            this.contentList.deleteElements([this]);
        }
    },

    updateSelectionStatus: function (status) {
        this.selected = status;
        if (this.selected) {
            this.item.addClass(this.selectedCssClass);
        }
        else {
            this.item.removeClass(this.selectedCssClass);
        }
    },

    startRenaming: function () {
        var fileName;
        var extension;
        var self = this;
        if (this.config.Key.indexOf('.') == -1 || this.config.Type == 'container') {
            extension = '';
            fileName = this.config.Key;
        }
        else {
            var lastIndexOfDot = this.config.Key.lastIndexOf('.');
            fileName = this.config.Key.substring(0, lastIndexOfDot);
            extension = this.config.Key.substring(lastIndexOfDot);
        }
        var input = $('<input/>').attr({ type: 'text' })
                                 .val(fileName)
                                 .focusout(
                                     function () {
                                         var textBox = $(this);
                                         var newName = textBox.val();
                                         textBox.remove();
                                         self.description.html(self.config.Key);
                                         if (newName && newName != fileName) {
                                             self.contentList.remame(self, newName + extension);
                                         }
                                     }
                                 )
                                 .keypress(
                                     function (e) {
                                         if (e.which == 13) {
                                             e.preventDefault();
                                             e.stopPropagation();
                                             $(this).focusout();
                                         }
                                     }
                                 )
                                 .appendTo(this.description.html(''))
                                 .focus()
                                 .select();
        if (this.config.Type == 'container') {
            input.select();
        }
    },

    openContainer: function () {
        this.contentList.loadContent(this.contentList.manager.combine(this.contentList.currentPath, this.config.Key));
    },

    getState: function () {
        return $.extend({}, this.config, { selected: this.selected });
    },

    updateKey: function (key) {
        this.config.Key = key;
        this.description.html(key);
    }
};

Magelia.WebStore.File.MetadataEditor = function (manager) {
    if (manager instanceof Magelia.WebStore.File.Manager) {
        this.manager = manager;
        this.initialize();
    }
};

Magelia.WebStore.File.MetadataEditor.prototype = {
    manager: null,
    container: null,
    form: null,
    subContainer: null,
    instructions: null,
    cultureField: null,
    nameField: null,
    titleField: null,
    tagsField: null,
    descriptionField: null,
    alternateTextField: null,
    contentItem: null,
    propertiesForm: null,
    localizationForm: null,
    currentCulture: null,
    localizationButtonsContainer: null,
    metaDataEditorCssClass: 'metadata',
    fullCssClass: 'full',
    formCssClass: 'form',
    buttonsCssClass: 'buttons',
    saveCssClass: 'save',
    deleteCssClass: 'delete',

    initialize: function () {
        this.container = $('<div/>').addClass(this.metaDataEditorCssClass);
        this.subContainer = $('<div/>').appendTo(this.container);
        this.form = $('<div/>').addClass(this.formCssClass).appendTo(this.subContainer);
        this.instructions = $('<p/>').html(Magelia.WebStore.File.MetadataEditor.Localizations.InstructionText).appendTo(this.subContainer);
        $('<p/>').html(Magelia.WebStore.File.MetadataEditor.Localizations.Title).prependTo(this.container);
        this.buildForm();
        this.hideForm();
        this.setLocalizationFieldsVisibility(false);
        this.setLocalizationFormVisibility();
        if (!this.manager.config.selection) {
            this.container.addClass(this.fullCssClass)
        }
    },

    setLocalizationFormVisibility: function () {
        if (!this.manager.config.canViewLocalizations) {
            this.localizationForm.hide();
        }
    },

    buildForm: function () {
        var propertiesRules = [];
        var propertiesMessages = [];
        var localizationRules = [];
        var localizationMessages = [];
        var localizationsButtons = [];
        var readOnlyLocalizations = !this.manager.config.canEditLocalizations;
        var savePropertiesProxy = $.proxy(this.saveProperties, this);
        var saveLocalizationProxy = $.proxy(function () { this.saveLocalization(true); }, this);

        this.propertiesForm = this.createForm(Magelia.WebStore.File.MetadataEditor.Localizations.PropertiesLegend);
        this.localizationForm = this.createForm(Magelia.WebStore.File.MetadataEditor.Localizations.LocalizationsLegend);

        var propertiesFieldset = this.propertiesForm.children().first();
        var localizationFieldset = this.localizationForm.children().first();

        this.tagsField = new Magelia.WebStore.File.TextField(this, { label: Magelia.WebStore.File.MetadataEditor.Localizations.TagLabel, change: $.proxy(this.changed, this), submit: savePropertiesProxy, readOnly: !this.manager.config.canEdit });
        this.cultureField = new Magelia.WebStore.File.SelectField(this, { label: Magelia.WebStore.File.MetadataEditor.Localizations.CultureLabel, change: $.proxy(this.cultureChanged, this), values: $.map(this.manager.config.sellerCultures, function (culture) { return { value: culture.CultureId, text: culture.Name }; }), submit: saveLocalizationProxy });
        this.nameField = new Magelia.WebStore.File.TextField(this, { label: Magelia.WebStore.File.MetadataEditor.Localizations.NameLabel, change: $.proxy(this.changed, this), submit: saveLocalizationProxy, readOnly: readOnlyLocalizations });
        this.titleField = new Magelia.WebStore.File.TextField(this, { label: Magelia.WebStore.File.MetadataEditor.Localizations.TitleLabel, change: $.proxy(this.changed, this), submit: saveLocalizationProxy, readOnly: readOnlyLocalizations });
        this.alternateTextField = new Magelia.WebStore.File.TextField(this, { label: Magelia.WebStore.File.MetadataEditor.Localizations.AlternateTextLabel, change: $.proxy(this.changed, this), submit: saveLocalizationProxy, readOnly: readOnlyLocalizations });
        this.descriptionField = new Magelia.WebStore.File.TextField(this, { multiline: true, label: Magelia.WebStore.File.MetadataEditor.Localizations.DescriptionLabel, change: $.proxy(this.changed, this), submit: saveLocalizationProxy, readOnly: readOnlyLocalizations });

        localizationMessages[this.cultureField.id] = { required: Magelia.WebStore.File.MetadataEditor.Localizations.CultureRequiredErrorMessage };
        localizationRules[this.nameField.id] = { required: true, maxlength: 50 };
        localizationMessages[this.nameField.id] = { required: Magelia.WebStore.File.MetadataEditor.Localizations.NameRequiredErrorMessage, maxlength: jQuery.validator.format(Magelia.WebStore.File.MetadataEditor.Localizations.NameMaxLengthErrorMessage) };
        localizationRules[this.titleField.id] = { maxlength: 50 };
        localizationMessages[this.titleField.id] = { maxlength: jQuery.validator.format(Magelia.WebStore.File.MetadataEditor.Localizations.TitleMaxLengthErrorMessage) };
        this.localizationForm.validate({ rules: localizationRules, messages: localizationMessages });

        if (this.manager.config.canEditLocalizations) {
            if (this.manager.config.canCreateAndDeleteLocalizations) {
                localizationsButtons.push({ label: Magelia.WebStore.File.MetadataEditor.Localizations.DeleteButtonText, click: this.deleteLocalization, cssClass: this.deleteCssClass });
            }
            localizationsButtons.push({ label: Magelia.WebStore.File.MetadataEditor.Localizations.SaveButtonText, click: saveLocalizationProxy, cssClass: this.saveCssClass });
        }

        this.localizationButtonsContainer = this.buildButtonsContainer(localizationsButtons);

        localizationFieldset.append(this.cultureField.container, this.nameField.container, this.titleField.container, this.alternateTextField.container, this.descriptionField.container, this.localizationButtonsContainer);
        propertiesFieldset.append(this.tagsField.container);
        if (this.manager.config.canEdit) {
            propertiesFieldset.append(this.buildButtonsContainer([{ label: Magelia.WebStore.File.MetadataEditor.Localizations.SaveButtonText, click: savePropertiesProxy, cssClass: this.saveCssClass }]));
        }
    },

    setLocalizationFieldsVisibility: function (visibility) {
        if (visibility) {
            this.nameField.show();
            this.titleField.show();
            this.alternateTextField.show();
            this.descriptionField.show();
            this.localizationButtonsContainer.show();
        }
        else {
            this.nameField.hide();
            this.titleField.hide();
            this.alternateTextField.hide();
            this.descriptionField.hide();
            this.localizationButtonsContainer.hide();
        }
    },

    deleteLocalization: function () {
        var culture = this.cultureField.getValue();
        if (culture) {
            this.manager.serviceProxy.deleteFileLocalization(
                this.contentItem.config.FileId,
                culture,
                $.proxy(
                    function (success) {
                        if (success) {
                            this.clearLocalizationForm();
                            this.cultureField.setValue(culture);
                            this.changed();
                        }
                        else {
                            alert(Magelia.WebStore.File.MetadataEditor.Localizations.DeleteLocalizationErrorMessage);
                        }
                    },
                    this
                )
            );
        }
    },

    changed: function () {
        this.manager.saveState();
    },

    cultureChanged: function () {
        var valid = false;
        if (!this.currentCulture || (!this.nameField.getValue() && !this.titleField.getValue() && !this.alternateTextField.getValue() && !this.descriptionField.getValue()) || (valid = this.localizationForm.validate().form())) {
            if (valid && this.manager.config.canEditLocalizations) {
                this.saveLocalization(false);
            }
            this.currentCulture = this.cultureField.getValue();
            this.clearLocalizationForm();
            this.cultureField.setValue(this.currentCulture);
            if (this.currentCulture && this.contentItem.config.FileId) {
                this.setLocalizationFieldsVisibility(true);
                this.manager.serviceProxy.getFileLocalization(
                    this.contentItem.config.FileId,
                    this.currentCulture,
                    $.proxy(this.setLocalization, this)
                );
            }
            else {
                this.setLocalizationFieldsVisibility(false);
            }
            this.changed();
        }
        else {
            this.cultureField.setValue(this.currentCulture);
        }
    },

    createForm: function (legend) {
        return $('<form/>').append($('<fieldset/>').append($('<legend/>').html(legend))).appendTo(this.form);
    },

    buildButtonsContainer: function (buttons) {
        var list = $('<ul/>');
        for (var i = 0; i < buttons.length; i++) {
            var button = buttons[i];
            $('<li/>').html(button.label || '').click($.proxy(button.click || $.noop, this)).addClass(button.cssClass).appendTo(list);
        }
        return $('<div/>').addClass(this.buttonsCssClass).append(list);
    },

    saveProperties: function () {
        if (this.propertiesForm.validate().form()) {
            this.manager.serviceProxy.updateFileProperties(
                this.contentItem.config.FileId,
                this.getFilePath(),
                this.getProperties(),
                $.proxy(
                    function (fileId) {
                        if (fileId) {
                            this.contentItem.config.FileId = fileId;
                            alert(Magelia.WebStore.File.MetadataEditor.Localizations.PropertiesSavedMessage);
                        }
                        else {
                            alert(Magelia.WebStore.File.MetadataEditor.Localizations.PropertiesUpdateErrorMessage);
                        }
                        this.changed();
                    },
                    this
                )
            );
        }
    },

    saveLocalization: function (confirm) {
        if (this.localizationForm.validate().form()) {
            this.manager.serviceProxy.updateFileLocalization(
                this.contentItem.config.FileId,
                this.getFilePath(),
                this.getLocalization(),
                $.proxy(
                    function (fileId) {
                        if (fileId) {
                            this.contentItem.config.FileId = fileId;
                            if (confirm) {
                                alert(Magelia.WebStore.File.MetadataEditor.Localizations.LocalizationSavedMessage);
                            }
                        }
                        else {
                            alert(Magelia.WebStore.File.MetadataEditor.Localizations.UpdateLocalizationErrorMessage);
                        }
                        this.changed();
                    },
                    this
                )
            );
        }
    },

    getFilePath: function () {
        return this.manager.combine(this.manager.getCurrentPath(), this.contentItem.config.Key);
    },

    clearForm: function () {
        this.clearPropertiesForm();
        this.clearLocalizationForm();
        this.setLocalizationFieldsVisibility(false);
    },

    clearLocalizationForm: function () {
        this.cultureField.clearSelection();
        this.titleField.setValue('');
        this.nameField.setValue('');
        this.alternateTextField.setValue('');
        this.descriptionField.setValue('');
        this.localizationForm.validate().resetForm();
    },

    clearPropertiesForm: function () {
        this.tagsField.setValue('');
        this.propertiesForm.validate().resetForm();
    },

    startEditing: function (contentItem) {
        this.contentItem = contentItem;
        this.showForm();
        this.clearForm();
        this.loadProperties();
        this.changed();
    },

    loadProperties: function () {
        if (this.contentItem.config.FileId) {
            this.manager.serviceProxy.getFileProperties(this.contentItem.config.FileId, $.proxy(this.setProperties, this));
        }
    },

    setProperties: function (properties) {
        this.tagsField.setValue(properties.FileTags);
        this.changed();
    },

    setLocalization: function (localization) {
        var empty = !localization.Name;
        this.cultureField.setValue(localization.CultureId);
        this.titleField.setValue(localization.Title);
        this.nameField.setValue(localization.Name);
        this.alternateTextField.setValue(localization.AlternateText);
        this.descriptionField.setValue(localization.Description);
        this.setLocalizationFieldsVisibility(((empty && this.manager.config.canCreateAndDeleteLocalizations) || (!empty && this.manager.config.canViewLocalizations)));
        this.changed();
    },

    clearEdition: function () {
        this.contentItem = null;
        this.hideForm();
        this.changed();
    },

    showForm: function () {
        this.instructions.hide();
        this.form.show();
    },

    hideForm: function () {
        this.instructions.show();
        this.form.hide();
    },

    getState: function () {
        return { currentContentItemName: this.contentItem ? this.contentItem.config.Key : null, properties: this.getProperties(), localization: this.getLocalization(), currentCulture: this.currentCulture, localizationFieldsVisibility: this.localizationButtonsContainer.is(':visible') };
    },

    restoreState: function (state) {
        if (state.currentContentItemName) {
            this.currentCulture = state.currentCulture;
            this.contentItem = this.manager.getContentItemByName(state.currentContentItemName);
            this.setProperties(state.properties);
            this.setLocalization(state.localization);
            this.setLocalizationFieldsVisibility(state.localizationFieldsVisibility);
            this.showForm();
        }
    },

    getProperties: function () {
        return { FileTags: this.tagsField.getValue() };
    },

    getLocalization: function () {
        return { CultureId: this.currentCulture, Name: this.nameField.getValue(), Title: this.titleField.getValue(), AlternateText: this.alternateTextField.getValue(), Description: this.descriptionField.getValue() };
    }
};


Magelia.WebStore.File.SelectField = function (metadataEditor, config) {
    if (metadataEditor instanceof Magelia.WebStore.File.MetadataEditor) {
        this.metadataEditor = metadataEditor;
        this.config = config;
        this.initialize();
    }
};

Magelia.WebStore.File.SelectField.prototype = {
    metadataEditor: null,
    config: null,
    container: null,
    label: null,
    field: null,
    id: null,
    containerClass: 'inline',

    initialize: function () {
        this.id = 'field_' + Math.random().toString().replace('.', '');
        this.container = $('<div/>').addClass(this.containerClass);
        this.label = $('<label/>').attr('for', this.id).html(this.config.label || '').appendTo(this.container);
        this.field = $('<select/>').attr({ id: this.id, name: this.id }).change(this.config.change || $.noop).keydown($.proxy(this.handleSubmit, this)).appendTo(this.container);
        if ($.isArray(this.config.values)) {
            var values = [{ text: '', value: '' }].concat(this.config.values);
            for (var i = 0; i < values.length; i++) {
                var value = values[i];
                $('<option/>').attr({ value: value.value }).html(value.text || '').appendTo(this.field);
            }
        }
    },

    handleSubmit: function (e) {
        if (e.which == 13) {
            e.preventDefault();
            e.stopPropagation();
            (this.config.submit || $.noop)();
            return false;
        }
    },

    clearSelection: function () {
        this.field.val('');
    },

    getValue: function () {
        return this.field.val();
    },

    setValue: function (value) {
        this.field.val(value);
    }
};


Magelia.WebStore.File.TextField = function (metadataEditor, config) {
    if (metadataEditor instanceof Magelia.WebStore.File.MetadataEditor) {
        this.metadataEditor = metadataEditor;
        this.config = config;
        this.initialize();
    }
};

Magelia.WebStore.File.TextField.prototype = {
    metadataEditor: null,
    config: null,
    container: null,
    label: null,
    field: null,
    id: null,
    containerClass: 'inline',

    initialize: function () {
        this.id = 'field_' + Math.random().toString().replace('.', '');
        this.container = $('<div/>').addClass(this.containerClass);
        this.label = $('<label/>').attr('for', this.id).html(this.config.label || '').appendTo(this.container);
        this.field = (this.config.multiline ? $('<textarea/>') : $('<input/>').attr({ type: 'text' })).attr({ id: this.id, name: this.id }).change(this.config.change || $.noop).keydown($.proxy(this.handleSubmit, this)).appendTo(this.container);
        this.setReadOnly(this.config.readOnly);
    },

    setReadOnly: function (readOnly) {
        if (readOnly) {
            this.field.attr({ readonly: 'readonly' });
        }
        else {
            this.field.removeAttr('readonly');
        }
    },

    handleSubmit: function (e) {
        if (e.which == 13) {
            e.preventDefault();
            e.stopPropagation();
            (this.config.submit || $.noop)();
            return false;
        }
    },

    getValue: function () {
        return this.field.val();
    },

    setValue: function (value) {
        this.field.val(value);
    },

    hide: function () {
        this.container.hide();
    },

    show: function () {
        this.container.show();
    }
};


Magelia.WebStore.File.Popin = function (config) {
    this.config = config;
    this.initialize();
};

Magelia.WebStore.File.Popin.prototype = {
    config: null,
    container: null,
    content: null,
    closeButton: null,
    overlay: null,
    overlayCssClass: 'overlay',
    popinCssClass: 'popin',
    contentCssClass: 'content',
    closeCssClass: 'close',
    closeEvent: 'popinclose',

    initialize: function () {
        this.config = $.extend({}, this.config);
        this.container = $('<div/>').addClass(this.popinCssClass).addClass(this.config.cssClass).appendTo(document.body);
        this.closeButton = $('<span/>').addClass(this.closeCssClass).html('x').appendTo(this.container).click($.proxy(this.close, this));
        this.content = $('<div/>').addClass(this.contentCssClass).appendTo(this.container);
        this.overlay = $('<div/>').addClass(this.overlayCssClass).appendTo(document.body).css({ opacity: 0.5 });
        this.close();
        $(window).resize($.proxy(this.center, this))
    },

    center: function () {
        if (this.container.is(':visible')) {
            var win = $(window);
            this.container.css({ top: (win.height() - this.container.outerHeight()) / 2, left: (win.width() - this.container.outerWidth()) / 2 });
        }
    },

    appendContent: function (element) {
        this.content.append(element);
    },

    close: function (param) {
        if ($.isFunction(param)) {
            $(this).bind(this.closeEvent, param);
        }
        else {
            this.overlay.hide();
            this.container.hide();
            $(this).trigger(this.closeEvent, this);
        }
    },

    open: function () {
        this.overlay.show();
        this.container.show();
        this.center();
    }
};

Magelia.WebStore.File.Upload = function (manager) {
    if (manager instanceof Magelia.WebStore.File.Manager) {
        this.manager = manager;
        this.initialize();
    }
};

Magelia.WebStore.File.Upload.prototype = {
    manager: null,
    container: null,
    uploadElement: null,
    form: null,
    button: null,
    loader: null,
    isUploading: null,
    uploadStack: null,
    loaderCssClass: 'fileLoader',

    initialize: function () {
        this.container = $('<div/>');
        this.form = $('<form/>').attr({ method: 'post', enctype: 'multipart/form-data' }).appendTo(this.container);
        this.uploadElement = $('<input/>').attr({ type: 'file', name: this.manager.config.dataFileName }).appendTo(this.form).change($.proxy(this.upload, this));
        this.loader = $('<div/>').addClass(this.loaderCssClass).appendTo(this.container);
        $('<p/>').html(Magelia.WebStore.File.Upload.Localizations.Title).prependTo(this.form);
        this.uploadStack = [];
        this.isUploading = false;
    },

    reset: function () {
        this.loader.hide();
        this.form.show().attr({ action: this.getFormAction() });
        this.form[0].reset();
    },

    getFormAction: function () {
        return this.manager.config.uploadServicePath + '?' + this.manager.config.pathQueryStringKey + '=' + this.manager.getCurrentPath();
    },

    upload: function () {
        if (this.uploadElement.val()) {
            var iFrameId = 'i_' + Math.random().toString().replace('.', '');
            var iframe = $('<iframe/>').attr({ id: iFrameId, name: iFrameId }).hide().appendTo(document.body).load($.proxy(function () { this.processResponse(iframe) }, this));
            this.showLoading();
            this.manager.fileUpload();
            this.form.attr({ target: iFrameId }).submit();
        }
    },

    showLoading: function () {
        this.loader.show();
        this.form.hide();
    },

    processResponse: function (iframe) {
        this.processUploadResponse(iframe.contents().text());
        this.reset();
        this.manager.fileUploaded();
        iframe.remove();
    },

    startDirectUpload: function (files) {
        for (var i = 0; i < files.length; i++) {
            this.uploadStack.push(files[i]);
        }
        if (!this.isUploading) {
            this.processDirectUpload();
        }
    },

    processDirectUpload: function () {
        try {
            this.manager.directUploadStarting();
            if (this.uploadStack.length > 0) {
                var data = new FormData();
                var xhr = new XMLHttpRequest();
                var fileToUpload = this.uploadStack[0];
                this.isUploading = true;
                this.showLoading();
                this.manager.directUploadStarted();
                this.uploadStack.splice(0, 1);
                data.append(this.manager.config.dataFileName, fileToUpload);
                xhr.onload = $.proxy(
                    function () {
                        this.processUploadResponse(xhr.responseText);
                        this.processDirectUpload();
                    },
                    this
                );
                xhr.onerror = $.proxy(
                    function () {
                        this.manager.showError(Magelia.WebStore.File.Upload.Localizations.UploadErrorMessage);
                        this.processDirectUpload();
                    },
                    this
                );
                xhr.open('post', this.manager.config.uploadServicePath + '?' + this.manager.config.pathQueryStringKey + '=' + this.manager.getCurrentPath(), true);
                xhr.send(data);
            }
            else {
                this.isUploading = false;
                this.manager.refreshContentList();
            }
        }
        catch (e) {
            this.manager.showError(Magelia.WebStore.File.Upload.Localizations.UploadErrorMessage);
            this.processDirectUpload();
        }
    },

    processUploadResponse: function (response) {
        response = response.toLowerCase();
        if (response != 'true') {
            switch (response) {
                case 'invalidparameter':
                    this.manager.showError(Magelia.WebStore.File.Upload.Localizations.InvalidParameterErrorMessage);
                    break;
                case 'elementalreadyexists':
                    this.manager.showError(Magelia.WebStore.File.Upload.Localizations.ElementAlreadyExistsErrorMessage);
                    break;
                case 'pathtoolong':
                    this.manager.showError(Magelia.WebStore.File.Upload.Localizations.PathTooLongErrorMessage);
                    break;
                case 'invalidpath':
                    this.manager.showError(Magelia.WebStore.File.Upload.Localizations.InvalidPathErrorMessage);
                    break;
                case 'unauthorized':
                    this.manager.showError(Magelia.WebStore.File.Upload.Localizations.UnauthorizedErrorMessage);
                    break;
                default:
                    this.manager.showError(Magelia.WebStore.File.Upload.Localizations.UploadErrorMessage);
                    break;
            }
        }
    }
};

Magelia.WebStore.File.ImageLoader = function () {
    this.initialize();
};

Magelia.WebStore.File.ImageLoader.prototype = {
    loadStack: null,
    running: null,

    initialize: function () {
        this.loadStack = [];
        this.running = false;
    },

    loadImage: function (url, callback, error) {
        this.loadStack.push({ url: url + (url.indexOf('?') == -1 ? '?' : '&') + '_=' + new Date().getTime(), callback: callback, error: error });
        if (!this.running) {
            this.startLoading();
        }
    },

    startLoading: function () {
        if (this.loadStack.length > 0) {
            this.running = true;
            var self = this;
            var load = this.loadStack[0];
            $('<img/>').appendTo(document.body).bind(
                {
                    load: function () {
                        self.loadStack.splice(0, 1);
                        self.startLoading();
                        if ($.isFunction(load.callback)) {
                            load.callback($(this).show().removeAttr('height').removeAttr('width').show());
                        }
                    },
                    error: function () {
                        self.loadStack.splice(0, 1);
                        self.startLoading();
                        $(this).remove();
                        if ($.isFunction(load.error)) {
                            load.error();
                        }
                    }
                }
            ).attr({ src: load.url }).hide();
        }
        else {
            this.running = false;
        }
    }
};

Magelia.WebStore.File.ImageLoader.StaticInstance = new Magelia.WebStore.File.ImageLoader();

Magelia.WebStore.File.ImagePicker = function (config) {
    this.config = $.extend({}, { container: null, paths: [] }, config);
    this.initialize();
    this.start();
};

Magelia.WebStore.File.ImagePicker.prototype = {
    list: null,
    config: null,
    imageLoader: null,
    imageErrorCssClass: 'error',
    imageLoadedCssClass: 'loaded',

    initialize: function () {
        this.list = $(this.config.list);
        this.imageLoader = Magelia.WebStore.File.ImageLoader.StaticInstance;
    },

    start: function () {
        if ($.isArray(this.config.paths)) {
            var self = this;
            $(this.config.paths).each(
                function (index) {
                    if (self.list.children().eq(index).hasClass('image')) {
                        var file = this;
                        var setError = function () { self.setError(index) };
                        var appendImage = function (image) { self.appendImage(image, index); };
                        if (file.thumb) {
                            self.imageLoader.loadImage(
                                file.thumb,
                                appendImage,
                                function () { self.imageLoader.loadImage(file.url, appendImage, setError); }
                            );
                        }
                        else if (file.url) {
                            self.imageLoader.loadImage(file.url, appendImage, setError);
                        }
                        else {
                            setError();
                        }
                    }
                }
            );
        }
    },

    appendImage: function (image, index) {
        var item = this.getItem(index).addClass(this.imageLoadedCssClass);
        var input = item.find('input');
        var imageContainer = input.length == 0 ? $('<div/>').prependTo(item) : $('<div/>').insertAfter(input);
        image.appendTo(imageContainer).css({ marginLeft: (imageContainer.width() - image.width()) / 2, marginTop: (imageContainer.height() - image.height()) / 2 });
    },

    setError: function (index) {
        this.getItem(index).addClass(this.imageErrorCssClass);
    },

    getItem: function (index) {
        return this.list.children().eq(index);
    }
}

jQuery.event.props.push('dataTransfer');