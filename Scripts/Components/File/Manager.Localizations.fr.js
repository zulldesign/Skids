$.extend(
    Magelia.WebStore.File.Manager,
    {
        Localizations: {
            DefaultErrorMessage: 'Une erreur inatendue s\'est produit, essayez encore',
            UploadErrorMessage: 'Selectionnez un dossier dans l\'arborescence pour y télécharger un fichier'
        }
    }
);

$.extend(
    Magelia.WebStore.File.ServiceProxy,
    {
        Localizations: {
            ServiceDefaultErrorMessage: 'Une erreur s\'est produite pendant l\'appel au service, essayez encore',
            UnexpectedErrorMessage: 'Une erreur inatendue s\'est produit, essayez encore',
            InvalidParameterErrorMessage: 'Paramètre d\'entrée invalide, vérifier les données spécifiées',
            ContainerNotFoundErrorMessage: 'Dossier non trouvé, rafraichissez la vue courante et ressayez',
            PathTooLongErrorMessage: 'Chemin trop long pour le gestionnaire de fichiers configuré',
            UnauthorizedErrorMessage: "Droits insuffisants pour effectuer l'action",
            ReadOnlyPathErrorMessage: 'Chemin en lecture seul ou inatteignable, vérifiez vos droits',
            InvalidPathErrorMessage: 'Le chemin est invalide, rafraichissez la vue courante et ressayez',
            ContainerAlreadyExistsErrorMessage: 'Dossier déjà existant',
            ElementAlreayExistsErrorMessage: 'Fichier déjà existant',
            ElementNotFoundErrorMessage: 'Fichier non trouvé, rafraichissez la vue courante et ressayez',
            UndeletableErrorMessage: 'Fichier non supprimable'
        }
    }
);

$.extend(
    Magelia.WebStore.File.ContainerExplorer,
    {
        Localizations: {
            RootContainerItemName: 'root',
            Title: 'Arborescence',
            DeleteConfirmationMessage: 'Etes vous sur de vouloir supprimer les éléments sélectionnés ?'
        }
    }
);

$.extend(
    Magelia.WebStore.File.OptionsMenu,
    {
        Localizations: {
            GoUpMenuItemLabel: 'Remonter',
            RefreshMenuItemLabel: 'Rafraichir',
            UploadMenuItemLabel: 'Envoyer',
            DownloadMenuItemLabel: 'Télécharger',
            NewContainerMenuItemLabel: 'Nouveau dossier',
            PathPrefix: 'Chemin : '
        }
    }
);

$.extend(
    Magelia.WebStore.File.ContainerItem,
    {
        Localizations: {
            RefreshContextMenuItemText: 'Rafraichir',
            RenameContextMenuItemText: 'Renommer',
            DeleteContextMenuItemText: 'Supprimer',
            NewContainerMenuItemText: 'Nouveau dossier',
            DownloadMenuItemText: 'Télécharger'
        }
    }
);

$.extend(
    Magelia.WebStore.File.SelectionItem,
    {
        Localizations: {
            RemoveContextMenuItemText: 'Supprimer'
        }
    }
);

$.extend(
    Magelia.WebStore.File.Selection,
    {
        Localizations: {
            Title: 'Votre sélection',
            DragInstructionText: 'Glisser des fichiers ici pour les ajouter à votre sélection'
        }
    }
);

$.extend(
    Magelia.WebStore.File.ContentList,
    {
        Localizations: {
            NewContainerContextMenuItemText: 'Nouveau dossier',
            UploadContextMenuItemText: 'Télécharger',
            SelectPathErrorMessage: 'Sélectionnez un dossier dans l\'arborescence pour y ajouter un nouveau dossier',
            DownloadSelectionErrorMessage: 'Veuillez sélectionner les dossiers et le fichiers que vous souhaitez télécharger'
        }
    }
);

$.extend(
    Magelia.WebStore.File.ContentItem,
    {
        Localizations: {
            RenameContextMenuItemText: 'Renommer',
            DeleteContextMenuItemText: 'Supprimer',
            ViewContextMenuItemText: 'Voir',
            DownloadContextMenuItemText: 'Télécharger',
            DeleteConfirmationMessage: 'Etes vous sur de vouloir supprimer les éléments sélectionnés ?'
        }
    }
);

$.extend(
    Magelia.WebStore.File.MetadataEditor,
    {
        Localizations: {
            Title: 'Métadonnées ',
            InstructionText: 'Sélectionnez un fichier pour éditer ses métadonnées',
            LocalizationsLegend: 'Localisations',
            PropertiesLegend: 'Propriétés',
            CultureLabel: 'Culture :',
            NameLabel: 'Nom :',
            AlternateTextLabel: 'Text de substitution :',
            TitleLabel: 'Titre :',
            TagLabel: "Tags ( séparateur : ';') :",
            DescriptionLabel: 'Description :',
            SaveButtonText: 'Sauvegarder',
            DeleteButtonText: 'Supprimer',
            PropertiesSavedMessage: 'Sauvegarde des propriétés effectuée avec succès',
            PropertiesUpdateErrorMessage: 'Une erreur inatendue s\'est produite pendant la sauvegarde des propriétés, essayez encore',
            DeleteLocalizationErrorMessage: 'Une erreur inatendue s\'est produit pendant la suppression de la localisation, essayez encore',
            CultureRequiredErrorMessage: 'Culture obligatoire',
            NameRequiredErrorMessage: 'Nom obligatoire',
            NameMaxLengthErrorMessage: 'Longueur du nom invalide, {0} caractères maximum',
            TitleMaxLengthErrorMessage: 'Longueur du titre invalide, {0} caractères maximum',
            LocalizationSavedMessage: 'Localisation sauvegardée avec succès',
            UpdateLocalizationErrorMessage: 'Une erreur inatendue s\'est produite pendant la sauvegarde de la localisation, essayez encore'
        }
    }
);

$.extend(
    Magelia.WebStore.File.Upload,
    {
        Localizations: {
            Title: 'Téléchargement',
            UploadErrorMessage: 'Une erreur inatendue s\'est produite pendant le téléchargement du fichier',
            InvalidParameterErrorMessage: 'Paramétre d\'entrée invalide, vérifier les données spécifiées',
            ElementAlreadyExistsErrorMessage: 'Fichier déjà existant',
            PathTooLongErrorMessage: 'Chemin trop long pour le gestionnaire de fichier configuré',
            InvalidPathErrorMessage: 'Le chemin est invalide, rafraichissez la vue courante et ressayez',
            UnauthorizedErrorMessage: 'Droits insuffisants pour effectuer le téléchargement'
        }
    }
);
