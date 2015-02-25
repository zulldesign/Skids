<%@ Page Title="" Language="C#" MasterPageFile="~/App_Masters/DefaultLayout.Master" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="Magelia.WebStore.Admin.Products.Edit" %>

<%@ Register Src="~/App_UserControls/Products/Menu.ascx" TagName="Menu" TagPrefix="product" %>
<%@ Register Src="~/App_UserControls/Products/Configuration.ascx" TagName="Configuration" TagPrefix="product" %>
<%@ Register Src="~/App_UserControls/Products/Localization.ascx" TagName="Localization" TagPrefix="product" %>
<%@ Register Src="~/App_UserControls/Products/Categories.ascx" TagName="Categories" TagPrefix="product" %>
<%@ Register Src="~/App_UserControls/Products/Variant.ascx" TagName="Variant" TagPrefix="product" %>
<%@ Register Src="~/App_UserControls/Products/Variants.ascx" TagName="Variants" TagPrefix="product" %>
<%@ Register Src="~/App_UserControls/Products/Inventory.ascx" TagName="Inventory" TagPrefix="product" %>
<%@ Register Src="~/App_UserControls/Products/Prices.ascx" TagName="Prices" TagPrefix="product" %>
<%@ Register Src="~/App_UserControls/Products/Characteristics.ascx" TagName="Characteristics" TagPrefix="product" %>
<%@ Register Src="~/App_UserControls/Products/Composition.ascx" TagName="Composition" TagPrefix="product" %>
<%@ Register Src="~/App_UserControls/Products/Associations.ascx" TagName="Associations" TagPrefix="product" %>
<%@ Register Src="~/App_UserControls/Products/ContentItems.ascx" TagName="ContentItems" TagPrefix="product" %>
<asp:Content ContentPlaceHolderID="cphBarTitle" runat="server">
    <asp:Literal ID="litProduct" runat="server" meta:resourcekey="litProduct" />
</asp:Content>
<asp:Content ContentPlaceHolderID="cphBarContent" runat="server">
    <ul>
        <li>
            <asp:HyperLink runat="server" SkinID="Minor" Text='<%$ resources:global, Cancel %>' NavigateUrl="~/Products/List.aspx" />
        </li>
        <li id="iAddVariant" runat="server" visible="false">
            <asp:LinkButton ID="lbtnAddVariant" runat="server" SkinID="Major" OnClick="lbtnAddVariant_Click" meta:resourcekey="lbtnAddVariant" />
        </li>
        <li id="iCancelVariantEdition" runat="server" visible="false">
            <asp:LinkButton ID="lbtnCancelVariantEdition" runat="server" meta:resourcekey="lbtnCancelVariantEdition" SkinID="Minor" OnClick="lbtnCancelVariantEdition_Click" />
        </li>
        <li id="iSaveVariant" runat="server" visible="false">
            <asp:LinkButton ID="lbtnSaveVariant" runat="server" meta:resourcekey="lbtnSaveVariant" SkinID="Major" OnClick="lbtnSaveVariant_Click" ValidationGroup="vgProduct" />
        </li>
        <li id="iSave" runat="server" visible="false">
            <asp:LinkButton ID="lbtnSave" runat="server" Text='<%$ resources:global, Save %>' SkinID="Major" OnClick="lbtnSave_Click" ValidationGroup="vgProduct" />
        </li>
    </ul>
