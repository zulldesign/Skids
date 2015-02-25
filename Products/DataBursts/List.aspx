<%@ Page Title="" Language="C#" MasterPageFile="~/App_Masters/DefaultLayout.Master" AutoEventWireup="true" CodeBehind="List.aspx.cs" Inherits="Magelia.WebStore.Admin.Products.DataBursts.List" %>

<asp:Content ContentPlaceHolderID="cphBarTitle" runat="server">
    <asp:Literal ID="litDataBursts" runat="server" meta:resourcekey="litDataBursts" />
</asp:Content>
<asp:Content ContentPlaceHolderID="cphBarContent" runat="server">
    <mag:FeaturePanel runat="server" Level="CreateAndDelete" Tag="Ul">
        <li>
            <asp:LinkButton ID="lbtnGenerate" runat="server" meta:resourcekey="lbtnGenerate" SkinID="Major" OnClick="lbtnGenerate_Click" />
        </li>
    </mag:FeaturePanel>
</asp:Content>
<asp:Content ContentPlaceHolderID="cphBody" runat="server">
    <script type="text/javascript">
        $(
            function () {
                var tDataBurstConfigurationInsert = $('#<%= this.tDataBurstConfigurationInsert.ClientID %>');
                var insertRow = tDataBurstConfigurationInsert.find('tbody>tr');
                var gridViewBody = tDataBurstConfigurationInsert.next().find('table.gridView>tbody');

                if (gridViewBody.length == 0) {
                    insertRow.children().first().remove();
                    tDataBurstConfigurationInsert.find('thead>tr>th').first().remove();
                }
                else {
                    insertRow.prependTo(gridViewBody);
                    tDataBurstConfigurationInsert.remove();
                }
            }
        );
    </script>
    <fieldset id="bDataBurst">
        <legend>
            <asp:Literal ID="litInstructions" runat="server" meta:resourcekey="litInstructions" />
        </legend>
        <asp:Literal runat="server" meta:Resourcekey="litInfo" />
    </fieldset>
    <mag:SearchPanel runat="server" DefaultButton="lbtnSearch">
        <div class="field">
            <asp:Label ID="lblCountry" runat="server" meta:resourcekey="lblCountry" AssociatedControlID="ddlCountry" />
            <mag:DropDownList ID="ddlCountry" runat="server" DataTextField="Name" DataValueField="CountryId" />
        </div>
        <div class="field">
            <asp:Label ID="lblCurrency" runat="server" meta:resourcekey="lblCurrency" AssociatedControlID="ddlCurrencies" />
            <mag:DropDownList ID="ddlCurrencies" runat="server" AppendDataBoundItems="true" DataTextField="Name" DataValueField="CurrencyId">
                <asp:ListItem />
            </mag:DropDownList>
        </div>
        <div class="field">
            <asp:Label ID="lblCulture" runat="server" meta:resourcekey="lblCulture" AssociatedControlID="ddlCultures" />
            <mag:DropDownList ID="ddlCultures" runat="server" AppendDataBoundItems="true" DataTextField="Name" DataValueField="CultureId">
                <asp:ListItem />
            </mag:DropDownList>
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
    <fieldset>
        <legend>
            <asp:Literal ID="litDataConfigurations" runat="server" meta:resourcekey="litDataConfigurations" />
        </legend>
        <asp:ValidationSummary runat="server" ValidationGroup="vgDataBurstConfigurationInsert" HeaderText='<%$ Resources: Global, ErrorMsgText %>' />
        <mag:FeaturePanel ID="tDataBurstConfigurationInsert" runat="server" Tag="Table" Level="CreateAndDelete" CssClass="gridView">
            <thead>
                <tr>
                    <th></th>
                    <th>
                        <asp:Literal ID="litCountry" runat="server" meta:resourcekey="litCountry" /></th>
                    <th>
                        <asp:Literal ID="litCurrency" runat="server" meta:resourcekey="litCurrency" /></th>
                    <th>
                        <asp:Literal ID="litCulture" runat="server" meta:resourcekey="litCulture" /></th>
                    <th>
                        <asp:Literal ID="litAction" runat="server" Text='<%$ resources:global, Action %>' /></th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td></td>
                    <td>
                        <asp:ListBox ID="lbCountriesInsert" runat="server" DataTextField="Name" DataValueField="CountryId" SelectionMode="Multiple" />
                    </td>
                    <td>
                        <asp:ListBox ID="lbCurrenciesInsert" runat="server" DataTextField="Name" DataValueField="CurrencyId" SelectionMode="Multiple" />
                        <asp:RequiredFieldValidator ID="rfvCurrencyInsert" runat="server" ControlToValidate="lbCurrenciesInsert" ValidationGroup="vgDataBurstConfigurationInsert" meta:resourcekey="rfvCurrencyInsert" />
                    </td>
                    <td>
                        <asp:ListBox ID="lbCulturesInsert" runat="server" DataTextField="Name" DataValueField="CultureId" SelectionMode="Multiple" />
                        <asp:RequiredFieldValidator ID="rfvCultureInsert" runat="server" ControlToValidate="lbCulturesInsert" ValidationGroup="vgDataBurstConfigurationInsert" meta:resourcekey="rfvCultureInsert" />
                    </td>
                    <td>
                        <ul>
                            <li>
                                <asp:ImageButton ID="imgbtnDataBurstConfigurationInsert" runat="server" ValidationGroup="vgDataBurstConfigurationInsert" OnClick="imgbtnDataBurstConfigurationInsert_Click" SkinID="Add" />
                            </li>
                        </ul>
                    </td>
                </tr>
            </tbody>
        </mag:FeaturePanel>
        <mag:GridView ID="mgvDataBurstConfigurations" runat="server" AllowPaging="false" DataKeyNames="DataBurstConfigurationId" ShowSelectionColumn="true" OnCommand="mgvDataBurstConfigurations_Command">
            <commandbuttons>
            <mag:CommandButton runat="server" Text='<%$ resources:global, Delete %>' CommandName="DeleteDataBurstConfigurations" OnClientClick='<%$ resources:global, ClientClickConfirmDeletion %>' />
        </commandbuttons>
            <columns>
            <mag:GridViewColumn runat="server" AllowSorting="true" SortExpression="Country" meta:resourcekey="mgvcCountry">
                <celltemplate>
                    <asp:Literal runat="server" Text='<%# String.IsNullOrEmpty(((DataBurstConfigurationViewModel)Container.DataItem).Country) ? this.GetLocalResourceObject("AllOtherCountries") : ((DataBurstConfigurationViewModel)Container.DataItem).Country %>' />
                </celltemplate>
            </mag:GridViewColumn>
            <mag:GridViewColumn runat="server" AllowSorting="true" SortExpression="Currency" meta:resourcekey="mgvcCurrency">
                <celltemplate>
                    <asp:Literal runat="server" Text='<%# ((DataBurstConfigurationViewModel)Container.DataItem).Currency %>' />
                </celltemplate>
            </mag:GridViewColumn>
            <mag:GridViewColumn runat="server" AllowSorting="true" SortExpression="Culture" meta:resourcekey="mgvcCulture">
                <celltemplate>
                    <asp:Literal runat="server" Text='<%# ((DataBurstConfigurationViewModel)Container.DataItem).Culture%>' />
                </celltemplate>
            </mag:GridViewColumn>
            <mag:GridViewColumn runat="server" AllowSorting="false" Name='<%$ resources:global, Action %>'>
                <celltemplate>
                    <mag:FeaturePanel runat="server" Tag="Ul" Level="CreateAndDelete">
                         <li>
                            <asp:ImageButton runat="server" SkinID="Delete" ToolTip='<%$ resources:global,Delete %>' OnClientClick='<%$ resources:global, ClientClickConfirmDeletion %>' CommandName="DeleteDataBurstConfigurations" />
                         </li>
                    </mag:FeaturePanel>
                </celltemplate>
            </mag:GridViewColumn>
        </columns>
        </mag:GridView>
    </fieldset>
</asp:Content>
