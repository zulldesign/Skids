<%@ Page Title="" Language="C#" MasterPageFile="~/App_Masters/DefaultLayout.Master" EnableEventValidation="false" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="Magelia.WebStore.Admin.Products.Suppliers.Edit" %>

<asp:Content ContentPlaceHolderID="cphBarTitle" runat="server">
    <asp:Literal ID="litSupplier" runat="server" meta:resourcekey="litSupplier" />
</asp:Content>
<asp:Content ContentPlaceHolderID="cphBarContent" runat="server">
    <ul>
        <li>
            <asp:HyperLink runat="server" Text='<%$ resources:global, Cancel %>' NavigateUrl="List.aspx" SkinID="Minor" />
        </li>
        <mag:FeaturePanel runat="server" Level="Edit" Tag="Li">
            <asp:LinkButton ID="lbtnSave" runat="server" Text='<%$ resources:global, Save %>' SkinID="Major" OnClick="lbtnSave_Click" ValidationGroup="vgSupplier" />
        </mag:FeaturePanel>
    </ul>
</asp:Content>
<asp:Content ContentPlaceHolderID="cphBody" runat="server">
    <mag:TabStrip runat="server" ID="tsBrand" ValidationGroup="vgSupplier" MultiViewID="mvSupplier">
        <TabItems>
            <mag:TabItem meta:resourceKey="mtiGeneral" />
            <mag:TabItem meta:resourceKey="mtiContentItems" />
        </TabItems>
    </mag:TabStrip>
    <div class="form">
        <asp:MultiView ID="mvSupplier" runat="server" ActiveViewIndex="0">
            <asp:View runat="server">
                <fieldset>
                    <legend>
                        <asp:Literal runat="server" Text='<%$ resources:global, Properties %>' />
                    </legend>
                    <asp:ValidationSummary runat="server" HeaderText="<%$ Resources:Global, ErrorMsgText %>" ValidationGroup="vgSupplier" />
                    <div class="field inline">
                        <asp:Label ID="lblCode" runat="server" meta:resourcekey="lblCode" AssociatedControlID="tbxCode" />
                        <asp:TextBox ID="tbxCode" runat="server" />
                        <asp:RequiredFieldValidator ID="rfvCode" runat="server" ControlToValidate="tbxCode" ValidationGroup="vgSupplier" meta:resourcekey="rfvCode" />
                        <asp:RegularExpressionValidator ID="revCodeLength" runat="server" ControlToValidate="tbxCode" ValidationExpression="^.{0,50}$" ValidationGroup="vgSupplier" meta:resourcekey="revCodeLength" />
                        <asp:CustomValidator ID="cvCodeIdUnique" runat="server" ValidationGroup="vgSupplier" ControlToValidate="tbxCode" OnServerValidate="cvCodeIsUnique_ServerValidate" meta:resourcekey="cvCodeIsUnique" />
                    </div>
                </fieldset>
            </asp:View>
            <asp:View runat="server">
                <mag:AssociatedContentItems ID="mAssociatedContentItems" runat="server" ValidationGroup="vgSupplier" />
            </asp:View>
        </asp:MultiView>
    </div>
</asp:Content>