</asp:Content>
<asp:Content ContentPlaceHolderID="cphBody" runat="server">
    <div id="bProduct">
        <div class="left">
            <product:Menu ID="pMenu" runat="server" OnMenuItemChanged="pMenu_MenuItemChanged" />
        </div>
        <div class="right form">
            <asp:ValidationSummary runat="server" ValidationGroup="vgProduct" HeaderText='<%$ Resources: Global, ErrorMsgText %>' />
            <asp:ValidationSummary runat="server" ValidationGroup="vgProductGeneral" HeaderText='<%$ Resources: Global, ErrorMsgText %>' />
            <asp:CustomValidator ID="cvRequiredCharacteristics" runat="server" ValidationGroup="vgProductGeneral" OnServerValidate="cvRequiredCharacteristics_ServerValidate" meta:resourcekey="cvRequiredCharacteristics" />
            <asp:CustomValidator ID="cvVariantSKUConflict" runat="server" ValidationGroup="vgProductGeneral" OnServerValidate="cvVariantSKUConflict_ServerValidate" meta:resourcekey="cvVariantSKUConflict" />
            <asp:MultiView ID="mvProduct" runat="server" ActiveViewIndex="0">
                <asp:View ID="vConfiguration" runat="server">
                    <script type="text/javascript">
                        Magelia.WebStore.HelpManager.Instance.setSubPath('configuration');
                    </script>
                    <product:Configuration ID="pConfiguration" runat="server" OnProductTypeChanged="pConfiguration_ProductTypeChanged" OnCatalogsAdded="pConfiguration_CatalogsAdded" OnCatalogsRemoved="pConfiguration_CatalogsRemoved"
                        OnSKUChanged="pConfiguration_SKUChanged" OnWarehousesAssociationsChanged="pConfiguration_WarehousesAssociationsChanged" />
                </asp:View>
                <asp:View ID="vLocalization" runat="server">
                    <script type="text/javascript">
                        Magelia.WebStore.HelpManager.Instance.setSubPath('localization');
                    </script>
                    <product:Localization ID="pLocalization" runat="server" />
                </asp:View>
                <asp:View ID="vCategories" runat="server">
                    <script type="text/javascript">
                        Magelia.WebStore.HelpManager.Instance.setSubPath('categories');
                    </script>
                    <product:Categories ID="pCategories" runat="server" />
                </asp:View>
                <asp:View ID="vVariants" runat="server">
                    <script type="text/javascript">
                        Magelia.WebStore.HelpManager.Instance.setSubPath('variants');
                    </script>
                    <product:Variants ID="pVariants" runat="server" OnVariantsDeleted="pVariants_VariantsDeleted" OnEditVariant="pVariants_EditVariant" OnVariantsReordered="pVariants_VariantsReordered" OnVariantCopy="pVariants_VariantCopy" />
                </asp:View>
                <asp:View ID="vVariant" runat="server">
                    <script type="text/javascript">
                        Magelia.WebStore.HelpManager.Instance.setSubPath('variant');
                    </script>
                    <product:Variant ID="pVariant" runat="server" OnVariantSKUUniqueValidate="pVariant_VariantSKUUniqueValidate" />
                </asp:View>
                <asp:View ID="vInventory" runat="server">
                    <script type="text/javascript">
                        Magelia.WebStore.HelpManager.Instance.setSubPath('inventory');
                    </script>
                    <product:Inventory ID="pInventory" runat="server" />
                </asp:View>
                <asp:View ID="vPrices" runat="server">
                    <script type="text/javascript">
                        Magelia.WebStore.HelpManager.Instance.setSubPath('prices');
                    </script>
                    <product:Prices ID="pPrices" runat="server" />
                </asp:View>
                <asp:View ID="vCharacteristics" runat="server">
                    <script type="text/javascript">
                        Magelia.WebStore.HelpManager.Instance.setSubPath('characteristics');
                    </script>
                    <product:Characteristics ID="pCharacteristics" runat="server" />
                </asp:View>
                <asp:View ID="vComposition" runat="server">
                    <script type="text/javascript">
                        Magelia.WebStore.HelpManager.Instance.setSubPath('composition');
                    </script>
                    <product:Composition ID="pComposition" runat="server" />
                </asp:View>
                <asp:View ID="vAssociations" runat="server">
                    <script type="text/javascript">
                        Magelia.WebStore.HelpManager.Instance.setSubPath('associations');
                    </script>
                    <product:Associations ID="pAssociations" runat="server" />
                </asp:View>
                <asp:View ID="vContentItems" runat="server">
                    <product:ContentItems ID="pContentItems" runat="server" />
                </asp:View>
            </asp:MultiView>
        </div>
    </div>
</asp:Content>
