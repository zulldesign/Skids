<%@ Page Title="" Language="C#" MasterPageFile="~/App_Masters/DefaultLayout.Master" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="Magelia.WebStore.Admin.Shipping.Carriers.Edit" %>

<asp:Content ContentPlaceHolderID="cphBarTitle" runat="server">
    <asp:Literal ID="litCarrier" runat="server" meta:resourcekey="litCarrier" />
</asp:Content>
<asp:Content ContentPlaceHolderID="cphBarContent" runat="server">
    <ul>
        <li>
            <asp:HyperLink runat="server" SkinID="Minor" NavigateUrl="~/Shipping/Carriers/List.aspx" Text='<%$ resources:global, Cancel %>' />
        </li>
        <li id="iSave" runat="server">
            <asp:LinkButton ID="lbtnSave" runat="server" OnClick="lbtnSave_Click" ValidationGroup="vgCarrier" Text='<%$ resources:global, Save %>' SkinID="Major" />
        </li>
    </ul>
</asp:Content>
<asp:Content ContentPlaceHolderID="cphBody" runat="server">
    <asp:ValidationSummary runat="server" ValidationGroup="vgCarrier" HeaderText="<%$ Resources: Global, ErrorMsgText %>" />
    <mag:TabStrip runat="server" ID="tsCarrier" ValidationGroup="vgCarrier" MultiViewID="mvCarrier">
        <TabItems>
            <mag:TabItem meta:resourceKey="mtiGeneral" />
            <mag:TabItem meta:resourceKey="mtiContentItems" />
        </TabItems>
    </mag:TabStrip>
    <div class="form">
        <asp:MultiView ID="mvCarrier" runat="server" ActiveViewIndex="0">
            <asp:View runat="server">
                <fieldset>
                    <legend>
                        <asp:Literal runat="server" Text='<%$ resources:global, Properties %>' />
                    </legend>
                    <div class="field">
                        <asp:Label ID="lblCode" runat="server" meta:resourcekey="lblCode" AssociatedControlID="tbxCode" />
                        <asp:TextBox ID="tbxCode" runat="server" />
                        <asp:RequiredFieldValidator ID="rfvCode" runat="server" ControlToValidate="tbxCode" ValidationGroup="vgCarrier" meta:resourcekey="rfvCode" />
                        <asp:RegularExpressionValidator ID="revCodeLength" runat="server" ControlToValidate="tbxCode" ValidationGroup="vgCarrier" ValidationExpression="^.{0,50}$" meta:resourcekey="revCodeLength" />
                        <asp:CustomValidator ID="cvCodeIsUnique" runat="server" ValidationGroup="vgCarrier" ControlToValidate="tbxCode" OnServerValidate="cvCodeIsUnique_ServerValidate" meta:resourcekey="cvCodeIsUnique" />
                    </div>
                    <div class="field break">
                        <asp:Label ID="lblLogo" runat="server" meta:resourcekey="lblLogo" AssociatedControlID="mfpLogo" />
                        <mag:FilePicker ID="mfpLogo" runat="server" AllowedFileType="Images" AllowedSelection="One" />
                    </div>
                </fieldset>
                <fieldset>
                    <legend>
                        <asp:Literal runat="server" Text='<%$ resources:global, Localizations %>' />
                    </legend>
                    <asp:UpdatePanel runat="server">
                        <ContentTemplate>
                            <mag:Localizer ID="mlCarrier" runat="server">
                                <localizablefields>
                                    <mag:LocalizableField PropertyName="Name" Editor="SingleLineString" MaxLength="50" meta:resourcekey="mlfName" />
                                </localizablefields>
                            </mag:Localizer>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </fieldset>
            </asp:View>
            <asp:View runat="server">
                <mag:AssociatedContentItems ID="mAssociatedContentItems" runat="server" ValidationGroup="vgCarrier" />
            </asp:View>
        </asp:MultiView>
    </div>
</asp:Content>
