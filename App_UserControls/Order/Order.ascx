<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Order.ascx.cs" Inherits="Magelia.WebStore.Admin.App_UserControls.Order.Order" %>
<%@ Register Src="~/App_UserControls/Order/Address.ascx" TagPrefix="mag" TagName="OrderAddress" %>
<%@ Register Src="~/App_UserControls/Order/Payments.ascx" TagPrefix="mag" TagName="Payments" %>
<%@ Import Namespace="Magelia.WebStore.Admin.App_UserControls.Order" %>

<mag:TabStrip runat="server" MultiViewID="mvGlobal" ID="tsGlobal">
    <TabItems>
        <mag:TabItem meta:resourceKey="mtiOrderDetail" />
        <mag:TabItem meta:resourceKey="mtiPaymentDetail" />
    </TabItems>
</mag:TabStrip>

<asp:MultiView ID="mvGlobal" runat="server" ActiveViewIndex="0">
    <asp:View runat="server" ID="vOrderDetail">
        <div class="order form">
            <div class="right">
                <fieldset class="status">
                    <legend>
                        <asp:Literal ID="litStatus" runat="server" meta:resourcekey="litStatus" />
                    </legend>
                    <div>
                        <asp:DropDownList ID="ddlStatus" runat="server" DataTextField="Code" DataValueField="StatusId" />
                    </div>
                </fieldset>
                <fieldset class="summary">
                    <legend>
                        <asp:Literal ID="litSummary" runat="server" meta:resourcekey="litSummary" />
                    </legend>
                    <div>
                        <asp:Label ID="lblOrderNumber" runat="server" meta:resourcekey="lblOrderNumber" />
                        <span>
                            <asp:Literal ID="litOrderNumber" runat="server" /></span>
                    </div>
                    <div>
                        <asp:Label ID="lblAlternateOrderNumber" runat="server" AssociatedControlID="tbxAlternateOrderNumber" meta:resourcekey="lblAlternateOrderNumber" />
                        <asp:TextBox ID="tbxAlternateOrderNumber" runat="server" CssClass="numeric" OnTextChanged="tbxAlternateOrderNumber_TextChanged" />
                        <asp:RegularExpressionValidator ID="revAlternateOrderNumberLength" runat="server" meta:resourcekey="revAlternateOrderNumberLength" ControlToValidate="tbxAlternateOrderNumber" ValidationExpression="^.{0,50}$" />
                    </div>
                    <div>
                        <asp:Label ID="lblVersion" runat="server" meta:resourcekey="lblVersion" />
                        <span>
                            <asp:Literal ID="litVersion" runat="server" /></span>
                    </div>
                    <div>
                        <asp:Label ID="lblCurrency" runat="server" meta:resourcekey="lblCurrency" />
                        <span>
                            <asp:Literal ID="litCurrency" runat="server" /></span>
                    </div>
                    <div>
                        <asp:Label ID="lblChannel" runat="server" meta:resourcekey="lblChannel" />
                        <span>
                            <asp:Literal ID="litChannel" runat="server" /></span>
                    </div>
                    <div>
                        <asp:Label ID="lblComments" runat="server" meta:resourcekey="lblComments" />
                        <mag:CommentsEditor ID="mceOrder" runat="server" />
                    </div>
                </fieldset>
                <fieldset class="payments">
                    <legend>
                        <asp:Literal ID="litPayments" runat="server" meta:resourcekey="litPayments" />
                    </legend>
                    <asp:ListView runat="server" ID="lvPayments">
                        <LayoutTemplate>
                            <ul>
                                <asp:PlaceHolder runat="server" ID="itemPlaceholder" />
                            </ul>
                        </LayoutTemplate>
                        <ItemTemplate>
                            <li>
                                <div>
                                    <asp:Label runat="server" Text='<%# ((PaymentsUserControl.PaymentViewModel)Container.DataItem).CreationDate.ToUserTimeZoneString("d") %>' />
                                    - 
                                    <asp:Label runat="server" Text='<%# this.FormatCurrency(((PaymentsUserControl.PaymentViewModel)Container.DataItem).Amount, ((PaymentsUserControl.PaymentViewModel)Container.DataItem).CurrencyId) %>' />
                                    <br />
                                    <asp:Label runat="server" Text='<%# this.FormatStatus(((PaymentsUserControl.PaymentViewModel)Container.DataItem).PaymentStatusId) %>' />
                                </div>
                            </li>
                        </ItemTemplate>
                    </asp:ListView>
                    <div class="buttons">
                        <asp:LinkButton runat="server" SkinID="Minor" meta:resourceKey="lbtnPaymentDetails" ID="lbtnPaymentDetails" OnClick="lbtnPaymentDetails_Click" />
                    </div>
                </fieldset>
                <fieldset class="versions">
                    <legend>
                        <asp:Literal ID="litPreviousVersions" runat="server" meta:resourcekey="litPreviousVersions" />
                    </legend>
                    <asp:Repeater ID="rptVersions" runat="server" OnItemCommand="rptVersions_ItemCommand">
                        <HeaderTemplate>
                            <ul>
                        </HeaderTemplate>
                        <FooterTemplate>
                            </ul>
                        </FooterTemplate>
                        <ItemTemplate>
                            <li runat="server" class='<%# (Container.DataItem as OrderVersionViewModel).Version == this.Version ? "current" : String.Empty %>'>
                                <div>
                                    <p>
                                        <asp:Literal ID="litVersion" runat="server" meta:resourcekey="litVersion" />&nbsp;
                                        <asp:Literal runat="server" Text='<%# Eval("Version") %>' />
                                    </p>
                                    <p>
                                        <asp:Literal ID="litCreationDate" runat="server" meta:resourcekey="litCreationDate" />&nbsp;
                                        <asp:Literal runat="server" Text='<%# ((OrderVersionViewModel)Container.DataItem).CreationDate.ToUserTimeZoneString() %>' />
                                    </p>
                                    <p id="P1" runat="server" visible='<%# !String.IsNullOrEmpty((Container.DataItem as OrderVersionViewModel).LastModificatorUserName) %>'>
                                        <asp:Literal ID="litLastModificatorUserName" runat="server" meta:resourcekey="litLastModificatorUserName" />&nbsp;
                                        <asp:Literal runat="server" Text='<%# Eval("LastModificatorUserName") %>' />
                                    </p>
                                </div>
                                <ul>
                                    <li id="Li2" runat="server" visible='<%# this.CanEdit %>'>
                                        <asp:ImageButton ID="ImageButton1" runat="server" SkinID="Edit" ToolTip='<%$ resources:global,Edit %>' Visible='<%# Eval("LastVersion") %>' CommandName="Edit" /></li>
                                    <li>
                                        <asp:ImageButton ID="ImageButton2" runat="server" SkinID="View" CommandName="View" CommandArgument='<%# Eval("Version") %>' /></li>
                                </ul>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>
                </fieldset>
                <fieldset>
                    <legend>
                        <asp:Literal ID="litAdditionalData" runat="server" meta:resourcekey="litAdditionalData" />
                    </legend>
                    <mag:AdditionalDataEditor ID="madeOrder" runat="server" />
                </fieldset>
            </div>
            <div class="left">
                <div id="bCustomer" runat="server" class="customer">
                    <fieldset>
                        <legend>
                            <asp:Literal ID="litCustomer" runat="server" meta:resourcekey="litCustomer" />
                        </legend>
                        <div class="field">
                            <asp:Label ID="lblUsername" runat="server" AssociatedControlID="tbxUserName" meta:resourcekey="lblUsername" />
                            <asp:TextBox ID="tbxUserName" runat="server" ReadOnly="true" />
                        </div>
                        <div class="field">
                            <asp:Label ID="lblFirstName" runat="server" AssociatedControlID="tbxFirstName" meta:resourcekey="lblFirstName" />
                            <asp:TextBox ID="tbxFirstName" runat="server" ReadOnly="true" />
                        </div>
                        <div class="field">
                            <asp:Label ID="lblMiddleName" runat="server" AssociatedControlID="tbxMiddleName" meta:resourcekey="lblMiddleName" />
                            <asp:TextBox ID="tbxMiddleName" runat="server" ReadOnly="true" />
                        </div>
                        <div class="field">
                            <asp:Label ID="lblLastName" runat="server" AssociatedControlID="tbxLastName" meta:resourcekey="lblLastName" />
                            <asp:TextBox ID="tbxLastName" runat="server" ReadOnly="true" />
                        </div>
                        <div class="field">
                            <asp:Label ID="lblEmail" runat="server" AssociatedControlID="tbxEmail" meta:resourcekey="lblEmail" />
                            <asp:TextBox ID="tbxEmail" runat="server" ReadOnly="true" />
                        </div>
                        <div id="bSegments" runat="server" class="field">
                            <asp:Label ID="lblSegments" runat="server" meta:resourcekey="lblSegments" />
                            <span>
                                <asp:Literal ID="litSegments" runat="server" /></span>
                        </div>
                    </fieldset>
                </div>
                <div class="orderSubsets">
                    <fieldset>
                        <legend>
                            <asp:Literal ID="litOrderSubsets" runat="server" meta:resourcekey="litOrderSubsets" />
                        </legend>
                        <table class="gridView">
                            <tbody>
                                <asp:Repeater ID="rptOrderSubsets" runat="server" OnItemDataBound="rptOrderSubsets_ItemDataBound" OnItemCommand="rptOrderSubsets_ItemCommand">
                                    <ItemTemplate>
                                        <tr class="header orderSubset">
                                            <td colspan="11">
                                                <p>
                                                    <asp:Literal ID="litOrderSubset" runat="server" meta:resourcekey="litOrderSubset" />
                                                    <em>
                                                        <asp:Literal runat="server" Text='<%# Eval("OrderSubsetNumber") %>' /></em>
                                                    <asp:Literal ID="litShippedFromWarehouse" runat="server" meta:resourcekey="litShippedFromWarehouse" Visible='<%# !((Boolean)Eval("Virtual")) %>' />&nbsp;
                                                    <em>
                                                        <asp:Literal runat="server" Text='<%# Eval("WarehouseCode") %>' Visible='<%# !((Boolean)Eval("Virtual")) %>' /></em>
                                                </p>
                                                <ul>
                                                    <li>
                                                        <asp:LinkButton ID="lbtnComments" runat="server" CssClass='<%# String.Format("button {0}", this.mceCommon.ReadOnly ? "view" : (((Magelia.WebStore.Data.Entities.OrderSubset)Container.DataItem).Comments.Any() ? "edit" : "add")) %>'
                                                            meta:resourcekey="lbtnComments" CommandName="EditOrderSubsetComments" CommandArgument='<%# Eval("OrderSubsetId") %>' />
                                                    </li>
                                                    <li>
                                                        <asp:LinkButton ID="lbtnAddtionalData" runat="server" SkinID="Edit" ToolTip='<%$ resources:global,Edit %>' meta:resourcekey="lbtnAddtionalData" CssClass='<%# String.Format("button {0}", this.madeCommon.ReadOnly ? "view" : (((Magelia.WebStore.Data.Entities.OrderSubset)Container.DataItem).AdditionalData.Any() ? "edit" : "add")) %>'
                                                            CommandName="EditPacakgeAdditionalData" CommandArgument='<%# Eval("OrderSubsetId") %>' />
                                                    </li>
                                                </ul>
                                            </td>
                                        </tr>
                                        <asp:ListView ID="lvLineItems" runat="server" DataKeyNames="LineItemId" OnItemDataBound="lvLineItems_ItemDataBound" OnItemCommand="lvLineItems_ItemCommand">
                                            <LayoutTemplate>
                                                <tr class="header">
                                                    <td>
                                                        <asp:Literal ID="litSKU" runat="server" meta:resourcekey="litSKU" />
                                                    </td>
                                                    <td>
                                                        <asp:Literal ID="litProductName" runat="server" meta:resourcekey="litProductName" />
                                                    </td>
                                                    <td>
                                                        <asp:Literal ID="litAdditionalData" runat="server" meta:resourcekey="litAdditionalData" />
                                                    </td>
                                                    <td>
                                                        <asp:Literal ID="litUnitPrice" runat="server" meta:resourcekey="litUnitPrice" />
                                                    </td>
                                                    <td>
                                                        <asp:Literal ID="litQuantity" runat="server" meta:resourcekey="litQuantity" />
                                                    </td>
                                                    <td>
                                                        <asp:Literal ID="litPrice" runat="server" meta:resourcekey="litPrice" />
                                                    </td>
                                                    <td>
                                                        <asp:Literal ID="litDiscount" runat="server" meta:resourcekey="litDiscount" />
                                                    </td>
                                                    <td>
                                                        <asp:Literal ID="litTotal" runat="server" meta:resourcekey="litTotal" />
                                                    </td>
                                                    <td>
                                                        <asp:Literal ID="litTaxes" runat="server" meta:resourcekey="litTaxes" />
                                                    </td>
                                                    <td>
                                                        <asp:Literal ID="litTotalIncludingTaxes" runat="server" meta:resourcekey="litTotalIncludingTaxes" />
                                                    </td>
                                                    <td>
                                                        <asp:Literal ID="litDetails" runat="server" meta:resourcekey="litDetails" />
                                                    </td>
                                                </tr>
                                                <asp:PlaceHolder runat="server" ID="itemPlaceHolder" />
                                            </LayoutTemplate>
                                            <ItemTemplate>
                                                <tr>
                                                    <td>
                                                        <asp:Literal runat="server" Text='<%# Eval("SKU") %>' />
                                                    </td>
                                                    <td>
                                                        <asp:Literal runat="server" Text='<%# Eval("ProductName") %>' />
                                                    </td>
                                                    <td>
                                                        <asp:LinkButton ID="lbtnAdditionalData" runat="server" CssClass='<%# String.Format("button {0}", this.madeCommon.ReadOnly ? "view": (((Magelia.WebStore.Data.Entities.LineItem)Container.DataItem).AdditionalData.Any() ? "edit" : "add")) %>'
                                                            CommandName="EditLineItemAdditionalData" CommandArgument='<%# Eval("LineItemId") %>' />
                                                    </td>
                                                    <td class="numeric">
                                                        <asp:Literal ID="litUnitPrice" runat="server" />
                                                    </td>
                                                    <td class="numeric">
                                                        <asp:Literal runat="server" Text='<%# Eval("Quantity") %>' />
                                                    </td>
                                                    <td class="numeric">
                                                        <asp:Literal ID="litLineItemPrice" runat="server" />
                                                    </td>
                                                    <td class="numeric">
                                                        <asp:Literal ID="litLineItemDiscount" runat="server" />
                                                    </td>
                                                    <td class="numeric">
                                                        <asp:Literal ID="litTotalIncludingDiscount" runat="server" />
                                                    </td>
                                                    <td class="numeric">
                                                        <asp:Literal ID="litLineItemTaxesConsideringUnitDiscount" runat="server" />
                                                    </td>
                                                    <td class="numeric">
                                                        <asp:Literal ID="litTotalIncludingDiscountAndTaxesConsideringUnitDiscount" runat="server" />
                                                    </td>
                                                    <td>
                                                        <asp:ImageButton ID="imgbtnDetails" runat="server" SkinID="Info" OnClick="imgbtnDetails_Click" meta:resourcekey="imgDetail" />
                                                    </td>
                                                </tr>
                                            </ItemTemplate>
                                        </asp:ListView>
                                        <tr class="total">
                                            <td colspan="5">
                                                <asp:MultiView runat="server" ActiveViewIndex='<%# String.IsNullOrEmpty(Eval("ShippingRateCode") as String) ? 1 : 0 %>'>
                                                    <asp:View runat="server">
                                                        <asp:Literal runat="server" Text='<%# Eval("ShippingRateCode") %>' />
                                                    </asp:View>
                                                    <asp:View runat="server">
                                                        <asp:Literal ID="litNoShippingRate" runat="server" meta:resourcekey="litNoShippingRate" />
                                                    </asp:View>
                                                </asp:MultiView>
                                            </td>
                                            <td class="numeric">
                                                <asp:Literal ID="litShippingRateValue" runat="server" />
                                            </td>
                                            <td class="numeric">
                                                <asp:Literal ID="litShippingDiscount" runat="server" />
                                            </td>
                                            <td class="numeric">
                                                <asp:Literal ID="litShippingRateValueIncludingDiscount" runat="server" />
                                            </td>
                                            <td class="numeric">
                                                <asp:Literal ID="litShippingTaxesConsideringShippingDiscount" runat="server" />
                                            </td>
                                            <td class="numeric">
                                                <asp:Literal ID="litShippingRateValueIncludingShippingDiscountAndTaxesConsideringShippingDiscount" runat="server" />
                                            </td>
                                            <td></td>
                                        </tr>
                                    </ItemTemplate>
                                </asp:Repeater>
                                <tr class="total">
                                    <td colspan="5">
                                        <asp:Literal ID="litLineItemsTotalRow" runat="server" meta:resourcekey="litLineItemsTotalRow" />
                                    </td>
                                    <td class="numeric">
                                        <asp:Literal ID="litLineItemsTotal" runat="server" />
                                    </td>
                                    <td class="numeric">
                                        <asp:Literal ID="litLineItemsDiscount" runat="server" />
                                    </td>
                                    <td class="numeric">
                                        <asp:Literal ID="litLineItemsTotalIncludingDiscount" runat="server" />
                                    </td>
                                    <td class="numeric">
                                        <asp:Literal ID="litLineItemsTaxesConsideringUnitDiscount" runat="server" />
                                    </td>
                                    <td class="numeric">
                                        <asp:Literal ID="litLineItemsTotalIncludingDiscountAndTaxes" runat="server" />
                                    </td>
                                    <td></td>
                                </tr>
                                <tr class="total">
                                    <td colspan="5">
                                        <asp:Literal ID="litShippingTotalRow" runat="server" meta:resourcekey="litShippingTotalRow" />
                                    </td>
                                    <td class="numeric">
                                        <asp:Literal ID="litShippingTotal" runat="server" />
                                    </td>
                                    <td class="numeric">
                                        <asp:Literal ID="litShippingDiscount" runat="server" />
                                    </td>
                                    <td class="numeric">
                                        <asp:Literal ID="litShippingTotalIncludingDiscount" runat="server" />
                                    </td>
                                    <td class="numeric">
                                        <asp:Literal ID="litShippingTaxesConsideringShippingDiscount" runat="server" />
                                    </td>
                                    <td class="numeric">
                                        <asp:Literal ID="litShippingTotalIncludingDiscountAndTaxes" runat="server" />
                                    </td>
                                    <td></td>
                                </tr>
                                <tr class="total">
                                    <td colspan="5">
                                        <asp:Literal ID="litOrderTotalRow" runat="server" meta:resourcekey="litOrderTotalRow" />
                                    </td>
                                    <td class="numeric">
                                        <asp:Literal ID="litOrderTotal" runat="server" />
                                    </td>
                                    <td class="numeric">
                                        <asp:Literal ID="litOrderDiscount" runat="server" />
                                    </td>
                                    <td class="numeric">
                                        <asp:Literal ID="litOrderTotalIncludingDiscount" runat="server" />
                                    </td>
                                    <td class="numeric">
                                        <asp:Literal ID="litOrderTaxesConsideringTotalDiscount" runat="server" />
                                    </td>
                                    <td class="numeric">
                                        <asp:Literal ID="litOrderTotalIncludingTotalDiscountAndTaxes" runat="server" />
                                    </td>
                                    <td></td>
                                </tr>
                            </tbody>
                        </table>
                    </fieldset>
                </div>
                <asp:MultiView runat="server" ID="mvAddresses">
                    <asp:View runat="server" ID="vNoAddress">
                        <fieldset>
                            <legend>
                                <asp:Literal ID="litNoAddress" runat="server" meta:resourcekey="litNoAddress" />
                            </legend>
                            <p>
                                <asp:Literal ID="litNoAddressDefined" runat="server" meta:resourcekey="litNoAddressDefined" />
                            </p>
                            <div class="buttons">
                                <ul>
                                    <li>
                                        <asp:LinkButton runat="server" ID="btnNewAddress" OnClick="btnNewAddres_Click" meta:resourceKey="btnNewAddress" SkinID="Minor" />
                                    </li>
                                </ul>
                            </div>
                        </fieldset>
                    </asp:View>
                    <asp:View runat="server" ID="vHasAddress">
                        <div class="addresses">
                            <div>
                                <fieldset>
                                    <legend>
                                        <asp:Literal ID="litBillingAddress" runat="server" meta:resourcekey="litBillingAddress" />
                                    </legend>
                                    <mag:OrderAddress ID="moaBilling" runat="server" Type="Billing" OnAddressChanged="moaBilling_AddressChanged" />
                                </fieldset>
                            </div>
                            <div>
                                <fieldset runat="server">
                                    <legend>
                                        <asp:Literal ID="litShippingAddress" runat="server" meta:resourcekey="litShippingAddress" />
                                    </legend>
                                    <asp:MultiView ID="mvShippingAddress" runat="server">
                                        <asp:View ID="vShippingAddress" runat="server">
                                            <mag:OrderAddress ID="moaShipping" runat="server" Type="Shipping" OnAddressChanged="moaShipping_AddressChanged" />
                                        </asp:View>
                                        <asp:View ID="vEmptyShippingAddress" runat="server">
                                            <p>
                                                <asp:Literal ID="litEmptyShippingAddress" runat="server" meta:resourcekey="litEmptyShippingAddress" />
                                            </p>
                                        </asp:View>
                                    </asp:MultiView>
                                </fieldset>
                            </div>
                        </div>
                    </asp:View>
                </asp:MultiView>
            </div>
        </div>
    </asp:View>
    <asp:View runat="server" ID="vPaymentDetail">
        <mag:Payments runat="server" ID="ucPayment" OnChanged="ucPayment_Changed" />
    </asp:View>
