<%@ Page Language="C#" MasterPageFile="~/App_Masters/DefaultLayout.Master" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="Magelia.WebStore.Admin.Administration.Users.Edit" %>

<asp:Content ContentPlaceHolderID="cphBarTitle" runat="server">
    <asp:Literal ID="litUser" runat="server" meta:resourcekey="litUser" />
</asp:Content>
<asp:Content ContentPlaceHolderID="cphBarContent" runat="server">
    <ul>
        <li id="iSendNewPassword" runat="server" visible="false">
            <asp:LinkButton ID="lbtnSendNewPassword" runat="server" OnClick="lbtnSendNewPassword_Click" SkinID="Minor" meta:resourcekey="lbtnSendNewPassword" />
        </li>
        <li id="iSave" runat="server">
            <asp:LinkButton ID="lbtnSave" runat="server" OnClick="lbtnSave_Click" ValidationGroup="vgUser" Text='<%$ Resources:Global, Save %>' SkinID="Major" />
        </li>
    </ul>
</asp:Content>
<asp:Content ContentPlaceHolderID="cphBody" runat="server">
    <div class="form">
        <asp:ValidationSummary ID="mvsUser" runat="server" HeaderText="<%$ Resources:Global, ErrorMsgText %>" ValidationGroup="vgUser" />
        <fieldset>
            <legend>
                <asp:Literal ID="litAccount" runat="server" meta:resourcekey="litAccount" />
            </legend>
            <div class="field">
                <asp:Label ID="lblUsername" runat="server" AssociatedControlID="tbxUserName" meta:resourcekey="lblUsername" />
                <asp:TextBox ID="tbxUserName" runat="server" MaxLength="200" />
                <asp:RequiredFieldValidator ID="rfvUsername" ControlToValidate="tbxUserName" runat="server" ValidationGroup="vgUser" meta:resourcekey="rfvUsername" />
                <asp:RegularExpressionValidator ID="revUserName" ControlToValidate="tbxUserName" runat="server" ValidationGroup="vgUser" ValidationExpression="^.{0,200}$" meta:resourcekey="revUserName" />
                <asp:CustomValidator ID="cvUserNameIsUnique" runat="server" ControlToValidate="tbxUserName" ValidationGroup="vgUser" OnServerValidate="cvUserNameIsUnique_ServerValidate" meta:resourcekey="cvUserNameIsUnique" />
            </div>
            <div class="field">
                <asp:Label ID="lblEmail" runat="server" AssociatedControlID="tbxEmail" meta:resourcekey="lblEmail" />
                <asp:TextBox ID="tbxEmail" runat="server" MaxLength="200" />
                <asp:RequiredFieldValidator ID="rfvEmail" ControlToValidate="tbxEmail" runat="server" ValidationGroup="vgUser" meta:resourcekey="rfvEmail" />
                <asp:RegularExpressionValidator ID="revEmail" ControlToValidate="tbxEmail" runat="server" ValidationGroup="vgUser" meta:resourcekey="revEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" />
                <asp:RegularExpressionValidator ID="revEmailLength" ControlToValidate="tbxEmail" runat="server" ValidationGroup="vgUser" ValidationExpression="^.{0,200}$" meta:resourcekey="revEmailLength" />
                <asp:CustomValidator ID="cvEmailIsUnique" runat="server" ControlToValidate="tbxEmail" ValidationGroup="vgUser" OnServerValidate="cvEmailIsUnique_ServerValidate" meta:resourcekey="cvEmailIsUnique" />
            </div>
            <div class="field">
                <asp:Label ID="lblIsApproved" runat="server" AssociatedControlID="ddlIsApproved" meta:resourcekey="lblIsApproved" />
                <asp:DropDownList ID="ddlIsApproved" runat="server">
                    <asp:ListItem Value="true" meta:resourceKey="litYes" />
                    <asp:ListItem Value="false" meta:resourceKey="litNo" />
                </asp:DropDownList>
            </div>
            <div class="field">
                <asp:Label ID="lblTimeZone" runat="server" AssociatedControlID="ddlTimeZones" meta:resourcekey="lblTimeZone" />
                <asp:DropDownList ID="ddlTimeZones" runat="server" AppendDataBoundItems="true" DataTextField="DisplayName" DataValueField="Id">
                    <asp:ListItem />
                </asp:DropDownList>
            </div>
            <div id="bLockedOut" runat="server" visible="false" class="field inline break">
                <asp:Label ID="lblIsLockedOut" runat="server" AssociatedControlID="cbIsLockedOut" meta:resourcekey="lblIsLockedOut" />
                <asp:CheckBox ID="cbIsLockedOut" runat="server" />
            </div>
            <div id="bResetPassword" runat="server" visible="false" class="field inline break">
                <asp:Label ID="lblResetPassword" runat="server" AssociatedControlID="cbxResetPassword" meta:resourcekey="lblResetPassword" />
                <asp:CheckBox ID="cbxResetPassword" runat="server" AutoPostBack="true" OnCheckedChanged="cbxResetPassword_CheckedChanged" />
            </div>
        </fieldset>
        <fieldset id="fPassword" runat="server">
            <legend>
                <asp:Literal ID="litPassword" runat="server" meta:resourcekey="litPassword" />
            </legend>
            <div class="field" id="bOldPassword" runat="server" visible="false">
                <asp:Label ID="lblOldPassword" runat="server" AssociatedControlID="tbxOldPassword" meta:resourcekey="lblOldPassword" />
                <asp:TextBox ID="tbxOldPassword" runat="server" TextMode="Password" MaxLength="128" />
                <asp:RequiredFieldValidator ID="rfvOldPassword" runat="server" meta:resourcekey="rfvOldPassword" ControlToValidate="tbxOldPassword" ValidationGroup="vgUser" />
                <asp:CustomValidator ID="cvOldPassword" runat="server" ControlToValidate="tbxOldPassword" meta:resourcekey="cvOldPassword" ValidationGroup="vgUser" OnServerValidate="cvOldPassword_ServerValidate" />
            </div>
            <div class="field">
                <asp:Label ID="lblPassword" runat="server" AssociatedControlID="tbxPassword" meta:resourcekey="lblPassword" />
                <asp:TextBox ID="tbxPassword" runat="server" TextMode="Password" MaxLength="128" />
                <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="tbxPassword" ValidationGroup="vgUser" meta:resourcekey="rfvPassword" />
            </div>
            <div class="field">
                <asp:Label ID="lblPasswordConfirmation" runat="server" AssociatedControlID="tbxPasswordConfirmation" meta:resourcekey="lblPasswordConfirmation" />
                <asp:TextBox ID="tbxPasswordConfirmation" runat="server" TextMode="Password" MaxLength="128" />
                <asp:RequiredFieldValidator ID="rfvPasswordConfirmation" runat="server" ControlToValidate="tbxPasswordConfirmation" ValidationGroup="vgUser" meta:resourcekey="rfvPasswordConfirmation" />
                <asp:CompareValidator ID="cvPasswordConfirmation" runat="server" ControlToCompare="tbxPassword" ControlToValidate="tbxPasswordConfirmation" ValidationGroup="vgUser" meta:resourcekey="cvPasswordConfirmation" />
            </div>
        </fieldset>
        <fieldset id="fInformation" runat="server" visible="false">
            <legend>
                <asp:Literal ID="litInformation" runat="server" meta:resourcekey="litInformation" />
            </legend>
            <div class="field inline">
                <asp:Label ID="lblCreationDate" runat="server" AssociatedControlID="litCreationDate" meta:resourcekey="lblCreationDate" />
                <span>
                    <asp:Literal ID="litCreationDate" runat="server" /></span>
            </div>
            <div class="field inline break">
                <asp:Label ID="lblLastLoginDate" runat="server" AssociatedControlID="litLastLoginDate" meta:resourcekey="lblLastLoginDate" />
                <span>
                    <asp:Literal ID="litLastLoginDate" runat="server" /></span>
            </div>
            <div class="field inline break">
                <asp:Label ID="lblLastActivityDate" runat="server" AssociatedControlID="litLastActivityDate" meta:resourcekey="lblLastActivityDate" />
                <span>
                    <asp:Literal ID="litLastActivityDate" runat="server" /></span>
            </div>
            <div class="field inline break">
                <asp:Label ID="lblLastPasswordChangeDate" runat="server" AssociatedControlID="litLastPasswordChangeDate" meta:resourcekey="lblLastPasswordChangeDate" />
                <span>
                    <asp:Literal ID="litLastPasswordChangeDate" runat="server" /></span>
            </div>
            <div class="field inline break">
                <asp:Label ID="lblLastLockoutDate" runat="server" AssociatedControlID="litLastLockoutDate" meta:resourcekey="lblLastLockoutDate" />
                <span>
                    <asp:Literal ID="litLastLockoutDate" runat="server" /></span>
            </div>
        </fieldset>
    </div>
</asp:Content>
