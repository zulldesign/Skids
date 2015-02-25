<%@ Page Title="" Language="C#" MasterPageFile="~/App_Masters/DefaultLayout.Master" EnableEventValidation="false" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="Magelia.WebStore.Admin.Administration.Continents.Edit" %>

<asp:Content ContentPlaceHolderID="cphBarTitle" runat="server">
    <asp:Literal ID="litContinent" runat="server" meta:resourcekey="litContinent" />
</asp:Content>
<asp:Content ContentPlaceHolderID="cphBarContent" runat="server">
    <ul>
        <li>
            <asp:HyperLink runat="server" Text='<%$ resources:global, Cancel %>' NavigateUrl="~/Administration/Continents/List.aspx" SkinID="Minor" />
        </li>
        <li>
            <asp:LinkButton ID="lbtnSave" runat="server" Text='<%$ resources:global, Save %>' SkinID="Major" OnClick="lbnSave_Click" ValidationGroup="vgContinent" />
        </li>
    </ul>
</asp:Content>
<asp:Content ContentPlaceHolderID="cphBody" runat="server">
    <asp:ValidationSummary runat="server" HeaderText="<%$ Resources:Global, ErrorMsgText %>" ValidationGroup="vgContinent" />
    <asp:CustomValidator ID="cvInvariantLocalizationRequired" runat="server" ValidationGroup="vgContinent" meta:resourcekey="cvInvariantLocalizationRequired" OnServerValidate="cvInvariantLocalizationRequired_ServerValidate" />
    <mag:TabStrip runat="server" ID="tsContinent" ValidationGroup="vgContinent" MultiViewID="mvContinent">
        <TabItems>
            <mag:TabItem meta:resourceKey="mtiGeneral" Text='<%$ resources:global, General %>' />
            <mag:TabItem meta:resourceKey="mtiContentItems" Text='<%$ resources:global, ContentItems %>' />
        </TabItems>
    </mag:TabStrip>
    <div class="form">
        <asp:MultiView ID="mvContinent" runat="server" ActiveViewIndex="0">
            <asp:View runat="server">
                <fieldset>
                    <legend>
                        <asp:Literal runat="server" Text='<%$ resources:global, Properties %>' />
                    </legend>
                    <div class="field inline">
                        <asp:Label ID="lblCode" runat="server" meta:resourcekey="lblCode" AssociatedControlID="tbxCode" />
                        <asp:TextBox ID="tbxCode" runat="server" />
                        <asp:RequiredFieldValidator ID="rfvCode" runat="server" ControlToValidate="tbxCode" ValidationGroup="vgContinent" meta:resourcekey="rfvCode" />
                        <asp:RegularExpressionValidator ID="revCodeLength" runat="server" ControlToValidate="tbxCode" ValidationExpression="^.{2}$" ValidationGroup="vgContinent" meta:resourcekey="revCodeLength" />
                        <asp:CustomValidator ID="cvCodeIdUnique" runat="server" ValidationGroup="vgContinent" ControlToValidate="tbxCode" OnServerValidate="cvCodeIsUnique_ServerValidate" meta:resourcekey="cvCodeIdUnique" />
                    </div>
                </fieldset>
                <fieldset>
                    <legend>
                        <asp:Literal runat="server" Text='<%$ resources:global, Localizations %>' />
                    </legend>
                    <mag:Localizer ID="mlContinent" runat="server" AllowInvariantDeleting="false">
                        <localizablefields>
                            <mag:LocalizableField PropertyName="Name" Editor="SingleLineString" MaxLength="50" meta:resourcekey="mlfName" />
                        </localizablefields>
                    </mag:Localizer>
                </fieldset>
            </asp:View>
            <asp:View runat="server">
                <mag:AssociatedContentItems ID="mAssociatedContentItems" runat="server" ValidationGroup="vgContinent" />
            </asp:View>
        </asp:MultiView>
    </div>
</asp:Content>
