<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Variant.ascx.cs" Inherits="Magelia.WebStore.Admin.App_UserControls.Products.Variant" %>
<%@ Register Src="~/App_UserControls/Products/Characteristics.ascx" TagPrefix="product" TagName="Characteristics" %>
<div class="form">
    <fieldset>
        <legend>
            <asp:Literal ID="litVariant" runat="server" meta:resourcekey="litVariant" />
        </legend>
        <mag:TabStrip ID="mtsVariant" runat="server" ValidationGroup="vgProduct" MultiViewID="mvVariant">
            <TabItems>
                <mag:TabItem meta:resourcekey="tiGeneral" />
                <mag:TabItem meta:resourcekey="tiContentItems" />
            </TabItems>
        </mag:TabStrip>
        <div>
            <asp:MultiView ID="mvVariant" runat="server" ActiveViewIndex="0">
                <asp:View runat="server">
                    <fieldset>
                        <legend>
                            <asp:Literal runat="server" Text='<%$ resources:global,Properties %>' />
                        </legend>
                        <div class="field inline">
                            <asp:Label ID="lblSKU" runat="server" AssociatedControlID="tbxSKU" meta:resourcekey="lblSKU" />
                            <asp:TextBox ID="tbxSKU" runat="server" />
                            <asp:RequiredFieldValidator ID="rfvSKU" runat="server" ControlToValidate="tbxSKU" meta:resourcekey="rfvSKU" ValidationGroup="vgProduct" />
                            <asp:RegularExpressionValidator ID="revSKULength" runat="server" ControlToValidate="tbxSKU" meta:resourcekey="revSKULength" ValidationGroup="vgProduct" ValidationExpression="^.{0,50}$" />
                            <asp:CustomValidator ID="cvSKUUnique" runat="server" meta:resourcekey="cvSKUUnique" ValidationGroup="vgProduct" ControlToValidate="tbxSKU" OnServerValidate="cvSKUUnique_ServerValidate" />
                        </div>
                        <div class="field inline break">
                            <asp:Label ID="lblExternalId" runat="server" AssociatedControlID="tbxExternalId" meta:resourcekey="lblExternalId" />
                            <asp:TextBox ID="tbxExternalId" runat="server" />
                            <asp:RegularExpressionValidator ID="revExternalIdLength" runat="server" ValidationGroup="vgProduct"
                                ControlToValidate="tbxExternalId" meta:resourcekey="revExternalIdLength" ValidationExpression="^.{0,50}$" />
                        </div>
                        <div class="field inline break">
                            <asp:Label ID="lblSupplier" runat="server" AssociatedControlID="ddlSuppliers" meta:resourcekey="lblSupplier" />
                            <asp:DropDownList ID="ddlSuppliers" runat="server" AppendDataBoundItems="true" DataTextField="Code" DataValueField="SupplierId">
                                <asp:ListItem />
                            </asp:DropDownList>
                        </div>
                        <div class="field inline break">
                            <asp:Label ID="lblSupplierCode" runat="server" meta:resourcekey="lblSupplierCode" AssociatedControlID="tbxSupplierCode" />
                            <asp:TextBox ID="tbxSupplierCode" runat="server" />
                            <asp:RegularExpressionValidator ID="revSupplierCodeLength" runat="server" ControlToValidate="tbxSKU" meta:resourcekey="revSupplierCodeLength" ValidationGroup="vgProduct" ValidationExpression="^.{0,200}$" />
                        </div>
                        <div class="field inline break">
                            <asp:Label ID="lblBrand" runat="server" meta:resourcekey="lblBrand" AssociatedControlID="ddlBrands" />
                            <asp:DropDownList ID="ddlBrands" runat="server" AppendDataBoundItems="true" DataTextField="Code" DataValueField="BrandId">
                                <asp:ListItem />
                            </asp:DropDownList>
                        </div>
                        <asp:PlaceHolder runat="server" ID="phPhysicalProperties">
                            <div class="field inline break">
                                <asp:Label ID="lblWeight" runat="server" meta:resourcekey="lblWeight" AssociatedControlID="tbxWeight" />
                                <asp:TextBox ID="tbxWeight" runat="server" CssClass="numeric" />&nbsp;<asp:Literal ID="litWeightUnit" runat="server" />
                                <asp:CompareValidator ID="cvWeightIsDecimal" runat="server" ValidationGroup="vgProduct" ControlToValidate="tbxWeight" Operator="DataTypeCheck" Type="Double" meta:resourcekey="cvWeightIsDecimal" />
                                <asp:CompareValidator ID="cvWeightGreaterThanEqualZero" runat="server" ValidationGroup="vgProduct" ControlToValidate="tbxWeight" Operator="GreaterThanEqual" ValueToCompare="0" Type="Double" meta:resourcekey="cvWeightGreaterThanEqualZero" />
                            </div>
                            <div class="field inline break">
                                <asp:Label ID="lblWidth" runat="server" meta:resourcekey="lblWidth" AssociatedControlID="tbxWidth" />
                                <asp:TextBox ID="tbxWidth" runat="server" CssClass="numeric" />&nbsp;<asp:Literal ID="litLengthUnit1" runat="server" />
                                <asp:CompareValidator ID="cvWidthIsDecimal" runat="server" ValidationGroup="vgProduct" ControlToValidate="tbxWidth" Operator="DataTypeCheck" Type="Double" meta:resourcekey="cvWidthIsDecimal" />
                                <asp:CompareValidator ID="cvWidthGreaterThanEqualZero" runat="server" ValidationGroup="vgProduct" ControlToValidate="tbxWidth" Operator="GreaterThanEqual" ValueToCompare="0" Type="Double" meta:resourcekey="cvWidthGreaterThanEqualZero" />
                            </div>
                            <div class="field inline break">
                                <asp:Label ID="lblHeight" runat="server" meta:resourcekey="lblHeight" AssociatedControlID="tbxHeight" />
                                <asp:TextBox ID="tbxHeight" runat="server" CssClass="numeric" />&nbsp;<asp:Literal ID="litLengthUnit2" runat="server" />
                                <asp:CompareValidator ID="cvHeightIsDecimal" runat="server" ValidationGroup="vgProduct" ControlToValidate="tbxHeight" Operator="DataTypeCheck" Type="Double" meta:resourcekey="cvHeightIsDecimal" />
                                <asp:CompareValidator ID="cvHeightGreaterThanEqualZero" runat="server" ValidationGroup="vgProduct" ControlToValidate="tbxHeight" Operator="GreaterThanEqual" ValueToCompare="0" Type="Double" meta:resourcekey="cvHeightGreaterThanEqualZero" />
                            </div>
                            <div class="field inline break">
                                <asp:Label ID="lblLength" runat="server" meta:resourcekey="lblLength" AssociatedControlID="tbxLength" />
                                <asp:TextBox ID="tbxLength" runat="server" CssClass="numeric" />&nbsp;<asp:Literal ID="litLengthUnit3" runat="server" />
                                <asp:CompareValidator ID="cvLengthIsDecimal" runat="server" ValidationGroup="vgProduct" ControlToValidate="tbxLength" Operator="DataTypeCheck" Type="Double" meta:resourcekey="cvLengthIsDecimal" />
                                <asp:CompareValidator ID="cvLengthGreaterThanEqualZero" runat="server" ValidationGroup="vgProduct" ControlToValidate="tbxLength" Operator="GreaterThanEqual" ValueToCompare="0" Type="Double" meta:resourcekey="cvLengthGreaterThanEqualZero" />
                                <asp:CustomValidator ID="cvAllMeasurementsAreSpecified" runat="server" ValidationGroup="vgProduct" OnServerValidate="cvAllMeasurementsAreSpecified_ServerValidate" meta:resourcekey="cvAllMeasurementsAreSpecified" />
                            </div>
                        </asp:PlaceHolder>
                        <div class="field inline break">
                            <asp:Label ID="lblIsActive" runat="server" AssociatedControlID="cbxIsActive" meta:resourcekey="lblIsActive" />
                            <asp:CheckBox ID="cbxIsActive" runat="server" />
                        </div>
                        <asp:UpdatePanel runat="server" UpdateMode="Conditional">
                            <ContentTemplate>
                                <div class="field inline break">
                                    <asp:Label ID="lblStartDate" runat="server" meta:resourcekey="lblStartDate" AssociatedControlID="cbxIsActive" />
                                    <mag:DateTimePicker ID="mdtpStartDate" runat="server" />
                                </div>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                        <asp:UpdatePanel runat="server" UpdateMode="Conditional">
                            <ContentTemplate>
                                <div class="field inline break">
                                    <asp:Label ID="lblEndDate" runat="server" meta:resourcekey="lblEndDate" AssociatedControlID="mdtpEndDate" />
                                    <mag:DateTimePicker ID="mdtpEndDate" runat="server" />
                                    <asp:CustomValidator ID="cvEndDateGreaterThanStartDate" runat="server" meta:resourcekey="cvEndDateGreaterThanStartDate" ControlToValidate="mdtpEndDate" ValidationGroup="vgProduct" OnServerValidate="cvEndDateGreaterThanStartDate_ServerValidate" />
                                </div>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                        <div class="field inline break">
                            <asp:Label ID="lblIsOnline" runat="server" AssociatedControlID="cbxIsOnline" meta:resourcekey="lblIsOnline" />
                            <asp:CheckBox ID="cbxIsOnline" runat="server" />
                        </div>
                        <div class="field inline break">
                            <asp:Label ID="lblIsDefault" runat="server" AssociatedControlID="cbxIsDefault" meta:resourcekey="lblIsDefault" />
                            <asp:CheckBox ID="cbxIsDefault" runat="server" />
                        </div>
                    </fieldset>
                    <product:Characteristics ID="pCharacteristics" runat="server" DisplayVariant="true" />
                </asp:View>
                <asp:View runat="server">
                    <mag:AssociatedContentItems ID="mAssociatedContentItems" runat="server" ValidationGroup="vgProduct" />
                </asp:View>
            </asp:MultiView>
        </div>
    </fieldset>
</div>
