<%@ Page Title="" Language="C#" MasterPageFile="~/App_Masters/DefaultLayout.Master"
    AutoEventWireup="true" CodeBehind="List.aspx.cs" Inherits="Magelia.WebStore.Admin.Administration.StoreConfigurations.List" %>

<%@ Import Namespace="Magelia.WebStore.Admin.Administration.StoreConfigurations" %>
<asp:Content ContentPlaceHolderID="cphBarTitle" runat="server">
    <asp:Literal runat="server" meta:resourcekey="litStoreConfigurations" />
</asp:Content>
<asp:Content ContentPlaceHolderID="cphBarContent" runat="server">
    <mag:FeaturePanel runat="server" Tag="Ul" Level="CreateAndDelete">
        <li>
            <asp:HyperLink NavigateUrl="~/Administration/StoreConfigurations/Edit.aspx" runat="server"
                SkinID="Major" Text="<%$ resources:global, AddNew %>" />
        </li>
    </mag:FeaturePanel>
</asp:Content>
<asp:Content ContentPlaceHolderID="cphBody" runat="server">
    <mag:Gridview runat="server" ID="mgvStoreConfigurations" DataKeyNames="StoreConfigurationId"
        OnCommand="mgvStoreConfigurations_Command" ShowSelectionColumn="true">
        <CommandButtons>
            <mag:CommandButton Text="<%$ Resources: Global, Delete %>" CommandName="DeleteStoreConfiguration"
                OnClientClick='<%$ resources:global, ClientClickConfirmDeletion %>' />
        </CommandButtons>
        <Columns>
            <mag:GridViewColumn AllowSorting="true" SortExpression="Code" meta:resourcekey="mgvcCode">
                <celltemplate>
                        <asp:Literal runat="server" Text='<%# ((StoreConfigurationViewModel)Container.DataItem).Code %>' />
                    </celltemplate>
            </mag:GridViewColumn>
            <mag:GridViewColumn AllowSorting="true" SortExpression="Description" meta:resourcekey="mgvcDescription">
                <celltemplate>
                        <asp:Literal  runat="server" Text='<%# ((StoreConfigurationViewModel)Container.DataItem).Description %>' />
                    </celltemplate>
            </mag:GridViewColumn>
            <mag:GridViewColumn Name="<%$ Resources: Global, Action %>">
                <celltemplate>
                    <ul>
                        <li>
                            <asp:ImageButton runat="server" SkinID="Edit" ToolTip='<%$ resources:global,Edit %>' CommandName="EditStoreConfiguration"/>
                        </li>
                        <mag:FeaturePanel runat="server" Tag="Li" Level="CreateAndDelete">
                            <asp:ImageButton runat="server" SkinID="Delete" ToolTip='<%$ resources:global,Delete %>' CommandName="DeleteStoreConfiguration"
                                             OnClientClick='<%$ resources:global, ClientClickConfirmDeletion %>' 
                                             Visible="<%# ((StoreConfigurationViewModel)Container.DataItem).IsDeletable %>" />
                        </mag:FeaturePanel>
                    </ul>
                </celltemplate>
            </mag:GridViewColumn>
        </Columns>
    </mag:Gridview>
</asp:Content>
