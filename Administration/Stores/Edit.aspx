<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/App_Masters/DefaultLayout.Master" CodeBehind="Edit.aspx.cs" Inherits="Magelia.WebStore.Admin.Administration.Stores.Edit" %>

<asp:Content ContentPlaceHolderID="cphBarTitle" runat="server">
    <asp:Literal ID="litStore" runat="server" meta:resourcekey="litStore" />
</asp:Content>
<asp:Content ContentPlaceHolderID="cphBarContent" runat="server">
    <ul>
        <li id="iSave" runat="server">
            <asp:LinkButton runat="server" SkinID="Major" ValidationGroup="vgStore" ID="lbtnSave" Text='<%$ Resources:Global, Save %>' OnClick="lbtnSave_Click" />
        </li>
    </ul>
</asp:Content>
<asp:Content ContentPlaceHolderID="cphBody" runat="server">
    <script type="text/javascript">
        $(function () {
            var tbxCustomerSetCode = $('#<%= this.tbxCustomerSetCode.ClientID %>');
            $('#<%= this.tbxCode.ClientID %>').change(function () {
                if (tbxCustomerSetCode.val() == '') {
                    tbxCustomerSetCode.val($(this).val());
                }
            });
        });
    </script>
    <div class="form">
        <asp:ValidationSummary runat="server" ID="vsStore" HeaderText="<%$ Resources:Global, ErrorMsgText %>" ValidationGroup="vgStore" />
        <fieldset>
            <legend>
                <asp:Literal runat="server" Text='<%$ resources:global, Properties %>' /></legend>
            <div class="field">
                <asp:Label ID="lblCode" meta:resourcekey="lblCode" AssociatedControlID="tbxCode" runat="server" />
                <asp:TextBox ID="tbxCode" runat="server" />
                <asp:RequiredFieldValidator ID="rfvCode" ControlToValidate="tbxCode" runat="server" meta:resourcekey="rfvCode" ValidationGroup="vgStore" />
                <asp:RegularExpressionValidator ID="revCodeLength" runat="server" ValidationGroup="vgStore" meta:resourcekey="revCodeLength" ControlToValidate="tbxCode" ValidationExpression="^.{0,50}$" />
                <asp:CustomValidator ID="cvCodeIsUnique" runat="server" ControlToValidate="tbxCode" OnServerValidate="cvCodeIsUnique_ServerValidate" ValidationGroup="vgStore" meta:resourcekey="cvCodeIsUnique" />
            </div>
            <div class="field">
                <asp:Label ID="lblDefaultCountry" runat="server" meta:resourcekey="lblDefaultCountry" AssociatedControlID="ddlDefaultCountries" />
                <mag:DropDownList ID="ddlDefaultCountries" runat="server" DataTextField="Name" DataValueField="CountryId" AppendDataBoundItems="true" GroupByTextField="ContinentName" GroupByValueField="ContinentId">
                    <asp:ListItem />
                </mag:DropDownList>
                <asp:RequiredFieldValidator ID="rfvDefaultCountry" ControlToValidate="ddlDefaultCountries" runat="server" meta:resourcekey="rfvDefaultCountry" ValidationGroup="vgStore" />
            </div>
            <div id="bStoreId" class="field">
                <asp:Label ID="lblStoreId" runat="server" meta:resourceKey="lblStoreId" AssociatedControlID="tbxStoreId" />
                <asp:TextBox ID="tbxStoreId" runat="server" ReadOnly="true" />
                <asp:CustomValidator ID="cvStoreId" runat="server" ControlToValidate="tbxStoreId" OnServerValidate="cvStoreId_ServerValidate" ValidationGroup="vgStore" meta:resourcekey="cvStoreId" />
            </div>
            <div class="field">
                <asp:Label runat="server" AssociatedControlID="cbxIsActive" meta:resourcekey="lblIsActive" />
                <asp:CheckBox ID="cbxIsActive" runat="server" />
            </div>
            <mag:DynamicControl ID="dcSettings" runat="server" />
        </fieldset>
        <fieldset>
            <legend>
                <asp:Literal runat="server" meta:resourcekey="litStoreConfiguration" /></legend>
            <div class="field inline">
                <asp:Label runat="server" meta:resourcekey="lblStoreConfiguration" AssociatedControlID="ddlStoreConfigurations" />
                <asp:DropDownList runat="server" ID="ddlStoreConfigurations" DataTextField="Code" DataValueField="StoreConfigurationId" />
                <asp:RequiredFieldValidator ID="rfvStoreConfiguration" runat="server" ControlToValidate="ddlStoreConfigurations" ValidationGroup="vgStore" meta:resourcekey="rfvStoreConfiguration" />
            </div>
        </fieldset>
        <fieldset>
            <legend>
                <asp:Literal ID="litCustomerSet" runat="server" meta:resourcekey="litCustomerSet" />
            </legend>
            <div class="field inline">
                <asp:Label ID="lblNewCustomerSet" runat="server" meta:resourcekey="lblNewCustomerSet" AssociatedControlID="cbxNewCustomerSet" />
                <asp:CheckBox ID="cbxNewCustomerSet" runat="server" Checked="true" OnCheckedChanged="cbxNewCustomerSet_CheckChanged" AutoPostBack="true" />
            </div>
            <div class="field inline break">
                <asp:MultiView ID="mvCustomerSet" runat="server" ActiveViewIndex="0">
                    <asp:View ID="vNewCustomerSet" runat="server">
                        <asp:Label ID="lblCustomerSet" runat="server" AssociatedControlID="tbxCustomerSetCode" meta:resourcekey="lblCustomerSet" />
                        <asp:TextBox ID="tbxCustomerSetCode" runat="server" MaxLength="50" />
                        <asp:RequiredFieldValidator ID="rfvCustomerSetCode" runat="server" ControlToValidate="tbxCustomerSetCode" meta:resourcekey="rfvCustomerSetCode" ValidationGroup="vgStore" />
                        <asp:RegularExpressionValidator ID="revCustomerSetCodeLength" runat="server" ValidationGroup="vgStore" meta:resourcekey="revCustomerSetCodeLength" ControlToValidate="tbxCustomerSetCode" ValidationExpression="^.{0,50}$" />
                        <asp:CustomValidator ID="cvCustomerSetCodeIsUnique" runat="server" ControlToValidate="tbxCustomerSetCode" ValidationGroup="vgStore" meta:resourcekey="cvCustomerSetCodeIsUnique" OnServerValidate="cvCustomerSetCodeIsUnique_ServerValidate" />
                    </asp:View>
                    <asp:View ID="vExistingCustomerSets" runat="server">
                        <asp:Label ID="lblExistingCustomerSets" runat="server" meta:resourcekey="lblExistingCustomerSets" AssociatedControlID="ddlCustomerSets" />
                        <asp:DropDownList ID="ddlCustomerSets" runat="server" DataTextField="Code" DataValueField="CustomerSetId" />
                        <asp:RequiredFieldValidator ID="rfvCustomerSet" runat="server" ControlToValidate="ddlCustomerSets" meta:resourcekey="rfvCustomerSet" ValidationGroup="vgStore" />
                    </asp:View>
                </asp:MultiView>
            </div>
        </fieldset>
        <fieldset>
            <legend>
                <asp:Literal ID="litLocalizations" runat="server" meta:resourcekey="litLocalizations" />
            </legend>
            <mag:Localizer ID="mlStore" runat="server">
                <localizablefields>
                    <mag:LocalizableField PropertyName="Name" Editor="SingleLineString" MaxLength="50" meta:resourcekey="lfName" />
                    <mag:LocalizableField PropertyName="Description" Required="false" Editor="MultiLineString" meta:resourcekey="lfDescription" />
                </localizablefields>
            </mag:Localizer>
        </fieldset>
        <fieldset>
            <legend>
                <asp:Literal ID="litCultures" runat="server" meta:resourcekey="litCultures" />
            </legend>
            <mag:SwapGrid runat="server" ID="sgCultures" ValidationGroup="vgStoreForm" OnSwap="sgCultures_Swap" />
            <asp:CustomValidator ID="cvDefaultCultureRequired" runat="server" ValidationGroup="vgStore" meta:resourcekey="cvDefaultCultureRequired" OnServerValidate="cvDefaultCultureRequired_ServerValidate" />
        </fieldset>
        <fieldset>
            <legend>
                <asp:Literal ID="litCatalogs" runat="server" meta:resourcekey="litCatalogs" />
            </legend>
            <mag:SwapList runat="server" ID="slCatalogs" DataTextField="Code" DataValueField="CatalogId" meta:resourcekey="slCatalogs" />
        </fieldset>
        <fieldset>
            <legend>
                <asp:Literal runat="server" meta:resourcekey="litCurrencies" />
            </legend>
            <mag:SwapList runat="server" ID="slCurrencies" DataTextField="Code" DataValueField="CurrencyId" meta:resourcekey="slCurrencies" OnItemsAdded="slCurrencies_ItemsAdded" OnItemsRemoved="slCurrencies_ItemsRemoved" />
            <div class="field inline">
                <asp:Label runat="server" AssociatedControlID="ddlDefaultCurrency" meta:resourcekey="lblDefaultCurrency" />
                <asp:DropDownList runat="server" ID="ddlDefaultCurrency" DataTextField="Code" DataValueField="CurrencyId" />
                <asp:RequiredFieldValidator ID="rfvDefaultCurrency" runat="server" meta:resourcekey="rfvDefaultCurrency" ValidationGroup="vgStore" ControlToValidate="ddlDefaultCurrency" />
            </div>
        </fieldset>
        <fieldset>
            <legend>
                <asp:Literal runat="server" meta:resourcekey="litLegendOrderChannels" />
            </legend>
            <mag:SwapList runat="server" ID="slOrderChannels" DataTextField="Code" DataValueField="OrderChannelId" meta:resourcekey="slOrderChannels" />
        </fieldset>
        <fieldset>
            <legend>
                <asp:Literal runat="server" meta:resourcekey="litLegendPaymentMode" />
            </legend>
            <mag:SwapList runat="server" ID="slPaymentModes" DataTextField="Code" DataValueField="PaymentModeId" meta:resourcekey="slPaymentModes" />
        </fieldset>
    </div>
</asp:Content>
