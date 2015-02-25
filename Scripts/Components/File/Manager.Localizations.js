$.extend(
    Magelia.WebStore.File.Manager,
    {
        Localizations: {
            DefaultErrorMessage: 'An unexpected error has occured, please try again',
            UploadErrorMessage: 'Please select folder in file directory in order to upload files'
        }
    }
);

$.extend(
    Magelia.WebStore.File.ServiceProxy,
    {
        Localizations: {
            ServiceDefaultErrorMessage: 'An unexpected error has occured during request, please try again',
            UnexpectedErrorMessage: 'An unexpected error has occured, please try again',
            InvalidParameterErrorMessage: 'Invalid parameter, please check submitted data',
            ContainerNotFoundErrorMessage: 'Folder not found, please try to refresh view',
            PathTooLongErrorMessage: 'Path too long for configured file provider',
            UnauthorizedErrorMessage: 'Insufficient rights to perfom the action',
            ReadOnlyPathErrorMessage: 'Path is read only or unreachable, please verify account rights',
            InvalidPathErrorMessage: 'Specified path is invalid, please try to refresh view',
            ContainerAlreadyExistsErrorMessage: 'Folder already exists',
            ElementAlreayExistsErrorMessage: 'File already exists',
            ElementNotFoundErrorMessage: 'File not found, please try to refresh view',
            UndeletableErrorMessage: 'File is not deletable'
        }
    }
);

$.extend(
    Magelia.WebStore.File.ContainerExplorer,
    {
        Localizations: {
            RootContainerItemName: 'root',
            Title: 'File directory',
            DeleteConfirmationMessage: 'Are your sure you want to delete this folder ?'
        }
    }
);

$.extend(
    Magelia.WebStore.File.OptionsMenu,
    {
        Localizations: {
            GoUpMenuItemLabel: 'Up',
            RefreshMenuItemLabel: 'Refresh',
            UploadMenuItemLabel: 'Upload',
            DownloadMenuItemLabel: 'Download',
            NewContainerMenuItemLabel: 'New folder',
            PathPrefix: 'Path : '
        }
    }
);

$.extend(
    Magelia.WebStore.File.ContainerItem,
    {
        Localizations: {
            RefreshContextMenuItemText: 'Refresh',
            RenameContextMenuItemText: 'Rename',
            DeleteContextMenuItemText: 'Delete',
            NewContainerMenuItemText: 'New folder',
            DownloadMenuItemText: 'Download'
        }
    }
);

$.extend(
    Magelia.WebStore.File.SelectionItem,
    {
        Localizations: {
            RemoveContextMenuItemText: 'Remove'
        }
    }
);

$.extend(
    Magelia.WebStore.File.Selection,
    {
        Localizations: {
            Title: 'Your selection',
            DragInstructionText: 'Drag files here to perform selection'
        }
    }
);

$.extend(
    Magelia.WebStore.File.ContentList,
    {
        Localizations: {
            NewContainerContextMenuItemText: 'New folder',
            UploadContextMenuItemText: 'Upload',
            SelectPathErrorMessage: 'Please select path in file directory to add folder',
            DownloadSelectionErrorMessage : 'Please select folders and files that you want to download'
        }
    }
);

$.extend(
    Magelia.WebStore.File.ContentItem,
    {
        Localizations: {
            RenameContextMenuItemText: 'Rename',
            DeleteContextMenuItemText: 'Delete',
            ViewContextMenuItemText: 'View',
            DownloadContextMenuItemText: 'Download',
            DeleteConfirmationMessage: 'Are you sure you want to delete this element(s) ?'
        }
    }
);

$.extend(
    Magelia.WebStore.File.MetadataEditor,
    {
        Localizations: {
            Title: 'File metadata',
            InstructionText: 'Select file to edit its metadata',
            LocalizationsLegend: 'Localizations',
            PropertiesLegend: 'Properties',
            CultureLabel: 'Culture :',
            NameLabel: 'Name :',
            AlternateTextLabel: 'Alternate text :',
            TitleLabel: 'Title :',
            TagLabel: 'Tags ( separator : \';\') :',
            DescriptionLabel: 'Description :',
            SaveButtonText: 'Save',
            DeleteButtonText: 'Delete',
            PropertiesSavedMessage: 'Properties succesfuly saved',
            PropertiesUpdateErrorMessage: 'An unexpected error has occured while properties saving, please try again',
            DeleteLocalizationErrorMessage: 'An unexpected error has occured while deleting localization, please try again',
            CultureRequiredErrorMessage: 'Culture is required',
            NameRequiredErrorMessage: 'Name is required',
            NameMaxLengthErrorMessage: 'Invalid name length, {0} characters maximum',
            TitleMaxLengthErrorMessage: 'Invalid title length, {0} characters maximum',
            LocalizationSavedMessage: 'Localization succesfuly saved',
            UpdateLocalizationErrorMessage: 'An error has occured while localization saving, please try again'
        }
    }
);

$.extend(
    Magelia.WebStore.File.Upload,
    {
        Localizations: {
            Title: 'Upload file',
            UploadErrorMessage: 'An unexpected error has occured while uploading file',
            InvalidParameterErrorMessage: 'Invalid parameter, please check submitted data',
            ElementAlreadyExistsErrorMessage: 'File already exists',
            PathTooLongErrorMessage: 'Path too long for configured file provider',
            InvalidPathErrorMessage: 'Specified path is invalid, please try to refresh view',
            UnauthorizedErrorMessage: 'Insufficient rights to upload file'
        }
    }
);
