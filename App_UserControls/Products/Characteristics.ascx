<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Characteristics.ascx.cs"
    Inherits="Magelia.WebStore.Admin.App_UserControls.Products.Characteristics" %>
<%@ Register TagPrefix="product" TagName="AttributeEditor" Src="~/App_UserControls/Products/AttributeEditor.ascx" %>

<fieldset>
    <legend>
        <asp:Literal ID="litCharacteristics" runat="server" meta:resourcekey="litCharacteristics" />
    </legend>
    <asp:ListView ID="lvCarateristics" runat="server" OnItemDataBound="lvCarateristics_ItemDataBound"
        DataKeyNames="ProductAttributeProductTypeId">
        <ItemTemplate>
            <div class="field inline break-after">
                <label id="lblAttribute" runat="server">
                    <asp:Literal ID="litAttribute" runat="server" />
                </label>
                <product:AttributeEditor ID="pAttribute" runat="server" ValidationGroup="vgProduct" />
            </div>
        </ItemTemplate>
    </asp:ListView>
</fieldset>
