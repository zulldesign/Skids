<%@ Page Title="" Language="C#" MasterPageFile="~/App_Masters/DefaultLayout.Master"
    AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="Magelia.WebStore.Admin.Administration.StoreConfigurations.Edit" %>

<%@ Register TagPrefix="mag" TagName="WorkerComponentConfiguration" Src="~/App_UserControls/WorkerComponent/WorkerComponentConfiguration.ascx" %>

<asp:Content ContentPlaceHolderID="cphBarTitle" runat="server">
    <asp:Literal ID="litStoreConfiguration" runat="server" meta:resourcekey="litStoreConfiguration" />
</asp:Content>
<asp:Content ContentPlaceHolderID="cphBarContent" runat="server">
    <ul>
        <li>
            <asp:HyperLink NavigateUrl="~/Administration/StoreConfigurations/List.aspx" runat="server" SkinID="Minor" Text="<%$ resources:global, Cancel %>" />
        </li>
        <mag:FeaturePanel runat="server" Tag="Li" Level="Edit">
            <asp:LinkButton ID="lbtnSave" runat="server" Text='<%$ resources:global, Save %>' SkinID="Major" OnClick="lbtnSave_Click" ValidationGroup="vgStoreConfiguration" />
        </mag:FeaturePanel>
    </ul>
</asp:Content>
<asp:Content ContentPlaceHolderID="cphBody" runat="server">
    <div class="form">
        <asp:ValidationSummary runat="server" ID="vsStoreConfiguration" ValidationGroup="vgStoreConfiguration" HeaderText="<%$ Resources:Global, ErrorMsgText %>" />
        <asp:Panel runat="server" meta:resourceKey="pnlStoreConfiguration">
            <mag:DynamicControl runat="server" ID="dcStoreConfiguration" />
            <asp:CustomValidator runat="server" ValidationGroup="vgStoreConfiguration" ID="cvUniqueCode" OnServerValidate="cvUniqueCode_ServerValidate" meta:resourceKey="cvUniqueCode" />
        </asp:Panel>
        <mag:WorkerComponentConfiguration ID="ucWorkerComponentConfiguration" runat="server" Scope="StoreConfiguration" ValidationGroup="vgStoreConfiguration" />
    </div>
</asp:Content>
