<%@ Page Title="" Language="C#" MasterPageFile="~/App_Masters/DefaultLayout.Master" EnableEventValidation="false" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="Magelia.WebStore.Admin.Administration.Countries.Edit" %>

<asp:Content ContentPlaceHolderID="cphBarTitle" runat="server">
    <asp:Literal ID="litCountry" runat="server" meta:resourcekey="litCountry" />
</asp:Content>
<asp:Content ContentPlaceHolderID="cphBarContent" runat="server">
    <ul>
        <li>
            <asp:HyperLink runat="server" Text='<%$ resources:global, Cancel %>' NavigateUrl="~/Administration/Countries/List.aspx" SkinID="Minor" />
        </li>
        <li>
            <asp:LinkButton ID="lbtnSave" runat="server" Text='<%$ resources:global, Save %>' SkinID="Major" OnClick="lbtnSave_Click" ValidationGroup="vgCountry" />
        </li>
    </ul>
</asp:Content>
<asp:Content ContentPlaceHolderID="cphBody" runat="server">
    <asp:ValidationSummary runat="server" HeaderText="<%$ Resources:Global, ErrorMsgText %>" ValidationGroup="vgCountry" />
    <mag:TabStrip runat="server" ValidationGroup="vgCountry" MultiViewID="mvGlobal">
        <TabItems>
            <mag:TabItem meta:resourceKey="mtiGeneral" Text='<%$ resources:global, General %>' />
            <mag:TabItem meta:resourceKey="mtiContentItems" Text='<%$ resources:global, ContentItems %>' />
        </TabItems>
    </mag:TabStrip>
    <div class="form">
        <asp:MultiView ID="mvGlobal" runat="server" ActiveViewIndex="0">
            <asp:View runat="server">
                <fieldset>
                    <legend>
                        <asp:Literal runat="server" Text='<%$ resources:Global, Properties %>' />
                    </legend>
                    <div class="field">
                        <asp:Label ID="lblContinent" runat="server" AssociatedControlID="ddlContinents" meta:resourcekey="lblContinent" />
                        <asp:DropDownList ID="ddlContinents" runat="server" AppendDataBoundItems="true" DataTextField="Name" DataValueField="ContinentId">
                            <asp:ListItem />
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rfvContinent" runat="server" ValidationGroup="vgCountry" ControlToValidate="ddlContinents" meta:resourcekey="rfvContinent" />
                    </div>
                    <div class="field">
                        <asp:Label ID="lblISONumericCode" runat="server" AssociatedControlID="tbxISONumericCode" meta:resourcekey="lblISONumericCode" />
                        <asp:TextBox ID="tbxISONumericCode" runat="server" CssClass="numeric" />
                        <asp:RequiredFieldValidator ID="rfvISONumericCode" runat="server" ValidationGroup="vgCountry" ControlToValidate="tbxISONumericCode" meta:resourcekey="rfvISONumericCode" />
                        <asp:CompareValidator ID="cvISONumericCodeIsInteger" runat="server" ValidationGroup="vgCountry" Operator="DataTypeCheck" Type="Integer" ControlToValidate="tbxISONumericCode" meta:resourcekey="cvISONumericCodeIsInteger" />
                        <asp:CustomValidator ID="cvISONumericeCodeIsUnique" runat="server" ValidationGroup="vgCountry" OnServerValidate="cvISONumericeCodeIsUnique_ServerValidate" meta:resourcekey="cvISONumericeCodeIsUnique" />
                    </div>
                    <div class="field">
                        <asp:Label ID="lblISO2Code" runat="server" meta:resourcekey="lblISO2Code" AssociatedControlID="tbxISO2Code" />
                        <asp:TextBox ID="tbxISO2Code" runat="server" />
                        <asp:RequiredFieldValidator ID="rfvISO2Code" runat="server" ValidationGroup="vgCountry" ControlToValidate="tbxISO2Code" meta:resourcekey="rfvISO2Code" />
                        <asp:RegularExpressionValidator ID="revISO2CodeLength" runat="server" ValidationGroup="vgCountry" ControlToValidate="tbxISO2Code" meta:resourcekey="revISO2CodeLength" ValidationExpression="^.{2}$" />
                        <asp:CustomValidator ID="cvISO2CodeIsUnique" runat="server" ValidationGroup="vgCountry" OnServerValidate="cvISO2CodeIsUnique_ServerValidate" meta:resourcekey="cvISO2CodeIsUnique" />
                    </div>
                    <div class="field">
                        <asp:Label ID="lblISO3Code" runat="server" meta:resourcekey="lblISO3Code" AssociatedControlID="tbxISO3Code" />
                        <asp:TextBox ID="tbxISO3Code" runat="server" />
                        <asp:RequiredFieldValidator ID="rfvISO3Code" runat="server" ValidationGroup="vgCountry" ControlToValidate="tbxISO3Code" meta:resourcekey="rfvISO3Code" />
                        <asp:RegularExpressionValidator ID="revISO3CodeLength" runat="server" ValidationGroup="vgCountry" ControlToValidate="tbxISO3Code" meta:resourcekey="revISO3CodeLength" ValidationExpression="^.{3}$" />
                        <asp:CustomValidator ID="cvISO3CodeIsUnique" runat="server" ValidationGroup="vgCountry" OnServerValidate="cvISO3CodeIsUnique_ServerValidate" meta:resourcekey="cvISO3CodeIsUnique" />
                    </div>
                    <div class="field">
                        <asp:Label ID="lblCurrency" runat="server" AssociatedControlID="ddlCurrencies" meta:resourcekey="lblCurrency" />
                        <asp:DropDownList ID="ddlCurrencies" runat="server" AppendDataBoundItems="true" DataTextField="Name" DataValueField="CurrencyId">
                            <asp:ListItem />
                        </asp:DropDownList>
                    </div>
                </fieldset>
                <fieldset>
                    <legend>
                        <asp:Literal runat="server" Text='<%$ resources:global, Localizations %>' />
                    </legend>
                    <mag:Localizer ID="mlCountry" runat="server" AllowInvariantDeleting="false">
                        <localizablefields>
                            <mag:LocalizableField PropertyName="Name" Editor="SingleLineString" meta:resourcekey="mlfName" />
                        </localizablefields>
                    </mag:Localizer>
                    <asp:CustomValidator ID="cvInvariantLocalizationRequired" runat="server" ValidationGroup="vgCountry" meta:resourcekey="cvInvariantLocalizationRequired" OnServerValidate="cvInvariantLocalizationRequired_ServerValidate" />
                </fieldset>
            </asp:View>
            <asp:View runat="server">
                <mag:AssociatedContentItems ID="mAssociatedContentItems" runat="server" ValidationGroup="vgCountry" />
            </asp:View>
        </asp:MultiView>
    </div>
</asp:Content>
