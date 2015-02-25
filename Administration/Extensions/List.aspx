<%@ Page Title="" Language="C#" MasterPageFile="~/App_Masters/DefaultLayout.Master" AutoEventWireup="true" CodeBehind="List.aspx.cs" Inherits="Magelia.WebStore.Admin.Administration.Extensions.List" %>

<%@ Import Namespace="System.Web.Script.Serialization" %>
<asp:Content ContentPlaceHolderID="cphHead" runat="server">
</asp:Content>
<asp:Content ContentPlaceHolderID="cphBarTitle" runat="server">
    <asp:Literal ID="litExtensions" runat="server" meta:resourcekey="litExtensions" />
</asp:Content>
<asp:Content ContentPlaceHolderID="cphBarContent" runat="server">
</asp:Content>
<asp:Content ContentPlaceHolderID="cphBody" runat="server">
    <mag:TabStrip ID="tsGlobal" runat="server" MultiViewID="mvGlobal">
        <TabItems>
            <mag:TabItem meta:resourceKey="tiExtensionList" />
            <mag:TabItem meta:resourceKey="tiExtensionAdd" />
            <mag:TabItem meta:resourceKey="tiExtensionGallery" />
        </TabItems>
    </mag:TabStrip>

    <asp:MultiView runat="server" ActiveViewIndex="0" ID="mvGlobal">
        <asp:View runat="server" ID="mvExtensionList">
            <asp:ListView runat="server" ID="lvExtensions" DataKeyNames="ExtensionId" OnItemCommand="lvExtensions_ItemCommand" OnItemDataBound="lvExtensions_ItemDataBound">
                <EmptyDataTemplate>
                    <div class="noInstalledExtensions">
                        <ul class="messages">
                            <li class="warning">
                                <asp:Label runat="server" meta:resourceKey="lblNoInstalledExtensions" />
                            </li>
                        </ul>
                    </div>
                </EmptyDataTemplate>
                <LayoutTemplate>
                    <div>
                        <ul class="extensions">
                            <asp:PlaceHolder runat="server" ID="itemPlaceholder" />
                        </ul>
                    </div>
                </LayoutTemplate>
                <ItemTemplate>
                    <li class="extensionDetail">
                        <asp:Image runat="server" ImageUrl='<%# ((ExtensionViewModel)Container.DataItem).IconUrl %>' AlternateText="<%#: ((ExtensionViewModel)Container.DataItem).Code %>" />
                        <div>
                            <div>
                                <asp:Label runat="server" CssClass="extensionCode" Text="<%#: ((ExtensionViewModel)Container.DataItem).Code %>" />
                                <asp:Label runat="server" meta:resourceKey="lblExtensionBy" />
                                <asp:HyperLink runat="server" CssClass="extensionPublisher" NavigateUrl="<%# ((ExtensionViewModel)Container.DataItem).PublisherUri %>" Text="<%# ((ExtensionViewModel)Container.DataItem).Publisher %>" Target="_blank" />
                            </div>

                            <div class="subHeader">
                                <span class="extensionVersion">
                                    <asp:Label runat="server" ID="lblVersion" Text="<%# ((ExtensionViewModel)Container.DataItem).CurrentVersion.Version%>" />
                                    <asp:Label runat="server" ID="lblNewVersion" Visible="false" meta:resourceKey="lblNewVersion" CssClass="newVersionAvailable" />
                                </span>
                                <ul class="actions">
                                    <li runat="server" visible="<%# ((ExtensionViewModel)Container.DataItem).HelpUri != null %>">
                                        <asp:HyperLink runat="server" NavigateUrl="<%# ((ExtensionViewModel)Container.DataItem).HelpUri %>" meta:resourceKey="hlHelp" Target="_blank" />
                                    </li>
                                    <li runat="server" visible="false" id="liActionDownload">
                                        <asp:LinkButton runat="server" ID="lbtnDownload" meta:resourceKey="lbtnDownload" CommandName="Download" CommandArgument='<%# new JavaScriptSerializer().Serialize(new { Code = ((ExtensionViewModel)Container.DataItem).Code, Version = ((ExtensionViewModel)Container.DataItem).CurrentVersion.VersionString })%>' ToolTip='<%# ((ExtensionViewModel)Container.DataItem).CurrentVersion.IsCompatible ? String.Empty : String.Format(this.GetLocalResourceObject("RuntimeIncompatibilityInstallTooltip") as String, ((ExtensionViewModel)Container.DataItem).CurrentVersion.CompatibilityInformation) %>' />
                                    </li>
                                    <li runat="server" visible="false" id="liActionActivate">
                                        <asp:LinkButton runat="server" ID="lbtnActivate" meta:resourceKey="lbtnActivate" CommandName="Activate" CommandArgument="<%# ((ExtensionViewModel)Container.DataItem).CurrentVersion.ExtensionVersionId %>" />
                                    </li>
                                    <li runat="server" visible="false" id="liActionDisable">
                                        <asp:LinkButton runat="server" ID="lbtnDisable" meta:resourceKey="lbtnDisable" CommandName="Disable" CommandArgument="<%# ((ExtensionViewModel)Container.DataItem).CurrentVersion.ExtensionVersionId %>" />
                                    </li>
                                    <li runat="server" visible="false" id="liActionUpgrade">
                                        <asp:LinkButton runat="server" ID="lbtnUpgrade" meta:resourceKey="lbtnUpgrade" CommandName="Upgrade" CommandArgument="<%# ((ExtensionViewModel)Container.DataItem).CurrentVersion.ExtensionVersionId %>" />
                                    </li>
                                    <li runat="server" visible="false" id="liActionDowngrade">
                                        <asp:LinkButton runat="server" ID="lbtnDowngrade" meta:resourceKey="lbtnDowngrade" CommandName="Downgrade" CommandArgument="<%# ((ExtensionViewModel)Container.DataItem).CurrentVersion.ExtensionVersionId %>" />
                                    </li>
                                    <li runat="server" visible="false" id="liActionUninstall">
                                        <asp:LinkButton runat="server" ID="lbtnUninstall" meta:resourceKey="lbtnUninstall" CommandName="Uninstall" CommandArgument="<%# ((ExtensionViewModel)Container.DataItem).CurrentVersion.ExtensionVersionId %>" />
                                    </li>
                                </ul>
                            </div>
                            <div class="extensionDescription">
                                <%# ((ExtensionViewModel)Container.DataItem).Description %>
                            </div>
                            <asp:PlaceHolder runat="server" Visible="<%# ((ExtensionViewModel)Container.DataItem).AdditionalVersions.Any() %>">

                                <a href="#" class="toggle">
                                    <asp:Label runat="server" meta:resourceKey="lblAdditionalVersions" />
                                    (<asp:Label class="link" runat="server" meta:resourceKey="lblAdditionalVersionsDisplay" />)
                                </a>

                                <div class="additionalVersion">
                                    <ul class="tabStrip">
                                        <asp:PlaceHolder runat="server" Visible="<%#((ExtensionViewModel)Container.DataItem).AdditionalVersions.Where(av => av.Status != Magelia.WebStore.Data.Entities.ExtensionState.Uninstalled).Any() %>">
                                            <li class="selected">
                                                <a href="#">
                                                    <asp:Label runat="server" meta:resourceKey="lblInstalledExtensionTabTitle" />
                                                </a>
                                            </li>
                                        </asp:PlaceHolder>
                                        <asp:PlaceHolder runat="server" Visible="<%#((ExtensionViewModel)Container.DataItem).AdditionalVersions.Where(av => av.Status == Magelia.WebStore.Data.Entities.ExtensionState.Uninstalled && av.IsCompatible).Any() %>">
                                            <li>
                                                <a href="#">
                                                    <asp:Label runat="server" meta:resourceKey="lblAvailableUpdateExtensionTabTitle" />
                                                </a>
                                            </li>
                                        </asp:PlaceHolder>
                                        <asp:PlaceHolder runat="server" Visible="<%#((ExtensionViewModel)Container.DataItem).AdditionalVersions.Where(av => av.Status == Magelia.WebStore.Data.Entities.ExtensionState.Uninstalled && !av.IsCompatible).Any() %>">
                                            <li>
                                                <a href="#">
                                                    <asp:Label runat="server" meta:resourceKey="lblAvailableUpdateUnverifiedExtensionTabTitle" />
                                                </a>
                                            </li>
                                        </asp:PlaceHolder>
                                    </ul>
                                    <div>
                                        <asp:Panel runat="server" Visible="<%#((ExtensionViewModel)Container.DataItem).AdditionalVersions.Where(av => av.Status != Magelia.WebStore.Data.Entities.ExtensionState.Uninstalled).Any() %>">
                                            <asp:LinkButton runat="server" ID="lbtnUninstallAll" meta:resourceKey="lbtnUninstallAll" CommandName="UninstallAll" CommandArgument="<%# ((ExtensionViewModel)Container.DataItem).ExtensionId %>" Visible="<%# ((ExtensionViewModel)Container.DataItem).AdditionalVersions.Where(v => v.Status != Magelia.WebStore.Data.Entities.ExtensionState.Uninstalled).Count() > 1 %>" />

                                            <asp:ListView runat="server" ID="lvAdditionalVersions" DataSource="<%# ((ExtensionViewModel)Container.DataItem).AdditionalVersions.Where(av => av.Status != Magelia.WebStore.Data.Entities.ExtensionState.Uninstalled) %>" OnItemDataBound="lvExtensions_ItemDataBound">
                                                <LayoutTemplate>
                                                    <ul class="additionalVersion">
                                                        <asp:PlaceHolder runat="server" ID="itemPlaceholder" />
                                                    </ul>
                                                </LayoutTemplate>
                                                <ItemTemplate>
                                                    <li>
                                                        <div class="subHeader">
                                                            <asp:Label runat="server" ID="lblVersion" CssClass="extensionVersion" Text="<%# ((ExtensionVersionViewModel)Container.DataItem).Version %>" />
                                                            <ul class="actions">
                                                                <li runat="server" visible="false" id="liActionDownload">
                                                                    <asp:LinkButton runat="server" ID="lbtnDownload" meta:resourceKey="lbtnDownload" CommandName="Download" CommandArgument='<%# new JavaScriptSerializer().Serialize(new { Code = ((ExtensionViewModel)(((IDataItemContainer)Container.NamingContainer.NamingContainer).DataItem)).Code, Version = ((ExtensionVersionViewModel)Container.DataItem).Version.ToString() })%>' ToolTip='<%# ((ExtensionVersionViewModel)Container.DataItem).IsCompatible ? String.Empty : String.Format(this.GetLocalResourceObject("RuntimeIncompatibilityInstallTooltip") as String, ((ExtensionVersionViewModel)Container.DataItem).CompatibilityInformation) %>' />
                                                                </li>
                                                                <li runat="server" visible="false" id="liActionActivate">
                                                                    <asp:LinkButton runat="server" ID="lbtnActivate" meta:resourceKey="lbtnActivate" CommandName="Activate" CommandArgument="<%# ((ExtensionVersionViewModel)Container.DataItem).ExtensionVersionId %>" />
                                                                </li>
                                                                <li runat="server" visible="false" id="liActionDisable">
                                                                    <asp:LinkButton runat="server" ID="lbtnDisable" meta:resourceKey="lbtnDisable" CommandName="Disable" CommandArgument="<%# ((ExtensionVersionViewModel)Container.DataItem).ExtensionVersionId %>" />
                                                                </li>
                                                                <li runat="server" visible="false" id="liActionUpgrade">
                                                                    <asp:LinkButton runat="server" ID="lbtnUpgrade" meta:resourceKey="lbtnUpgrade" CommandName="Upgrade" CommandArgument="<%# ((ExtensionVersionViewModel)Container.DataItem).ExtensionVersionId %>" />
                                                                </li>
                                                                <li runat="server" visible="false" id="liActionDowngrade">
                                                                    <asp:LinkButton runat="server" ID="lbtnDowngrade" meta:resourceKey="lbtnDowngrade" CommandName="Downgrade" CommandArgument="<%# ((ExtensionVersionViewModel)Container.DataItem).ExtensionVersionId %>" />
                                                                </li>
                                                                <li runat="server" visible="false" id="liActionUninstall">
                                                                    <asp:LinkButton runat="server" ID="lbtnUninstall" meta:resourceKey="lbtnUninstall" CommandName="Uninstall" CommandArgument="<%# ((ExtensionVersionViewModel)Container.DataItem).ExtensionVersionId %>" />
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </li>
                                                </ItemTemplate>
                                            </asp:ListView>
                                        </asp:Panel>
                                        <asp:Panel runat="server" Visible="<%#((ExtensionViewModel)Container.DataItem).AdditionalVersions.Where(av => av.Status == Magelia.WebStore.Data.Entities.ExtensionState.Uninstalled && av.IsCompatible).Any() %>">
                                            <asp:ListView runat="server" ID="lvGalleryAdditionalVersions" DataSource="<%# ((ExtensionViewModel)Container.DataItem).AdditionalVersions.Where(av => av.Status == Magelia.WebStore.Data.Entities.ExtensionState.Uninstalled && av.IsCompatible) %>" OnItemDataBound="lvExtensions_ItemDataBound">
                                                <LayoutTemplate>
                                                    <ul class="additionalVersion">
                                                        <asp:PlaceHolder runat="server" ID="itemPlaceholder" />
                                                    </ul>
                                                </LayoutTemplate>
                                                <ItemTemplate>
                                                    <li>
                                                        <div class="subHeader">
                                                            <asp:Label runat="server" ID="lblVersion" CssClass="extensionVersion" Text="<%# ((ExtensionVersionViewModel)Container.DataItem).Version %>" />
                                                            <ul class="actions">
                                                                <li runat="server" visible="false" id="liActionDownload">
                                                                    <asp:LinkButton runat="server" ID="lbtnDownload" meta:resourceKey="lbtnDownload" CommandName="Download" CommandArgument='<%# new JavaScriptSerializer().Serialize(new { Code = ((ExtensionViewModel)(((IDataItemContainer)Container.NamingContainer.NamingContainer).DataItem)).Code, Version = ((ExtensionVersionViewModel)Container.DataItem).Version.ToString() })%>' />
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </li>
                                                </ItemTemplate>
                                            </asp:ListView>
                                        </asp:Panel>
                                        <asp:Panel runat="server" Visible="<%#((ExtensionViewModel)Container.DataItem).AdditionalVersions.Where(av => av.Status == Magelia.WebStore.Data.Entities.ExtensionState.Uninstalled && !av.IsCompatible).Any() %>">
                                            <ul class="messages">
                                                <li class="warning">
                                                    <asp:Label runat="server" meta:resourceKey="lblAvailableUpdateUnverifiedExtensionWarning" />
                                                </li>
                                            </ul>

                                            <asp:ListView runat="server" ID="lvGalleryAdditionalUnverifiedVersions" DataSource="<%# ((ExtensionViewModel)Container.DataItem).AdditionalVersions.Where(av => av.Status == Magelia.WebStore.Data.Entities.ExtensionState.Uninstalled && !av.IsCompatible) %>" OnItemDataBound="lvExtensions_ItemDataBound">
                                                <LayoutTemplate>
                                                    <ul class="additionalVersion">
                                                        <asp:PlaceHolder runat="server" ID="itemPlaceholder" />
                                                    </ul>
                                                </LayoutTemplate>
                                                <ItemTemplate>
                                                    <li>
                                                        <div class="subHeader">
                                                            <asp:Label runat="server" ID="lblVersion" CssClass="extensionVersion" Text="<%# ((ExtensionVersionViewModel)Container.DataItem).Version %>" />
                                                            <ul class="actions">
                                                                <li runat="server" visible="false" id="liActionDownload">
                                                                    <asp:Label runat="server" CssClass="tooltip" ToolTip='<%# String.Format(this.GetLocalResourceObject("RuntimeIncompatibilityInstallTooltip") as String, ((ExtensionVersionViewModel)Container.DataItem).CompatibilityInformation) %>' />
                                                                    <asp:LinkButton runat="server" ID="lbtnDownload" meta:resourceKey="lbtnDownload" CommandName="Download" CommandArgument='<%# new JavaScriptSerializer().Serialize(new { Code = ((ExtensionViewModel)(((IDataItemContainer)Container.NamingContainer.NamingContainer).DataItem)).Code, Version = ((ExtensionVersionViewModel)Container.DataItem).Version.ToString() })%>' />
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </li>
                                                </ItemTemplate>
                                            </asp:ListView>
                                        </asp:Panel>
                                    </div>
                                </div>
                            </asp:PlaceHolder>
                        </div>
                        <div class="spacer"></div>
                    </li>
                </ItemTemplate>
            </asp:ListView>
        </asp:View>
        <asp:View runat="server" ID="mvExtensionAdd">
            <div>
                <asp:ValidationSummary runat="server" ValidationGroup="vgUploadExtension" meta:resourcekey="magValidationSummary" />
                <fieldset>
                    <legend>
                        <asp:Literal ID="litUpload" runat="server" meta:resourceKey="litUpload" />
                    </legend>
                    <div class="field inline">
                        <asp:Label runat="server" AssociatedControlID="fuNewExtension" ID="lblNewExtension" meta:resourceKey="lblNewExtension" />
                        <asp:FileUpload runat="server" ID="fuNewExtension" />
                        <asp:RequiredFieldValidator ID="rfvNewExtension" runat="server" ControlToValidate="fuNewExtension" ValidationGroup="vgUploadExtension" meta:resourcekey="rfvNewExtension" />
                        <asp:CustomValidator ValidationGroup="vgUploadExtension" ID="cvFile" runat="server" OnServerValidate="cvFile_ServerValidate" meta:resourcekey="cvFile" />
                    </div>
                    <div class="buttons">
                        <ul>
                            <li>
                                <asp:LinkButton runat="server" ID="btnUpload" meta:resourcekey="btnUpload" OnClick="btnUpload_Click" ValidationGroup="vgUploadExtension" SkinID="Major" />
                            </li>
                        </ul>
                    </div>
                </fieldset>
            </div>
        </asp:View>
        <asp:View runat="server" ID="mvExtensionGallery">
            <div>
                <fieldset>
                    <legend>
                        <asp:Literal ID="litExtensionsGallery" runat="server" meta:resourceKey="litExtensionsGallery" />
                    </legend>
                    <p>
                        <asp:Literal runat="server" meta:resourceKey="litExtensionsGalleryInfo" />
                        <asp:HyperLink ID="hlExtensionsGallery" runat="server" Target="_blank" meta:resourceKey="hlExtensionsGallery" />
                    </p>
                    <iframe id="ifrExtensionsGallery" runat="server" style="width: 100%; height: 1000px; margin-top: 10px;" frameborder="0" />
                </fieldset>
            </div>
        </asp:View>
    </asp:MultiView>

    <asp:Panel ID="pnlExtensionAddChooseVersion" runat="server" CssClass="popin" Visible="false">
        <header>
            <h4>
                <asp:Literal runat="server" meta:resourcekey="litExtensionAddConfirmHeader" />
            </h4>
        </header>
        <div class="extensionPopin">
            <div>
                <asp:ListView runat="server" ID="lvExtensionAddAdditionalVersions" OnItemCommand="lvExtensionAddAdditionalVersions_ItemCommand">
                    <LayoutTemplate>
                        <ul class="extensions">
                            <asp:PlaceHolder runat="server" ID="itemPlaceholder" />
                        </ul>
                    </LayoutTemplate>
                    <ItemTemplate>
                        <li class="extensionDetail">
                            <asp:Image runat="server" ImageUrl='<%# ((ExtensionViewModel)Container.DataItem).IconUrl  %>' AlternateText="<%#: ((ExtensionViewModel)Container.DataItem).Code %>" />
                            <div>
                                <div>
                                    <asp:Label runat="server" CssClass="extensionCode" Text="<%#: ((ExtensionViewModel)Container.DataItem).Code %>" />
                                    <asp:Label runat="server" meta:resourceKey="lblExtensionBy" />
                                    <asp:HyperLink runat="server" CssClass="extensionPublisher" NavigateUrl="<%# ((ExtensionViewModel)Container.DataItem).PublisherUri %>" Text="<%# ((ExtensionViewModel)Container.DataItem).Publisher %>" Target="_blank" />
                                </div>

                                <div class="subHeader">
                                    <span class="extensionVersion">
                                        <asp:Label runat="server" Text="<%# ((ExtensionViewModel)Container.DataItem).CurrentVersion.Version%>" />
                                    </span>
                                    <ul class="actions">
                                        <li runat="server" visible="<%# ((ExtensionViewModel)Container.DataItem).HelpUri != null %>">
                                            <asp:HyperLink runat="server" NavigateUrl="<%# ((ExtensionViewModel)Container.DataItem).HelpUri %>" meta:resourceKey="hlHelp" Target="_blank" />
                                        </li>
                                        <li runat="server" id="liActionDownload">
                                            <asp:LinkButton runat="server" ID="lbtnDownload" meta:resourceKey="lbtnDownload" CommandName="Download" CommandArgument="<%# ((ExtensionViewModel)Container.DataItem).CurrentVersion.Version %>" ToolTip='<%# ((ExtensionViewModel)Container.DataItem).CurrentVersion.IsCompatible ? String.Empty : String.Format(this.GetLocalResourceObject("RuntimeIncompatibilityInstallTooltip") as String, ((ExtensionViewModel)Container.DataItem).CurrentVersion.CompatibilityInformation) %>' />
                                        </li>
                                    </ul>
                                </div>
                                <div class="extensionDescription">
                                    <%# ((ExtensionViewModel)Container.DataItem).Description %>
                                </div>
                                <asp:PlaceHolder runat="server" Visible="<%# ((ExtensionViewModel)Container.DataItem).AdditionalVersions.Any() %>">

                                    <a href="#" class="toggle">
                                        <asp:Label runat="server" meta:resourceKey="lblAdditionalVersions" />
                                        (<asp:Label class="link" runat="server" meta:resourceKey="lblAdditionalVersionsDisplay" />)
                                    </a>
                                    <div class="additionalVersion">
                                        <ul class="tabStrip">
                                            <li class="selected">
                                                <a href="#">
                                                    <asp:Label runat="server" meta:resourceKey="lblVerifiedExtensions" />
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <asp:Label runat="server" meta:resourceKey="lblUnverifiedExtensions" />
                                                </a>
                                            </li>
                                        </ul>
                                        <div>
                                            <div>
                                                <asp:ListView runat="server" ID="lvAdditionalVersions" DataSource="<%# ((ExtensionViewModel)Container.DataItem).AdditionalVersions.OfType<ExtensionVersionViewModel>().Where(ev => ev.IsCompatible) %>">
                                                    <LayoutTemplate>
                                                        <ul class="additionalVersion">
                                                            <asp:PlaceHolder runat="server" ID="itemPlaceholder" />
                                                        </ul>
                                                    </LayoutTemplate>
                                                    <ItemTemplate>
                                                        <li>
                                                            <div class="subHeader">
                                                                <asp:Label runat="server" ID="lblVersion" CssClass="extensionVersion" Text="<%# ((ExtensionVersionViewModel)Container.DataItem).Version %>" />
                                                                <ul class="actions">
                                                                    <li>
                                                                        <asp:LinkButton runat="server" ID="lbtnDownload" meta:resourceKey="lbtnDownload" CommandName="Download" CommandArgument="<%# ((ExtensionVersionViewModel)Container.DataItem).Version %>" />
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </li>
                                                    </ItemTemplate>
                                                </asp:ListView>
                                            </div>
                                            <div style="display: none">
                                                <ul class="messages">
                                                    <li class="warning">
                                                        <asp:Label runat="server" meta:resourceKey="lblUnverifiedVersionsWarning" />
                                                    </li>
                                                </ul>
                                                <asp:ListView runat="server" DataSource="<%# ((ExtensionViewModel)Container.DataItem).AdditionalVersions.OfType<ExtensionVersionViewModel>().Where(ev => !ev.IsCompatible) %>">
                                                    <LayoutTemplate>
                                                        <ul class="additionalVersion">
                                                            <asp:PlaceHolder runat="server" ID="itemPlaceholder" />
                                                        </ul>
                                                    </LayoutTemplate>
                                                    <ItemTemplate>
                                                        <li>
                                                            <div class="subHeader">
                                                                <asp:Label runat="server" ID="lblVersion" CssClass="extensionVersion" Text="<%# ((ExtensionVersionViewModel)Container.DataItem).Version %>" />
                                                                <ul class="actions">
                                                                    <li>
                                                                        <asp:Label runat="server" CssClass="tooltip" ToolTip='<%# String.Format(this.GetLocalResourceObject("RuntimeIncompatibilityInstallTooltip") as String, ((ExtensionVersionViewModel)Container.DataItem).CompatibilityInformation) %>' />
                                                                        <asp:LinkButton runat="server" ID="lbtnDownload" meta:resourceKey="lbtnDownload" CommandName="Download" CommandArgument="<%# ((ExtensionVersionViewModel)Container.DataItem).Version %>" />
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </li>
                                                    </ItemTemplate>
                                                    <EmptyItemTemplate>
                                                        <ul class="messages">
                                                            <li class="information">
                                                                <asp:Label runat="server" meta:resourceKey="lblNoUnverifiedExtensionsVersionInformation" />
                                                            </li>
                                                        </ul>
                                                    </EmptyItemTemplate>
                                                </asp:ListView>
                                            </div>
                                        </div>
                                    </div>
                                </asp:PlaceHolder>
                                <div class="spacer"></div>
                            </div>
                        </li>
                    </ItemTemplate>
                </asp:ListView>
            </div>
        </div>
        <div class="buttons">
            <ul>
                <li>
                    <asp:LinkButton runat="server" OnClick="lbtnExtensionAddCancel_Click" SkinID="Minor" Text='<%$ resources:global, Cancel %>' />
                </li>
            </ul>
        </div>
    </asp:Panel>
    <asp:Panel ID="pnlExtensionAddConfirm" runat="server" CssClass="popin extensionAdd" Visible="false">
        <header>
            <h4>
                <asp:Literal runat="server" meta:resourcekey="litExtensionAddConfirmHeader" />
            </h4>
        </header>
        <div class="extensionDetail extensionPopin">
            <asp:PlaceHolder runat="server" ID="phExtensionPopinWarning" Visible="false">
                <ul class="messages">
                    <li class="warning">
                        <asp:Label runat="server" ID="lblExtensionPopinWarning" meta:resourceKey="lblExtensionPopinWarning" />
                    </li>
                </ul>
            </asp:PlaceHolder>
            <asp:Image runat="server" ID="imgExtensionAddIcon" />
            <div>
                <div>
                    <asp:Label runat="server" CssClass="extensionCode" ID="lblExtensionAddCode" />
                    <asp:Label runat="server" meta:resourceKey="lblExtensionBy" />
                    <asp:HyperLink runat="server" CssClass="extensionPublisher" ID="hlExtensionAddPublisher" Target="_blank" />
                </div>
                <div class="subHeader">
                    <asp:Label runat="server" CssClass="extensionVersion" ID="lblExtensionAddVersion" />
                    <ul class="actions">
                        <li>
                            <asp:HyperLink runat="server" ID="hlExtensionAddHelp" meta:resourceKey="hlHelp" Target="_blank" />
                        </li>
                    </ul>
                </div>
                <div class="extensionDescription">
                    <asp:Literal runat="server" ID="litExtensionAddDescription" />
                </div>
            </div>
        </div>
        <div class="buttons">
            <ul>
                <li>
                    <asp:LinkButton ID="lbtnExtensionAddCancel" runat="server" OnClick="lbtnExtensionAddCancel_Click" SkinID="Minor" Text='<%$ resources:global, Cancel %>' />
                </li>
                <li>
                    <asp:LinkButton ID="lbtnExtensionAddInstall" runat="server" OnClick="lbtnExtensionAddInstall_Click" SkinID="Major" meta:resourceKey="lbtnExtensionAddInstall" />
                </li>
                <li>
                    <asp:LinkButton ID="lbtnExtensionAddInstallAndActivate" runat="server" OnClick="lbtnExtensionAddInstallAndActivate_Click" SkinID="Major" />
                </li>
            </ul>
        </div>
    </asp:Panel>


    <script type="text/javascript">
        $(function(){
            
            $('.additionalVersion .tabStrip').tabStrip();

            var doReadMore = function(){
                $('.extensionDescription').readmore({
                    maxHeight: 60,
                    moreLink: '<a href="#"><asp:label meta:resourceKey="lblReadMore" runat="server"></asp:label></a>',
                    lessLink: ''
                });
            }
            doReadMore(); 
            $('ul.extensions a.toggle').click(function (e) {
                e.preventDefault(); 
                var displayText = <%=new JavaScriptSerializer().Serialize((String) this.GetLocalResourceObject("lblAdditionalVersionsDisplay.Text"))%>;
                var hideText = <%=new JavaScriptSerializer().Serialize((String) this.GetLocalResourceObject("lblAdditionalVersionsHide.Text"))%>;
                var self = $(this); 

                $(this).parent().find('>div.additionalVersion').slideToggle({
                    done : function(){
                        var text = ''; 
                        if($(this).is(':visible')){
                            self.next('a').show(); 
                            text = hideText;
                            doReadMore();
                        } else {
                            text = displayText;
                            self.next('a').hide(); 
                        }
                        self.find('.link').text(text); 
                    }
                });
                doReadMore(); 
            });
        }); 
    </script>
</asp:Content>
