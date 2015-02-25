<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SwapList.ascx.cs" Inherits="Magelia.WebStore.Admin.App_UserControls.Generics.SwapList" %>
<div class="swapList">
    <div>
        <asp:Label ID="lblAvailableItems" runat="server" AssociatedControlID="lbAvailableItems" />
        <asp:ListBox ID="lbAvailableItems" runat="server" SelectionMode="Multiple" />
    </div>
    <div class="arrows">
        <asp:ImageButton ID="btnAddItem" runat="server" SkinID="ArrowRight" OnClick="btnAddItem_Click" />
        <asp:ImageButton ID="btnRemoveItem" runat="server" SkinID="ArrowLeft" OnClick="btnRemoveItem_Click" />
    </div>
    <div>
        <asp:Label ID="lblAssociatedItems" runat="server" AssociatedControlID="lbAssociatedItems" />
        <asp:ListBox ID="lbAssociatedItems" runat="server" SelectionMode="Multiple" />
    </div>
</div>
