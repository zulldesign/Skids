<%@ Page Title="" Language="C#" MasterPageFile="~/App_Masters/DefaultLayout.Master"
    EnableEventValidation="false" AutoEventWireup="true" CodeBehind="Edit.aspx.cs"
    Inherits="Magelia.WebStore.Admin.Administration.Currencies.Edit" %>

<asp:Content ContentPlaceHolderID="cphBarTitle" runat="server">
    <asp:Literal ID="litCurrency" runat="server" meta:resourcekey="litCurrency" />
</asp:Content>
<asp:Content ContentPlaceHolderID="cphBarContent" runat="server">
    <ul>
        <li>
            <asp:HyperLink runat="server" Text='<%$ resources:global, Cancel %>'
                NavigateUrl="~/Administration/Currencies/List.aspx" SkinID="Minor" />
        </li>
        <li>
            <asp:LinkButton ID="lbtnSave" runat="server" Text='<%$ resources:global, Save %>'
                SkinID="Major" OnClick="lbnSave_Click" ValidationGroup="vgCurrencyEdit" />
        </li>
    </ul>
</asp:Content>
<asp:Content ContentPlaceHolderID="cphBody" runat="server">
    <mag:TabStrip runat="server" ID="tsCurrency" ValidationGroup="vgCurrency" MultiViewID="mvCurrency">
        <TabItems>
            <mag:TabItem meta:resourceKey="mtiGeneral" Text='<%$ resources:global, General %>' />
            <mag:TabItem meta:resourceKey="mtiContentItems" Text='<%$ resources:global, ContentItems %>' />
        </TabItems>
    </mag:TabStrip>
    <div class="form">
        <asp:MultiView ID="mvCurrency" runat="server" ActiveViewIndex="0">
            <asp:View runat="server">
                <fieldset>
                    <legend>
                        <asp:Literal runat="server" Text='<%$ resources:global, Properties %>' />
                    </legend>
                    <div class="field">
                        <asp:Label ID="lblCode" runat="server" meta:resourcekey="lblCode" AssociatedControlID="tbxCode" />
                        <asp:TextBox ID="tbxCode" runat="server" ReadOnly="true" />
                    </div>
                    <div class="field">
                        <asp:Label ID="lblSymbol" runat="server" meta:resourcekey="lblSymbol" AssociatedControlID="tbxSymbol" />
                        <asp:TextBox ID="tbxSymbol" runat="server" ReadOnly="true" />
                    </div>
                </fieldset>
                <fieldset>
                    <legend>
                        <asp:Literal runat="server" Text='<%$ resources:global, Localizations %>' />
                    </legend>
                    <mag:Localizer ID="mlCurrency" runat="server">
                        <localizablefields>
                            <mag:LocalizableField PropertyName="Name" Editor="SingleLineString" MaxLength="50" meta:resourcekey="mlfName" />
                        </localizablefields>
                    </mag:Localizer>
                </fieldset>
            </asp:View>
            <asp:View runat="server">
                <mag:AssociatedContentItems ID="mAssociatedContentItems" runat="server" ValidationGroup="vgCurrency" />
            </asp:View>
        </asp:MultiView>
    </div>
</asp:Content>
