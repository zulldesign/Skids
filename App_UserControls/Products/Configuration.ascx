<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Configuration.ascx.cs"
    Inherits="Magelia.WebStore.Admin.App_UserControls.Products.Configuration" %>
<div id="bConfiguration" runat="server">
    <fieldset>
        <legend>
            <asp:Literal ID="litProperties" runat="server" Text='<%$ resources:global, Properties %>' />
        </legend>
        <div class="field inline">
            <asp:Label ID="lblProductType" runat="server" meta:resourcekey="lblProductType" AssociatedControlID="ddlProductTypes" />
            <mag:DropDownList ID="ddlProductTypes" runat="server" AppendDataBoundItems="true" GroupByTextField="ProductKind"
                AutoPostBack="true" OnSelectedIndexChanged="ddlProductTypes_SelectedIndexChanged"
                DataTextField="Code" DataValueField="ProductTypeId">
                <asp:ListItem />
            </mag:DropDownList>
            <asp:RequiredFieldValidator ID="rfvProductType" runat="server" meta:resourcekey="rfvProductType"
                ValidationGroup="vgProduct" ControlToValidate="ddlProductTypes" />
        </div>
        <asp:MultiView ID="mvCode" runat="server">
            <asp:View runat="server" ID="vSKU">
                <div class="field inline break">
                    <asp:Label ID="lblSKU" runat="server" meta:resourcekey="lblSKU" AssociatedControlID="tbxSKU" />
                    <asp:TextBox ID="tbxSKU" runat="server" AutoPostBack="true" OnTextChanged="tbxSKU_TextChanged" />
                    <asp:RequiredFieldValidator ID="rfvSKU" runat="server" meta:resourcekey="rfvSKU" ValidationGroup="vgProduct" ControlToValidate="tbxSKU" />
                    <asp:RegularExpressionValidator ID="revSKULength" runat="server" ValidationGroup="vgProduct" ControlToValidate="tbxSKU" meta:resourcekey="revSKULength" ValidationExpression="^.{0,50}$" />
                    <asp:CustomValidator ID="cvSKUUnique" runat="server" ValidationGroup="vgProduct" ControlToValidate="tbxSKU" OnServerValidate="cvSKUUnique_ServerValidate" meta:resourcekey="cvSKUUnique" />
                </div>
            </asp:View>
            <asp:View runat="server" ID="vCode">
                <div class="field inline break">
                    <asp:Label ID="lblCode" runat="server" meta:resourcekey="lblCode" AssociatedControlID="tbxCode" />
                    <asp:TextBox ID="tbxCode" runat="server" AutoPostBack="true" />
                    <asp:RequiredFieldValidator ID="rfvCode" runat="server" meta:resourcekey="rfvCode" ValidationGroup="vgProduct" ControlToValidate="tbxCode" />
                    <asp:RegularExpressionValidator ID="revCodeLength" runat="server" ValidationGroup="vgProduct" ControlToValidate="tbxCode" meta:resourcekey="revCodeLength" ValidationExpression="^.{0,50}$" />
                    <asp:CustomValidator ID="cvCodeUnique" runat="server" ValidationGroup="vgProduct" ControlToValidate="tbxCode" OnServerValidate="cvCodeUnique_ServerValidate" meta:resourcekey="cvCodeUnique" />
                </div>
            </asp:View>
        </asp:MultiView>
        <div class="field inline break">
            <asp:Label ID="lblExternalId" runat="server" AssociatedControlID="tbxExternalId" meta:resourcekey="lblExternalId" />
            <asp:TextBox ID="tbxExternalId" runat="server" />
            <asp:RegularExpressionValidator ID="revExternalIdLength" runat="server" ValidationGroup="vgProduct"
                ControlToValidate="tbxExternalId" meta:resourcekey="revExternalIdLength" ValidationExpression="^.{0,50}$" />
        </div>
        <div class="field inline break">
            <asp:Label ID="lblSupplier" runat="server" meta:resourcekey="lblSupplier" AssociatedControlID="ddlSuppliers" />
            <asp:DropDownList ID="ddlSuppliers" runat="server" DataTextField="Code" DataValueField="SupplierId"
                AppendDataBoundItems="true">
                <asp:ListItem />
            </asp:DropDownList>
        </div>
        <div class="field inline break">
            <asp:Label ID="lblSupplierCode" runat="server" meta:resourcekey="lblSupplierCode"
                AssociatedControlID="tbxSupplierCode" />
            <asp:TextBox ID="tbxSupplierCode" runat="server" />
            <asp:RegularExpressionValidator ID="revSupplierCodeLength" runat="server" ValidationGroup="vgProduct"
                ControlToValidate="tbxSupplierCode" meta:resourcekey="revSupplierCodeLength"
                ValidationExpression="^.{0,250}$" />
        </div>
        <div class="field inline break">
            <asp:Label ID="lblBrand" runat="server" meta:resourcekey="lblBrand" AssociatedControlID="ddlBrands" />
            <asp:DropDownList ID="ddlBrands" runat="server" AppendDataBoundItems="true" DataValueField="BrandId"
                DataTextField="Code">
                <asp:ListItem />
            </asp:DropDownList>
        </div>
        <asp:PlaceHolder runat="server" ID="phPhysicalProperties">
            <div class="field inline break">
                <asp:Label ID="lblWeight" runat="server" meta:resourcekey="lblWeight" AssociatedControlID="tbxWeight" />
                <asp:TextBox ID="tbxWeight" runat="server" CssClass="numeric" />
                &nbsp;<asp:Literal ID="litWeightUnit" runat="server" />
                <asp:CompareValidator ID="cvWeightIsDecimal" runat="server" ValidationGroup="vgProduct"
                    meta:resourcekey="cvWeightIsDecimal" ControlToValidate="tbxWeight" Type="Double"
                    Operator="DataTypeCheck" />
                <asp:CompareValidator ID="cvWeightGreaterThanEqualZero" runat="server" ValidationGroup="vgProduct"
                    ControlToValidate="tbxWeight" Operator="GreaterThanEqual" ValueToCompare="0"
                    Type="Double" meta:resourcekey="cvWeightGreaterThanEqualZero" />
            </div>
            <div class="field inline break">
                <asp:Label ID="lblWidth" runat="server" meta:resourcekey="lblWidth" AssociatedControlID="tbxWidth" />
                <asp:TextBox ID="tbxWidth" runat="server" CssClass="numeric" />
                &nbsp;<asp:Literal ID="litLengthUnit1" runat="server" />
                <asp:CompareValidator ID="cvWidthIsDecimal" runat="server" ValidationGroup="vgProduct"
                    meta:resourcekey="cvWidthIsDecimal" ControlToValidate="tbxWidth" Type="Double"
                    Operator="DataTypeCheck" />
                <asp:CompareValidator ID="cvWidthGreaterThanEqualZero" runat="server" ValidationGroup="vgProduct"
                    ControlToValidate="tbxWidth" Operator="GreaterThanEqual" ValueToCompare="0" Type="Double"
                    meta:resourcekey="cvWidthGreaterThanEqualZero" />
            </div>
            <div class="field inline break">
                <asp:Label ID="lblHeight" runat="server" meta:resourcekey="lblHeight" AssociatedControlID="tbxHeight" />
                <asp:TextBox ID="tbxHeight" runat="server" CssClass="numeric" />
                &nbsp;<asp:Literal ID="litLengthUnit2" runat="server" />
                <asp:CompareValidator ID="cvHeightIsDecimal" runat="server" ValidationGroup="vgProduct"
                    meta:resourcekey="cvHeightIsDecimal" ControlToValidate="tbxHeight" Type="Double"
                    Operator="DataTypeCheck" />
                <asp:CompareValidator ID="cvHeightGreaterThanEqualZero" runat="server" ValidationGroup="vgProduct"
                    ControlToValidate="tbxHeight" Operator="GreaterThanEqual" ValueToCompare="0"
                    Type="Double" meta:resourcekey="cvHeightGreaterThanEqualZero" />
            </div>
            <div class="field inline break">
                <asp:Label ID="lblLength" runat="server" meta:resourcekey="lblLength" AssociatedControlID="tbxLength" />
                <asp:TextBox ID="tbxLength" runat="server" CssClass="numeric" />
                &nbsp;<asp:Literal ID="litLengthUnit3" runat="server" />
                <asp:CompareValidator ID="cvLengthIsDecimal" runat="server" ValidationGroup="vgProduct"
                    meta:resourcekey="cvLengthIsDecimal" ControlToValidate="tbxLength" Type="Double"
                    Operator="DataTypeCheck" />
                <asp:CompareValidator ID="cvLengthGreaterThanEqualZero" runat="server" ValidationGroup="vgProduct"
                    ControlToValidate="tbxLength" Operator="GreaterThanEqual" ValueToCompare="0"
                    Type="Double" meta:resourcekey="cvLengthGreaterThanEqualZero" />
                <asp:CustomValidator ID="cvAllMeasurementsAreSpecified" runat="server" ValidationGroup="vgProduct"
                    OnServerValidate="cvAllMeasurementsAreSpecified_ServerValidate" meta:resourcekey="cvAllMeasurementsAreSpecified" />
            </div>
        </asp:PlaceHolder>
        <asp:PlaceHolder runat="server" ID="phIsActive">
            <div class="field inline break">
                <asp:Label ID="lblIsActive" runat="server" meta:resourcekey="lblIsActive" AssociatedControlID="cbxIsActive" />
                <asp:CheckBox ID="cbxIsActive" runat="server" Checked="true" />
            </div>
        </asp:PlaceHolder>
        <asp:UpdatePanel ID="upnlStartDate" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                <div class="field inline break">
                    <asp:Label ID="lblStartDate" runat="server" meta:resourcekey="lblStartDate" AssociatedControlID="cbxIsActive" />
                    <mag:DateTimePicker ID="mdtpStartDate" runat="server" />
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
        <asp:UpdatePanel ID="upnlEndDate" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                <div class="field inline break">
                    <asp:Label ID="lblEndDate" runat="server" meta:resourcekey="lblEndDate" AssociatedControlID="mdtpEndDate" />
                    <mag:DateTimePicker ID="mdtpEndDate" runat="server" />
                    <asp:CustomValidator ID="cvEndDateGreaterThanStartDate" runat="server" meta:resourcekey="cvEndDateGreaterThanStartDate" ControlToValidate="mdtpEndDate" ValidationGroup="vgProduct" OnServerValidate="cvEndDateGreaterThanStartDate_ServerValidate" />
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>

        <div class="field inline break">
            <asp:Label ID="lblIsOnline" runat="server" meta:resourcekey="lblIsOnline" AssociatedControlID="cbxIsOnline" />
            <asp:CheckBox ID="cbxIsOnline" runat="server" Checked="true" />
        </div>
    </fieldset>
    <fieldset id="fsCatalogs" runat="server">
        <legend>
            <asp:Literal ID="litCatalogs" runat="server" meta:resourcekey="litCatalogs" />
        </legend>
        <mag:SwapList ID="mslCatalogs" runat="server" meta:resourcekey="mslCatalogs" DataTextField="Code"
            OnItemsAdded="mslCatalogs_ItemsAdded" OnItemsRemoved="mslCatalogs_ItemsRemoved"
            DataValueField="CatalogId" />
    </fieldset>
    <fieldset id="fsTax" runat="server">
        <legend>
            <asp:Literal ID="litTax" runat="server" meta:resourcekey="litTax" />
        </legend>
        <mag:SwapList ID="mslTaxCategories" runat="server" meta:resourcekey="mslTaxCategories"
            DataTextField="Code" DataValueField="TaxCategoryId" />
    </fieldset>
    <fieldset id="fsWarehouses" runat="server" visible="false">
        <legend>
            <asp:Literal ID="litWarehouses" runat="server" meta:resourcekey="litWarehouses" />
        </legend>
        <mag:SwapList ID="mslWarehouses" runat="server" meta:resourcekey="mslWarehouses"
            DataTextField="Code" DataValueField="WarehouseId" OnItemsRemoved="mslWarehouses_ItemsRemoved"
            OnItemsAdded="mslWarehouses_ItemsAdded" />
    </fieldset>
</div>
