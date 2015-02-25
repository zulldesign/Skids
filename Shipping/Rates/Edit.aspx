<%@ Page Title="" Language="C#" MasterPageFile="~/App_Masters/DefaultLayout.Master" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="Magelia.WebStore.Admin.Shipping.Rates.Edit" %>

<asp:Content ContentPlaceHolderID="cphBarTitle" runat="server">
    <asp:Literal ID="litShippingRate" runat="server" meta:resourcekey="litShippingRate" />
</asp:Content>
<asp:Content ContentPlaceHolderID="cphBarContent" runat="server">
    <ul>
        <li>
            <asp:HyperLink runat="server" NavigateUrl="~/Shipping/Rates/List.aspx" Text='<%$ resources:global, Cancel %>' SkinID="Minor" />
        </li>
        <li id="iSave" runat="server">
            <asp:LinkButton ID="lbtnSave" runat="server" Text='<%$ resources:global, Save %>' SkinID="Major" ValidationGroup="vgShippingRate" OnClick="lbtnSave_Click" />
        </li>
    </ul>
</asp:Content>
<asp:Content ContentPlaceHolderID="cphBody" runat="server">
    <asp:ValidationSummary runat="server" ValidationGroup="vgShippingRate" HeaderText="<%$ Resources: Global, ErrorMsgText %>" />
    <mag:TabStrip runat="server" ValidationGroup="vgShippingRate" MultiViewID="mvGlobal">
        <TabItems>
            <mag:TabItem meta:resourceKey="mtiGeneral" Text='<%$ resources:global, General %>' />
        </TabItems>
    </mag:TabStrip>
    <div class="form">
        <asp:MultiView ID="mvGlobal" runat="server" ActiveViewIndex="0">
            <asp:View runat="server">
                <fieldset>
                    <legend>
                        <asp:Literal runat="server" Text='<%$ resources:global, Properties %>' />
                    </legend>
                    <div class="field">
                        <asp:Label ID="lblCode" runat="server" AssociatedControlID="tbxCode" meta:resourcekey="lblCode" />
                        <asp:TextBox ID="tbxCode" runat="server" />
                        <asp:RequiredFieldValidator ID="rfvCode" runat="server" ValidationGroup="vgShippingRate" ControlToValidate="tbxCode" meta:resourcekey="rfvCode" />
                        <asp:RegularExpressionValidator ID="revCodeLength" runat="server" ControlToValidate="tbxCode" ValidationExpression="^.{0,50}$" ValidationGroup="vgShippingRate" meta:resourcekey="revCode" />
                        <asp:CustomValidator ID="cvCodeIsUnique" runat="server" ValidationGroup="vgShippingRate" ControlToValidate="tbxCode" OnServerValidate="cvCodeIsUnique_ServerValidate" meta:resourcekey="cvCodeIsUnique" />
                    </div>
                    <div class="field">
                        <asp:Label ID="lblCarrier" runat="server" AssociatedControlID="ddlCarriers" meta:resourcekey="lblCarrier" />
                        <asp:DropDownList ID="ddlCarriers" runat="server" DataTextField="Code" DataValueField="CarrierId" AppendDataBoundItems="true">
                            <asp:ListItem />
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rfvCarrier" runat="server" ValidationGroup="vgShippingRate" ControlToValidate="ddlCarriers" meta:resourcekey="rfvCarrier" />
                    </div>
                    <div class="field">
                        <asp:Label ID="lblWarehouse" runat="server" AssociatedControlID="ddlWarehouses" meta:resourcekey="lblWarehouse" />
                        <asp:DropDownList ID="ddlWarehouses" runat="server" DataTextField="Code" DataValueField="WarehouseId" AppendDataBoundItems="true">
                            <asp:ListItem />
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rfvWarehouse" runat="server" ValidationGroup="vgShippingRate" ControlToValidate="ddlWarehouses" meta:resourcekey="rfvWarehouse" />
                    </div>
                    <div class="field">
                        <asp:Label ID="lblShippingZone" runat="server" AssociatedControlID="ddlShippingZones" meta:resourcekey="lblShippingZone" />
                        <asp:DropDownList ID="ddlShippingZones" runat="server" DataTextField="Code" DataValueField="GeographicZoneId" AppendDataBoundItems="true">
                            <asp:ListItem />
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rfvShippingZone" runat="server" ValidationGroup="vgShippingRate" ControlToValidate="ddlShippingZones" meta:resourcekey="rfvShippingZone" />
                    </div>
                </fieldset>
                <fieldset>
                    <legend>
                        <asp:Literal runat="server" meta:resourceKey="litStore" />
                    </legend>
                    <div class="field inline break">
                        <asp:Label runat="server" meta:resourcekey="lblIsSellerScope" AssociatedControlID="cbxIsSellerScope" />
                        <asp:CheckBox runat="server" ID="cbxIsSellerScope" Checked="true" AutoPostBack="true" OnCheckedChanged="cbxIsSellerScope_CheckedChanged" />
                    </div>
                    <asp:Panel runat="server" ID="pnlStores" CssClass="field inline break" Visible="false">
                        <mag:SwapList ID="mslStores" runat="server" meta:resourcekey="mslStores" DataTextField="Code" DataValueField="StoreId" />
                        <asp:RequiredFieldValidator ID="rfvStores" runat="server" ValidationGroup="vgShippingRate" ControlToValidate="mslStores" meta:resourcekey="rfvStores" />
                    </asp:Panel>
                </fieldset>
                <fieldset>
                    <legend>
                        <asp:Literal runat="server" Text='<%$ resources:global, Localizations %>' />
                    </legend>
                    <mag:Localizer ID="mlShippingRate" runat="server">
                        <localizablefields>
                            <mag:LocalizableField PropertyName="Description" meta:resourcekey="lfDescription" Editor="MultiLineString" />
                        </localizablefields>
                    </mag:Localizer>
                </fieldset>
                <fieldset id="fsTaxCategories" runat="server">
                    <legend>
                        <asp:Label ID="lblTaxCategories" runat="server" meta:resourcekey="lblTaxCategories" /></legend>
                    <div class="inline">
                        <mag:SwapList ID="mslTaxCategories" runat="server" meta:resourcekey="mslTaxCategories" DataTextField="Code" DataValueField="TaxCategoryId" />
                    </div>
                </fieldset>
                <fieldset>
                    <legend>
                        <asp:Literal runat="server" ID="litValues" meta:resourcekey="litValues" />
                    </legend>
                    <asp:ValidationSummary runat="server" ValidationGroup="vgShippingRateValueInsert" HeaderText='<%$ resources:global, ErrorMsgText %>' />
                    <asp:ValidationSummary runat="server" ValidationGroup="vgShippingRateValueEdit" HeaderText='<%$ resources:global, ErrorMsgText %>' />
                    <div class="field inline break-after">
                        <asp:Label ID="lblCriteria" runat="server" meta:resourcekey="lblCriteria" AssociatedControlID="lblCriteria" />
                        <asp:DropDownList ID="ddlCriterias" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlCriterias_SelectedIndexChanged" DataValueField="Key" DataTextField="Value" />
                        <asp:RequiredFieldValidator ID="rfvCriteria" runat="server" ControlToValidate="ddlCriterias" ValidationGroup="vgShippingRate" meta:resourcekey="rfvCriteria" />
                    </div>
                    <asp:MultiView runat="server" ID="mvShippingRateValue" />
                </fieldset>
            </asp:View>
        </asp:MultiView>
    </div>
</asp:Content>
