<%@ Page Title="" Language="C#" MasterPageFile="~/App_Masters/DefaultLayout.Master"
    AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="Magelia.WebStore.Admin.Administration.CustomerSets.Edit" %>

<asp:Content ContentPlaceHolderID="cphBarTitle" runat="server">
    <asp:Literal ID="litCustomerSet" runat="server" meta:resourcekey="litCustomerSet" />
</asp:Content>
<asp:Content ContentPlaceHolderID="cphBarContent" runat="server">
    <ul>
        <li>
            <asp:HyperLink runat="server" Text='<%$ resources:global, Cancel %>' NavigateUrl="~/Administration/CustomerSets/List.aspx"
                SkinID="Minor" />
        </li>
        <mag:FeaturePanel runat="server" Level="Edit" Tag="Li">
            <asp:LinkButton ID="lbtnSave" runat="server" Text='<%$ resources:global, Save %>'
                SkinID="Major" OnClick="lbnSave_Click" ValidationGroup="vgCustomerSet" />
        </mag:FeaturePanel>
    </ul>
</asp:Content>
<asp:Content ContentPlaceHolderID="cphBody" runat="server">
    <div class="form customerSet">
        <asp:ValidationSummary runat="server" HeaderText="<%$ Resources:Global, ErrorMsgText %>"
            ValidationGroup="vgCustomerSet" />
        <fieldset>
            <legend>
                <asp:Literal runat="server" Text='<%$ resources:global, Properties %>' /></legend>
            <div class="field inline break">
                <asp:Label meta:resourcekey="lblCode" AssociatedControlID="tbxCode" runat="server" />
                <asp:TextBox ID="tbxCode" runat="server" ValidationGroup="vgCustomerSet" />
                <asp:RequiredFieldValidator ID="rfvCode" ControlToValidate="tbxCode" runat="server" meta:resourcekey="rfvCode" ValidationGroup="vgCustomerSet" />
                <asp:RegularExpressionValidator ID="revCodeLength" runat="server" ValidationExpression="^.{1,50}$" ValidationGroup="vgCustomerSet" meta:resourcekey="revCodeLength"
                    ControlToValidate="tbxCode" />
                <asp:CustomValidator ID="cvCode" runat="server" ControlToValidate="tbxCode" OnServerValidate="cvCode_ServerValidate" ValidationGroup="vgCustomerSet" meta:resourcekey="cvCode" />
            </div>
            <div class="field inline break">
                <asp:Label meta:resourcekey="lblMaxInvalidPasswordAttempts" AssociatedControlID="tbxMaxInvalidPasswordAttempts" runat="server" />
                <asp:TextBox ID="tbxMaxInvalidPasswordAttempts" runat="server" CssClass="numeric" ValidationGroup="vgCustomerSet" type="number" />
                <asp:CompareValidator runat="server" ControlToValidate="tbxMaxInvalidPasswordAttempts" Type="Integer" Operator="DataTypeCheck" ValidationGroup="vgCustomerSet"
                    meta:resourceKey="cvMaxInvalidPasswordAttempts" />
                <asp:CompareValidator runat="server" ControlToValidate="tbxMaxInvalidPasswordAttempts" Type="Integer" Operator="GreaterThanEqual" ValueToCompare="0" ValidationGroup="vgCustomerSet"
                    meta:resourceKey="cvMaxInvalidPasswordAttempts" />
            </div>
            <div class="field inline break">
                <asp:Label meta:resourcekey="lblMinRequiredUserNameLength" AssociatedControlID="tbxMinRequiredUserNameLength"
                    runat="server" />
                <asp:TextBox ID="tbxMinRequiredUserNameLength" runat="server" CssClass="numeric" ValidationGroup="vgCustomerSet"
                    type="number" />
                <asp:CompareValidator runat="server" ControlToValidate="tbxMinRequiredUserNameLength" Type="Integer" Operator="DataTypeCheck" ValidationGroup="vgCustomerSet"
                    meta:resourceKey="cvMinRequiredUserNameLength" />
                <asp:CompareValidator runat="server" ControlToValidate="tbxMinRequiredUserNameLength" Type="Integer" Operator="GreaterThan" ValueToCompare="0" ValidationGroup="vgCustomerSet"
                    meta:resourceKey="cvMinRequiredUserNameLength" />
            </div>
            <div class="field inline break">
                <asp:Label meta:resourcekey="lblMinRequiredNonAlphanumericCharacters" AssociatedControlID="tbxMinRequiredNonAlphanumericCharacters" runat="server" />
                <asp:TextBox ID="tbxMinRequiredNonAlphanumericCharacters" runat="server" CssClass="numeric" ValidationGroup="vgCustomerSet" type="number" />
                <asp:CompareValidator runat="server" ControlToValidate="tbxMinRequiredNonAlphanumericCharacters" Type="Integer" Operator="DataTypeCheck" ValidationGroup="vgCustomerSet"
                    meta:resourceKey="cvMinRequiredNonAlphanumericCharacters" />
                <asp:CompareValidator runat="server" ControlToValidate="tbxMinRequiredNonAlphanumericCharacters" Type="Integer" Operator="GreaterThanEqual" ValueToCompare="0"
                    ValidationGroup="vgCustomerSet" meta:resourceKey="cvMinRequiredNonAlphanumericCharacters" />
            </div>
            <div class="field inline break">
                <asp:Label meta:resourcekey="lblMinRequiredPasswordLength" AssociatedControlID="tbxMinRequiredPasswordLength" runat="server" />
                <asp:TextBox ID="tbxMinRequiredPasswordLength" runat="server" CssClass="numeric" ValidationGroup="vgCustomerSet" type="number" />
                <asp:CompareValidator runat="server" ControlToValidate="tbxMinRequiredPasswordLength" Operator="DataTypeCheck" Type="Integer" ValidationGroup="vgCustomerSet"
                    meta:resourceKey="cvMinRequiredPasswordLength" />
                <asp:CompareValidator runat="server" ControlToValidate="tbxMinRequiredPasswordLength" Operator="GreaterThan" ValueToCompare="0" Type="Integer" ValidationGroup="vgCustomerSet"
                    meta:resourceKey="cvMinRequiredPasswordLength" />
            </div>
            <div class="field inline break">
                <asp:Label meta:resourcekey="lblPasswordStrengthRegularExpression" AssociatedControlID="tbxPasswordStrengthRegularExpression" runat="server" />
                <asp:TextBox ID="tbxPasswordStrengthRegularExpression" runat="server" ValidationGroup="vgCustomerSet" />
                <asp:CustomValidator ID="cvPasswordStrengthRegularExpression" runat="server" ControlToValidate="tbxPasswordStrengthRegularExpression" OnServerValidate="cvPasswordStrengthRegularExpression_ServerValidate"
                    ValidationGroup="vgCustomerSet" meta:resourcekey="cvCode" />
            </div>
            <div class="field inline break">
                <asp:Label meta:resourcekey="lblPasswordAttemptWindow" AssociatedControlID="tbxPasswordAttemptWindow" runat="server" />
                <asp:TextBox ID="tbxPasswordAttemptWindow" runat="server" CssClass="numeric" ValidationGroup="vgCustomerSet" type="number" />
                <asp:CompareValidator runat="server" ControlToValidate="tbxPasswordAttemptWindow" Operator="DataTypeCheck" Type="Integer" ValidationGroup="vgCustomerSet"
                    meta:resourceKey="cvPasswordAttemptWindow" />
                <asp:CompareValidator runat="server" ControlToValidate="tbxPasswordAttemptWindow" Operator="GreaterThanEqual" ValueToCompare="0" Type="Integer" ValidationGroup="vgCustomerSet"
                    meta:resourceKey="cvPasswordAttemptWindow" />
            </div>
            <div class="field inline break">
                <asp:Label meta:resourcekey="lblEnablePasswordReset" AssociatedControlID="cbEnablePasswordReset" runat="server" />
                <asp:CheckBox ID="cbEnablePasswordReset" runat="server" ValidationGroup="vgCustomerSet" />
            </div>
            <div class="field inline break">
                <asp:Label meta:resourcekey="lblRequiresQuestionAndAnswer" AssociatedControlID="cbRequiresQuestionAndAnswer" runat="server" />
                <asp:CheckBox ID="cbRequiresQuestionAndAnswer" runat="server" ValidationGroup="vgCustomerSet" />
            </div>
            <div class="field inline break">
                <asp:Label meta:resourcekey="lblRequiresEmail" AssociatedControlID="cbRequiresEmail" runat="server" />
                <asp:CheckBox ID="cbRequiresEmail" runat="server" ValidationGroup="vgCustomerSet" />
            </div>
            <div class="field inline break">
                <asp:Label meta:resourcekey="lblRequiresUniqueEmail" AssociatedControlID="cbRequiresUniqueEmail" runat="server" />
                <asp:CheckBox ID="cbRequiresUniqueEmail" runat="server" ValidationGroup="vgCustomerSet" />
            </div>

        </fieldset>
    </div>
</asp:Content>
