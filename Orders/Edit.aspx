<%@ Page Title="" Language="C#" MasterPageFile="~/App_Masters/DefaultLayout.Master"
    AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="Magelia.WebStore.Admin.Orders.Edit" %>

<asp:Content ContentPlaceHolderID="cphBarTitle" runat="server">
    <asp:Literal ID="litOrder" runat="server" meta:resourcekey="litOrder" />
</asp:Content>
<asp:Content ContentPlaceHolderID="cphBarContent" runat="server">
    <ul>
        <li>
            <asp:HyperLink runat="server" NavigateUrl="~/Orders/List.aspx" Text='<%$ resources:global,Cancel %>'
                SkinID="Minor" />
        </li>
        <li id="liSave" runat="server">
            <asp:LinkButton ID="lbtnSave" runat="server" Text='<%$ resources:global,Save %>'
                SkinID="Major" ValidationGroup="vgOrder" OnClick="lbtnSave_Click" />
        </li>
    </ul>
</asp:Content>
<asp:Content ContentPlaceHolderID="cphBody" runat="server">
    <asp:ValidationSummary runat="server" HeaderText="<%$ Resources:Global, ErrorMsgText %>"
        ValidationGroup="vgOrder" />
    <mag:Order ID="moOrder" runat="server" ValidationGroup="vgOrder" OnEditOrder="moOrder_EditOrder" OnViewOrder="moOrder_ViewOrder"  />
</asp:Content>
