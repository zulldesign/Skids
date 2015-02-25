<%@ Page Title="" Language="C#" MasterPageFile="~/App_Masters/DefaultLayout.Master" EnableEventValidation="false" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="Magelia.WebStore.Admin.Administration.Regions.Edit" %>

<asp:Content ContentPlaceHolderID="cphBarTitle" runat="server">
    <asp:Literal ID="litRegion" runat="server" meta:resourcekey="litRegion" />
</asp:Content>
<asp:Content ContentPlaceHolderID="cphBarContent" runat="server">
    <ul>
        <li>
            <asp:HyperLink runat="server" Text='<%$ resources:global, Cancel %>' NavigateUrl="~/Administration/Regions/List.aspx" SkinID="Minor" />
        </li>
        <li>
            <asp:LinkButton ID="lbtnSave" runat="server" Text='<%$ resources:global, Save %>' SkinID="Major" OnClick="lbtnSave_Click" ValidationGroup="vgRegion" />
        </li>
    </ul>
</asp:Content>
<asp:Content ContentPlaceHolderID="cphBody" runat="server">
    <asp:ValidationSummary runat="server" ValidationGroup="vgRegion" HeaderText="<%$ Resources:Global, ErrorMsgText %>" />
    <asp:CustomValidator runat="server" ID="cvInvariantLocalizationRequired" OnServerValidate="cvInvariantLocalizationRequired_ServerValidate" ValidationGroup="vgRegion" meta:resourcekey="cvInvariantLocalizationRequired" />
        <mag:TabStrip runat="server" ValidationGroup="vgRegion" MultiViewID="mvGlobal">
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
                        <asp:Literal runat="server" Text='<%$ Resources:Global, Properties %>' />
                    </legend>
                    <div class="field">
                        <asp:Label ID="lblCountry" runat="server" meta:resourcekey="lblCountry" AssociatedControlID="ddlCountries" />
                        <asp:DropDownList runat="server" AppendDataBoundItems="true" ID="ddlCountries" DataValueField="CountryId" DataTextField="Name">
                            <asp:ListItem />
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rfvCountry" runat="server" ValidationGroup="vgRegion" meta:resourcekey="rfvCountry" ControlToValidate="ddlCountries" />
                    </div>
                    <div class="field">
                        <asp:Label runat="server" meta:resourcekey="lblCode" AssociatedControlID="tbxCode" />
                        <asp:TextBox runat="server" ID="tbxCode" />
                        <asp:RegularExpressionValidator ID="revCodeLength" runat="server" ControlToValidate="tbxCode" ValidationExpression="^.{0,50}$" ValidationGroup="vgRegion" meta:resourcekey="revCodeLength" />
                        <asp:CustomValidator runat="server" ControlToValidate="tbxCode" ID="cvCodeIsUnique" OnServerValidate="cvCodeIsUnique_ServerValidate" ValidationGroup="vgRegion" meta:resourcekey="cvCodeIsUnique" />
                    </div>
                </fieldset>
                <fieldset>
                    <legend>
                        <asp:Literal runat="server" Text='<%$ resources:global, Localizations %>' />
                    </legend>
                    <mag:Localizer ID="mlRegion" runat="server" AllowInvariantDeleting="false">
                        <LocalizableFields>
                            <mag:LocalizableField PropertyName="Name" Editor="SingleLineString" meta:resourcekey="mlfName" />
                        </LocalizableFields>
                    </mag:Localizer>
                </fieldset>
            </asp:View>
            <asp:View runat="server">
                <mag:AssociatedContentItems ID="mAssociatedContentItems" runat="server" ValidationGroup="vgContentItems" />
            </asp:View>
        </asp:MultiView>
    </div>
</asp:Content>
