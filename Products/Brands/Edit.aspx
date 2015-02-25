<%@ Page Title="" Language="C#" MasterPageFile="~/App_Masters/DefaultLayout.Master" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="Magelia.WebStore.Admin.Products.Brands.Edit" %>

<asp:Content ContentPlaceHolderID="cphBarTitle" runat="server">
    <asp:Literal ID="litBrand" runat="server" meta:resourcekey="litBrand" />
</asp:Content>
<asp:Content ContentPlaceHolderID="cphBarContent" runat="server">
    <ul>
        <li>
            <asp:HyperLink runat="server" SkinID="Minor" NavigateUrl="~/Products/Brands/List.aspx" Text='<%$ resources:global, Cancel %>' />
        </li>
        <mag:FeaturePanel runat="server" Level="Edit" Tag="Li">
            <asp:LinkButton ID="lbtnSave" runat="server" OnClick="lbtnSave_Click" ValidationGroup="vgBrand" Text='<%$ resources:global, Save %>' SkinID="Major" />
        </mag:FeaturePanel>
    </ul>
</asp:Content>
<asp:Content ContentPlaceHolderID="cphBody" runat="server">
    <asp:ValidationSummary runat="server" ValidationGroup="vgBrand" HeaderText="<%$ Resources: Global, ErrorMsgText %>" />
    <mag:TabStrip runat="server" ValidationGroup="vgBrand" MultiViewID="mvGlobal">
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
                        <asp:Literal runat="server" Text='<%$ resources:global, Properties %>' />
                    </legend>
                    <div class="field inline">
                        <asp:Label ID="lblCode" runat="server" meta:resourcekey="lblCode" AssociatedControlID="tbCode" />
                        <asp:TextBox ID="tbCode" runat="server" />
                        <asp:RequiredFieldValidator ID="rfvCode" runat="server" ControlToValidate="tbCode" ValidationGroup="vgBrand" meta:resourcekey="rfvCode" />
                        <asp:RegularExpressionValidator ID="revCodeLength" runat="server" ControlToValidate="tbCode" ValidationGroup="vgBrand" ValidationExpression="^.{0,50}$" meta:resourcekey="revCodeLength" />
                        <asp:CustomValidator ID="cvCodeIsUnique" runat="server" ValidationGroup="vgBrand" ControlToValidate="tbCode" OnServerValidate="cvCodeIsUnique_ServerValidate" meta:resourcekey="cvCodeIsUnique" />
                    </div>
                    <div class="field inline break">
                        <asp:Label ID="lblLogo" runat="server" meta:resourcekey="lblLogo" AssociatedControlID="mfpLogo" />
                        <mag:FilePicker ID="mfpLogo" runat="server" AllowedFileType="Images" AllowedSelection="One" />
                    </div>
                </fieldset>
            </asp:View>
            <asp:View runat="server">
                <mag:AssociatedContentItems ID="mAssociatedContentItems" runat="server" ValidationGroup="vgBrand" />
            </asp:View>
        </asp:MultiView>
    </div>
</asp:Content>
