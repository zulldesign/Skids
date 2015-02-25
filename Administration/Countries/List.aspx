<%@ Page Title="" Language="C#" MasterPageFile="~/App_Masters/DefaultLayout.Master"
    EnableEventValidation="false" AutoEventWireup="true" CodeBehind="List.aspx.cs"
    Inherits="Magelia.WebStore.Admin.Administration.Countries.List" %>

<asp:Content ContentPlaceHolderID="cphBarTitle" runat="server">
    <asp:Literal runat="server" meta:resourcekey="litCountries" />
</asp:Content>
<asp:Content ContentPlaceHolderID="cphBarContent" runat="server">
    <ul>
        <li>
            <asp:HyperLink runat="server" NavigateUrl="~/Administration/Countries/Edit.aspx"
                Text='<%$ resources:global, AddNew %>' SkinID="Major" />
        </li>
    </ul>
</asp:Content>
<asp:Content ContentPlaceHolderID="cphBody" runat="server">
    <mag:SearchPanel runat="server" DefaultButton="lbtnSearch">
        <div class="field">
            <asp:Label ID="lblInvariantName" runat="server" AssociatedControlID="tbxInvariantName"
                meta:resourcekey="lblInvariantName" />
            <asp:TextBox ID="tbxInvariantName" runat="server" />
        </div>
        <div class="field">
            <asp:Label ID="lblLocalizedName" runat="server" AssociatedControlID="tbxLocalizedName"
                meta:resourcekey="lblLocalizedName" />
            <asp:TextBox ID="tbxLocalizedName" runat="server" />
        </div>
        <div class="field">
            <asp:Label ID="lblISONumeric" runat="server" AssociatedControlID="tbxISONumeric"
                meta:resourcekey="lblISONumeric" />
            <asp:TextBox ID="tbxISONumeric" runat="server" />
            <asp:CompareValidator ID="cvISONumericIsInteger" runat="server" ValidationGroup="vgSearch"
                ControlToValidate="tbxISONumeric" Type="Integer" Operator="DataTypeCheck" meta:resourcekey="cvISONumericIsInteger" />
        </div>
        <div class="field">
            <asp:Label ID="lblIso2Code" runat="server" AssociatedControlID="tbxISO2Code" meta:resourcekey="lblIso2Code" />
            <asp:TextBox ID="tbxISO2Code" runat="server" />
        </div>
        <div class="field">
            <asp:Label ID="lblIso3Code" runat="server" AssociatedControlID="tbxISO3Code" meta:resourcekey="lblIso3Code" />
            <asp:TextBox ID="tbxISO3Code" runat="server" />
        </div>
        <div class="field">
            <asp:Label ID="lblCurrency" runat="server" AssociatedControlID="ddlCurrencies" meta:resourcekey="lblCurrency" />
            <asp:DropDownList ID="ddlCurrencies" runat="server" AppendDataBoundItems="true" DataTextField="Name"
                DataValueField="CurrencyId">
                <asp:ListItem />
            </asp:DropDownList>
        </div>
        <div class="field">
            <asp:Label ID="lblContinent" runat="server" meta:resourcekey="lblContinent" AssociatedControlID="ddlContinents" />
            <asp:DropDownList ID="ddlContinents" runat="server" AppendDataBoundItems="true" DataTextField="Name"
                DataValueField="ContinentId">
                <asp:ListItem />
            </asp:DropDownList>
        </div>
        <div class="buttons">
            <ul>
                <li>
                    <asp:LinkButton ID="lbtnReset" runat="server" Text="<%$ Resources:Global, Reset %>"
                        SkinID="Minor" OnClick="lbtnReset_Click" />
                </li>
                <li>
                    <asp:LinkButton ID="lbtnSearch" runat="server" Text="<%$ Resources:Global, Search %>"
                        SkinID="Major" OnClick="lbtnSearch_Click" />
                </li>
            </ul>
        </div>
    </mag:SearchPanel>
    <mag:Gridview runat="server" ID="mgvCountries" DataKeyNames="CountryId" OnCommand="mgvCountries_Command"
        ShowSelectionColumn="true">
        <commandbuttons>
            <mag:CommandButton Text="<%$ Resources: Global, Delete %>" CommandName="DeleteCountries"
                OnClientClick='<%$ resources:global, ClientClickConfirmDeletion %>' />
        </commandbuttons>
        <columns>
            <mag:GridViewColumn AllowSorting="true" SortExpression="InvariantName" meta:resourcekey="mgvcInvariantName">
                <celltemplate>
                        <asp:Literal runat="server" Text='<%# Eval("InvariantName") %>' />
                </celltemplate>
            </mag:GridViewColumn>
            <mag:GridViewColumn AllowSorting="true" SortExpression="LocalizedName" meta:resourcekey="mgvcLocalizedName">
                <celltemplate>
                        <asp:Literal runat="server" Text='<%# Eval("LocalizedName") %>' />
                </celltemplate>
            </mag:GridViewColumn>
            <mag:GridViewColumn AllowSorting="true" CssClass="numeric" SortExpression="CountryId" meta:resourcekey="mgvcISONumericCode">
                <celltemplate>
                        <asp:Literal runat="server" Text='<%# Eval("CountryId") %>' />
                    </celltemplate>
            </mag:GridViewColumn>
            <mag:GridViewColumn AllowSorting="true" SortExpression="ISO2Code" meta:resourcekey="mgvcISO2Code">
                <celltemplate>
                        <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("ISO2Code") %>' />
                    </celltemplate>
            </mag:GridViewColumn>
            <mag:GridViewColumn AllowSorting="true" SortExpression="ISO3Code" meta:resourcekey="mgvcISO3Code">
                <celltemplate>
                        <asp:Literal runat="server" Text='<%# Eval("ISO3Code") %>' />
                    </celltemplate>
            </mag:GridViewColumn>
            <mag:GridViewColumn AllowSorting="true" SortExpression="CurrencyName" meta:resourcekey="mgvcCurrency">
                <celltemplate>
                        <asp:Literal runat="server" Text='<%# Eval("CurrencyName") %>' />
                </celltemplate>
            </mag:GridViewColumn>
            <mag:GridViewColumn AllowSorting="true" SortExpression="ContinentName" meta:resourcekey="mgvcContinent">
                <celltemplate>
                        <asp:Literal runat="server" Text='<%# Eval("ContinentName") %>' />
                    </celltemplate>
            </mag:GridViewColumn>
            <mag:GridViewColumn Name="<%$ Resources: Global, Action %>">
                <celltemplate>
                        <ul>
                            <li>
                                <asp:ImageButton runat="server" SkinID="Edit" ToolTip='<%$ resources:global,Edit %>' CommandName="EditCountry"  />
                            </li>
                            <li>
                                <asp:ImageButton runat="server" SkinID="Delete" ToolTip='<%$ resources:global,Delete %>' CommandName="DeleteCountry" OnClientClick='<%$ resources:global, ClientClickConfirmDeletion %>' />
                            </li>
                        </ul>
                    </celltemplate>
            </mag:GridViewColumn>
        </columns>
    </mag:Gridview>
</asp:Content>
