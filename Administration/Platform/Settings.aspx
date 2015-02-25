<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Settings.aspx.cs" MasterPageFile="~/App_Masters/DefaultLayout.Master"
    Inherits="Magelia.WebStore.Admin.Administration.Platform.Settings" %>

<asp:Content ContentPlaceHolderID="cphBarTitle" runat="server">
    <asp:Literal runat="server" meta:resourcekey="litSettings" />
</asp:Content>
<asp:Content ContentPlaceHolderID="cphBarContent" runat="server">
    <ul>
        <li>
            <asp:LinkButton runat="server" SkinID="Major" ValidationGroup="vgSettings"
                ID="lbnSave" Text='<%$ Resources:Global, Save %>' OnClick="lbnSave_Click" />
        </li>
    </ul>
</asp:Content>
<asp:Content ContentPlaceHolderID="cphBody" runat="server">
    <div>
        <asp:Panel runat="server" SkinID="Form">
            <asp:ValidationSummary runat="server" HeaderText="<%$ Resources:Global, ErrorMsgText %>" ValidationGroup="vgSettings" />
            <div class="inline">
                <mag:DynamicControl runat="server" ID="dcSettings" />
            </div>
        </asp:Panel>
    </div>
</asp:Content>
