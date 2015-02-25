<%@ Page Title="" Language="C#" MasterPageFile="~/App_Masters/DefaultLayout.Master" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="Magelia.WebStore.Admin.Content.ContentItems.Edit" %>
<asp:Content ContentPlaceHolderID="cphHead" runat="server">
    
</asp:Content>
<asp:Content ContentPlaceHolderID="cphBarTitle" runat="server">
    <asp:Literal ID="litContentItems" runat="server" meta:resourcekey="litContentItems" />
</asp:Content>
<asp:Content ContentPlaceHolderID="cphBarContent" runat="server">
    <ul>
        <mag:FeaturePanel runat="server" Tag="Li" Level="Edit">
            <asp:LinkButton ID="lbtnSave" runat="server" Text='<%$ resources:global,Save %>' SkinID="Major" OnClick="lbtnSave_Click" validationgroup="ci" />
        </mag:FeaturePanel>
    </ul>
</asp:Content>
<asp:Content ContentPlaceHolderID="cphBody" runat="server">
    <mag:AssociatedContentItems runat="server" ID="mAssociatedContentItems" onContentItemDeleted="mAssociatedContentItems_ContentItemDeleted" validationgroup="ci" />
</asp:Content>
