<%@ Page Title="" Language="C#" MasterPageFile="~/App_Masters/DefaultLayout.Master"
    AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="Magelia.WebStore.Admin.Administration.ApplicationTiers.Edit" %>

<asp:Content ContentPlaceHolderID="cphBarTitle" runat="server">
    <asp:Literal ID="litApplicationTier" runat="server" meta:resourcekey="litApplicationTier" />
</asp:Content>
<asp:Content ContentPlaceHolderID="cphBarContent" runat="server">
    <ul>
        <li>
            <asp:LinkButton ID="lbtnSave" runat="server" ValidationGroup="vgApplicationTier"
                Text='<%$ resources:global, Save %>' SkinID="Major" OnClick="lbtnSave_Click" />
        </li>
    </ul>
</asp:Content>
<asp:Content ContentPlaceHolderID="cphBody" runat="server">
    <asp:ValidationSummary runat="server" ID="vsApplicationTier" ValidationGroup="vgApplicationTier" HeaderText='<%$ Resources: Global, ErrorMsgText %>' />
    <div class="form">
        <fieldset>
            <legend>
                <asp:Literal runat="server" Text='<%$ resources:global, Properties %>' />
            </legend>
            <mag:DynamicControl runat="server" ID="dcApplicationTier" />
        </fieldset>
    </div>
</asp:Content>
