<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ContentItems.ascx.cs" Inherits="Magelia.WebStore.Admin.App_UserControls.Products.ContentItems" %>
<fieldset>
    <legend>
        <asp:Literal ID="litContentItems" runat="server" meta:resourcekey="litContentItems" />
    </legend>
    <mag:AssociatedContentItems ID="mAssociatedContentItems" runat="server" ValidationGroup="vgProduct" />
</fieldset>
