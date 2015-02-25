<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Menu.ascx.cs" Inherits="Magelia.WebStore.Admin.App_UserControls.Products.Menu" %>
<asp:TreeView ID="tvMenu" runat="server" ShowLines="true" SelectedNodeStyle-CssClass="selected" CssClass="menu" OnSelectedNodeChanged="tvMenu_SelectedNodeChanged">
    <Nodes>
        <asp:TreeNode meta:resourcekey="tnConfiguration" Selected="true" Value="Configuration" />
        <asp:TreeNode meta:resourcekey="tnLocalizations" Value="Localizations" SelectAction="None" />
        <asp:TreeNode meta:resourcekey="tnContentItems" Value="ContentItems" />
    </Nodes>
</asp:TreeView>