</asp:MultiView>
<div id="bComments" runat="server" class="popin comments">
    <header>
        <h4>
            <asp:Literal ID="litComments" runat="server" meta:resourcekey="litComments" />
        </h4>
    </header>
    <div>
        <asp:UpdatePanel runat="server" ChildrenAsTriggers="true" UpdateMode="Always">
            <ContentTemplate>
                <mag:CommentsEditor ID="mceCommon" runat="server" OnCommentsChanged="mceCommon_CommentsChanged" />
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
</div>
<div id="bAdditionalData" runat="server" class="popin additionalData">
    <header>
        <h4>
            <asp:Literal ID="litAdditionalData2" runat="server" meta:resourcekey="litAdditionalData" />
        </h4>
    </header>
    <div>
        <asp:UpdatePanel runat="server" ChildrenAsTriggers="true" UpdateMode="Always">
            <ContentTemplate>
                <mag:AdditionalDataEditor ID="madeCommon" runat="server" OnAdditionalDataChanged="madeCommon_AdditionalDataChanged" />
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
</div>
<div id="bLineItemProductDetails" runat="server" class="popin lineItemProductDetails">
    <header>
        <h4>
            <asp:Literal ID="litLineItemProductDetails" runat="server" meta:resourcekey="litLineItemProductDetails" />
        </h4>
    </header>
    <div>
        <asp:UpdatePanel runat="server" ChildrenAsTriggers="true" UpdateMode="Always">
            <ContentTemplate>
                <mag:GridView ID="mgvProductDetailsLineItem" runat="server" AllowPaging="false" OnItemDataBound="mgvProductDetailsLineItem_ItemDataBound">
                    <columns>
                         <mag:GridViewColumn ID="mgvcCode" runat="server" AllowSorting="true" SortExpression="Code" meta:resourcekey="mgvcCode">
                            <celltemplate>
                                <asp:Literal runat="server" Text='<%# Eval("Code") %>' />
                            </celltemplate>
                        </mag:GridViewColumn>
                        <mag:GridViewColumn ID="mgvcValue" runat="server" AllowSorting="false" meta:resourcekey="mgvcValue">
                            <celltemplate>
                                <asp:MultiView ID="mvValue" runat="server">
                                    <asp:View ID="vBoolean" runat="server">
                                        <asp:CheckBox ID="cbxBoolean" runat="server" Enabled="false" />
                                    </asp:View>
                                    <asp:View ID="vInteger" runat="server">
                                        <asp:Literal ID="litInteger" runat="server" />
                                    </asp:View>
                                    <asp:View ID="vDecimal" runat="server">
                                        <asp:Literal ID="litDecimal" runat="server" />
                                    </asp:View>
                                    <asp:View ID="vDateTime" runat="server">
                                        <asp:Literal ID="litDateTime" runat="server" />
                                    </asp:View>
                                    <asp:View ID="vList" runat="server">
                                        <asp:Literal ID="litList" runat="server" />
                                    </asp:View>
                                    <asp:View ID="vString" runat="server">
                                        <asp:Literal ID="litString" runat="server" />
                                    </asp:View>
                                    <asp:View ID="vFiles" runat="server">
                                        <asp:Repeater ID="rptFiles" runat="server">
                                            <HeaderTemplate><ul></HeaderTemplate>
                                            <FooterTemplate></ul></FooterTemplate>
                                            <ItemTemplate>
                                                <li>
                                                    <asp:HyperLink ID="hlFile" runat="server" Target="_blank" NavigateUrl='<%# Eval("Path") %>' Text='<%# Eval("Path") %>'/>
                                                </li>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                    </asp:View>
                                </asp:MultiView>
                            </celltemplate>
                        </mag:GridViewColumn>
                    </columns>
                </mag:GridView>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
</div>
