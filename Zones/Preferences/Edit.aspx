<%@ Page Title="" Language="C#" MasterPageFile="~/App_Masters/DefaultLayout.Master"
    AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="Magelia.WebStore.Admin.Zones.Preferences.Edit" %>

<asp:Content ContentPlaceHolderID="cphBarTitle" runat="server">
    <asp:Literal ID="litPreference" runat="server" meta:resourcekey="litPreference" />
</asp:Content>
<asp:Content ContentPlaceHolderID="cphBarContent" runat="server">
    <ul>
        <li>
            <asp:HyperLink runat="server" Text='<%$ resources:global, Cancel %>' SkinID="Minor"
                NavigateUrl="~/Zones/Preferences/List.aspx" />
        </li>
        <mag:FeaturePanel runat="server" Tag="Li" Level="Edit">
            <asp:LinkButton ID="lbtnSave" runat="server" ValidationGroup="vgPreference" SkinID="Major"
                Text='<%$ resources:global, Save %>' OnClick="lbtnSave_Click" />
        </mag:FeaturePanel>
    </ul>
</asp:Content>
<asp:Content ContentPlaceHolderID="cphBody" runat="server">
    <asp:ValidationSummary runat="server" ValidationGroup="vgPreference" HeaderText="<%$ Resources: Global, ErrorMsgText %>" />
    <div class="form">
        <fieldset>
            <legend>
                <asp:Literal runat="server" Text='<%$ resources:global, Properties %>' />
            </legend>
            <div class="field inline">
                <asp:Label ID="lblCountry" runat="server" meta:resourcekey="lblCountry" AssociatedControlID="ddlCountries" />
                <mag:DropDownList ID="ddlCountries" runat="server" DataValueField="CountryId" DataTextField="Name" AppendDataBoundItems="true" AutoPostBack="true" OnSelectedIndexChanged="ddlCountries_SelectedIndexChanged" GroupByTextField="ContinentName" GroupByValueField="ContinentId">
                    <asp:ListItem />
                </mag:DropDownList>
                <asp:RequiredFieldValidator ID="rfvCountry" runat="server" meta:resourcekey="rfvCountry" ControlToValidate="ddlCountries" ValidationGroup="vgPreference" />
                <asp:CustomValidator ID="cvPreferenceNotExists" runat="server" meta:resourcekey="cvPreferenceNotExists" ValidationGroup="vgPreference" ControlToValidate="ddlCountries" OnServerValidate="cvPreferenceNotExists_ServerValidate" />
            </div>
            <div id="bTaxZone" class="field inline break" runat="server" visible="false">
                <asp:Label ID="lblTaxZone" runat="server" meta:resourcekey="lblTaxZone" AssociatedControlID="ddlTaxZones" />
                <asp:DropDownList ID="ddlTaxZones" runat="server" DataValueField="TaxZoneId" DataTextField="Code" AppendDataBoundItems="false" />
            </div>
            <div id="bShippingZone" class="field inline break" runat="server" visible="false">
                <asp:Label ID="lblShippingZone" runat="server" meta:resourcekey="lblShippingZone" AssociatedControlID="ddlShippingZones" />
                <asp:DropDownList ID="ddlShippingZones" runat="server" DataValueField="ShippingZoneId" DataTextField="Code" AppendDataBoundItems="false" />
            </div>
            <div class="field inline break">
                <asp:Label ID="lblCurrency" runat="server" AssociatedControlID="ddlCurrencies" meta:resourcekey="lblCurrency" />
                <asp:DropDownList ID="ddlCurrencies" runat="server" DataTextField="Name" DataValueField="CurrencyId" AppendDataBoundItems="true">
                    <asp:ListItem />
                </asp:DropDownList>
            </div>
            <div class="field inline break">
                <asp:Label ID="lblCulture" runat="server" AssociatedControlID="ddlCultures" meta:resourcekey="lblCulture" />
                <asp:DropDownList ID="ddlCultures" runat="server" DataTextField="Name" DataValueField="CultureId" AppendDataBoundItems="true">
                    <asp:ListItem />
                </asp:DropDownList>
            </div>
            <asp:CustomValidator ID="cvAnyPreference" runat="server" meta:resourcekey="cvAnyPreference" ValidationGroup="vgPreference" OnServerValidate="cvAnyPreference_ServerValidate" />
        </fieldset>
    </div>
</asp:Content>
