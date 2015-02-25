<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="FileManager.ascx.cs" Inherits="Magelia.WebStore.Admin.App_UserControls.Generics.FileManager" %>
<%@ Register TagPrefix="mag" TagName="Unauthorized" Src="~/App_UserControls/Generics/Unauthorized.ascx" %>
<asp:MultiView ID="mvFileManager" runat="server">
    <asp:View ID="vConfigured" runat="server">
        <div id="bFileManager" runat="server">
        </div>
        <asp:LinkButton ID="lbtnAddToSelection" runat="server" meta:resourcekey="lbtnAddToSelection" OnClick="lbtnAddToSelection_Click" />
        <asp:HiddenField ID="hfSelection" runat="server" />
        <asp:HiddenField ID="hfState" runat="server" />
        <script type="text/javascript">
            Sys.Application.add_load(
                function () {
                    var container = $('#<%= this.bFileManager.ClientID %>');
                    if(!container.data('initialized')){
                        new Magelia.WebStore.File.Manager(
                            {
                                container: container,
                                statePersistor: '#<%= this.hfState.ClientID %>',
                                selectionPersistor: '#<%= this.hfSelection.ClientID %>',
                                fileType : <%= (Int32)this.AllowedFileType %>,
                                selection : <%= (Int32)this.AllowedSelection %>,
                                pathSeparator : '<%= Magelia.WebStore.Runtime.WorkerComponents.FileWorkerComponentBase.PathSeparator %>',
                                sellerCultures : $.parseJSON('<%= this.AvailableCultures %>'),
                                uploadServicePath : '<%= VirtualPathUtility.ToAbsolute("~/Content/Files/Upload.ashx") %>',
                                downloadServicePath : '<%= VirtualPathUtility.ToAbsolute("~/Content/Files/Download.ashx") %>',
                                dataFileName : '<%= Magelia.WebStore.Admin.Content.Files.Upload.dataFileName %>',
                                pathQueryStringKey : '<%= Magelia.WebStore.Admin.Content.Files.Upload.pathQueryStringKey %>',
                                selectionButton: '#<%= this.lbtnAddToSelection.ClientID %>',
                                canEdit : <%: this.CanEdit.ToString().ToLowerInvariant() %>,
                                canCreateAndDelete : <%: this.CanCreateAndDelete.ToString().ToLowerInvariant() %>,
                                canViewLocalizations : <%: this.CanViewLocalizations.ToString().ToLowerInvariant() %>,
                                canEditLocalizations : <%: this.CanEditLocalizations.ToString().ToLowerInvariant() %>,
                                canCreateAndDeleteLocalizations : <%: this.CanCreateAndDeleteLocalizations.ToString().ToLowerInvariant() %>
                            }
                        );
                        container.data('initialized', true);
                    }
                }
            );
        </script>
    </asp:View>
    <asp:View ID="vUnconfigured" runat="server">
        <p class="fileManagerError">
            <asp:Literal ID="litConfigurationMessage" runat="server" meta:resourcekey="litConfigurationMessage" />
        </p>
    </asp:View>
    <asp:View ID="vUnauthorized" runat="server">
        <mag:Unauthorized runat="server" />
    </asp:View>
</asp:MultiView>
