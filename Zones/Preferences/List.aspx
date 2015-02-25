<%@ Page Title="" Language="C#" MasterPageFile="~/App_Masters/DefaultLayout.Master"
    AutoEventWireup="true" CodeBehind="List.aspx.cs" Inherits="Magelia.WebStore.Admin.Zones.Preferences.List" %>

<asp:Content ContentPlaceHolderID="cphBarTitle" runat="server">
    <asp:Literal ID="litPreferences" runat="server" meta:resourcekey="litPreferences" />
</asp:Content>
<asp:Content ContentPlaceHolderID="cphBarContent" runat="server">
    <mag:FeaturePanel runat="server" Tag="Ul" Level="CreateAndDelete">
        <li>
            <asp:HyperLink runat="server" Text='<%$ resources:global, AddNew %>' SkinID="Major"
                NavigateUrl="~/Zones/Preferences/Edit.aspx" />
        </li>
    </mag:FeaturePanel>
</asp:Content>
<asp:Content ContentPlaceHolderID="cphBody" runat="server">
    <mag:SearchPanel runat="server" DefaultButton="lbtnSearch">
        <div class="field">
            <asp:Label ID="lblCountry" runat="server" AssociatedControlID="ddlCountries" meta:resourcekey="lblCountry" />
            <mag:DropDownList ID="ddlCountries" runat="server" AppendDataBoundItems="true" DataValueField="CountryId" DataTextField="Name" GroupByTextField="ContinentName" GroupByValueField="ContinentId">
                <asp:ListItem />
            </mag:DropDownList>
        </div>
        <div class="field">
            <asp:Label ID="lblTaxZone" runat="server" AssociatedControlID="ddlTaxZones" meta:resourcekey="lblTaxZone" />
            <asp:DropDownList ID="ddlTaxZones" runat="server" AppendDataBoundItems="true" DataValueField="TaxZoneId" DataTextField="Code">
                <asp:ListItem />
            </asp:DropDownList>
        </div>
        <div class="field">
            <asp:Label ID="lblShippingZone" runat="server" AssociatedControlID="ddlShippingZones" meta:resourcekey="lblShippingZone" />
            <asp:DropDownList ID="ddlShippingZones" runat="server" AppendDataBoundItems="true" DataValueField="ShippingZoneId" DataTextField="Code">
                <asp:ListItem />
            </asp:DropDownList>
        </div>
        <div class="buttons">
            <ul>
                <li>
                    <asp:LinkButton ID="lbtnReset" runat="server" Text='<%$ resources:global, Reset %>' SkinID="Minor" OnClick="lbtnReset_Click" />
                </li>
                <li>
                    <asp:LinkButton ID="lbtnSearch" runat="server" Text='<%$ resources:global, Search %>' SkinID="Major" OnClick="lbtnSearch_Click" />
                </li>
            </ul>
        </div>
    </mag:SearchPanel>
    <mag:Gridview ID="mgvPreferences" runat="server" AllowPaging="true" DataKeyNames="GeographicZonePreferenceId"
        ShowSelectionColumn="true" OnCommand="mgvPreferences_Command">
        <commandbuttons>
            <mag:CommandButton runat="server" Text='<%$ resources:global, Delete %>' CommandName="DeletePreferences" OnClientClick='<%$ resources:global, ClientClickConfirmDeletion %>' />
        </commandbuttons>
        <columns>
            <mag:GridViewColumn ID="mgvcCountry" runat="server" AllowSorting="true" SortExpression="CountryName" meta:resourcekey="mgvcCountry">
                <celltemplate>
                    <asp:Literal runat="server" Text='<%# Eval("CountryName") %>' />
                </celltemplate>
            </mag:GridViewColumn>
            <mag:GridViewColumn ID="mgvcTaxZone" runat="server" AllowSorting="true" SortExpression="TaxZoneCode" meta:resourcekey="mgvcTaxZone">
                <celltemplate>
                    <asp:Literal runat="server" Text='<%# Eval("TaxZoneCode") %>' />
                </celltemplate>
            </mag:GridViewColumn>
            <mag:GridViewColumn ID="mgvcShippingZone" runat="server" AllowSorting="true" SortExpression="ShippingZoneCode" meta:resourcekey="mgvcShippingZone">
                <celltemplate>
                    <asp:Literal runat="server" Text='<%# Eval("ShippingZoneCode") %>' />
                </celltemplate>
            </mag:GridViewColumn>
            <mag:GridViewColumn ID="mgvcCurrency" runat="server" AllowSorting="true" SortExpression="CurrencyName" meta:resourcekey="mgvcCurrency">
                <celltemplate>
                    <asp:Literal runat="server" Text='<%# Eval("CurrencyName") %>' />
                </celltemplate>
            </mag:GridViewColumn>
            <mag:GridViewColumn ID="mgvcCulture" runat="server" AllowSorting="true" SortExpression="CultureName" meta:resourcekey="mgvcCulture">
                <celltemplate>
                    <asp:Literal runat="server" Text='<%# Eval("CultureName") %>' />
                </celltemplate>
            </mag:GridViewColumn>
            <mag:GridViewColumn runat="server" AllowSorting="false" Name='<%$ resources:global, Action %>'>
                <celltemplate>
                    <ul>
                        <li>
                            <asp:ImageButton runat="server" CommandName="EditPreference" SkinID="Edit" ToolTip='<%$ resources:global,Edit %>' />
                        </li>
                        <mag:FeaturePanel runat="server" Tag="Li" Level="CreateAndDelete">
                            <asp:ImageButton runat="server" CommandName="DeletePreferences" SkinID="Delete" ToolTip='<%$ resources:global,Delete %>' OnClientClick='<%$ resources:global, ClientClickConfirmDeletion %>'/>
                        </mag:FeaturePanel>
                    </ul>
                </celltemplate>
            </mag:GridViewColumn>
        </columns>
    </mag:Gridview>
</asp:Content>
