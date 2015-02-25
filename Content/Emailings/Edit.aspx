<%@ Page Title="" Language="C#" MasterPageFile="~/App_Masters/DefaultLayout.Master"
    EnableEventValidation="false" AutoEventWireup="true" CodeBehind="Edit.aspx.cs"
    Inherits="Magelia.WebStore.Admin.Content.Emailings.Edit" %>

<asp:Content ContentPlaceHolderID="cphBarTitle" runat="server">
    <asp:Literal ID="litTemplate" runat="server" meta:resourcekey="litTemplate" />
</asp:Content>
<asp:Content ContentPlaceHolderID="cphBarContent" runat="server">
    <ul>
        <li>
            <asp:HyperLink runat="server" Text='<%$ resources:global, Cancel %>' NavigateUrl="List.aspx"
                SkinID="Minor" />
        </li>
        <li id="iSave" runat="server">
            <asp:LinkButton ID="lbtnSave" runat="server" Text='<%$ resources:global, Save %>'
                SkinID="Major" OnClick="lbtnSave_Click" ValidationGroup="vgTemplate" />
        </li>
    </ul>
</asp:Content>
<asp:Content ContentPlaceHolderID="cphBody" runat="server">
    <asp:ValidationSummary runat="server" HeaderText="<%$ Resources:Global, ErrorMsgText %>"
        ValidationGroup="vgTemplate" />
    <asp:ValidationSummary runat="server" HeaderText="<%$ Resources:Global, ErrorMsgText %>"
        ValidationGroup="vgLocalization" />
    <div class="form">
        <fieldset>
            <legend>
                <asp:Literal runat="server" Text='<%$ resources:global, Properties %>' />
            </legend>
            <div class="field inline">
                <asp:Label ID="lblCode" runat="server" meta:resourcekey="lblCode" AssociatedControlID="tbxCode" />
                <asp:TextBox ID="tbxCode" runat="server" />
                <asp:RequiredFieldValidator ID="rfvCode" runat="server" ControlToValidate="tbxCode"
                    ValidationGroup="vgTemplate" meta:resourcekey="rfvCode" />
                <asp:RegularExpressionValidator ID="revCodeLength" runat="server" ControlToValidate="tbxCode"
                    ValidationExpression="^.{0,50}$" ValidationGroup="vgTemplate" meta:resourcekey="revCodeLength" />
                <asp:CustomValidator ID="cvCodeIdUnique" runat="server" ValidationGroup="vgTemplate"
                    ControlToValidate="tbxCode" OnServerValidate="cvCodeIsUnique_ServerValidate"
                    meta:resourcekey="cvCodeIsUnique" />
            </div>
            <div class="field inline break">
                <asp:Label ID="lblPriority" runat="server" meta:resourcekey="lblPriority" AssociatedControlID="tbxPriority" />
                <asp:TextBox ID="tbxPriority" runat="server" CssClass="numeric" />
                <asp:RequiredFieldValidator ID="rfvPriority" runat="server" ControlToValidate="tbxPriority"
                    ValidationGroup="vgTemplate" meta:resourcekey="rfvPriority" />
                <asp:RangeValidator runat="server" Type="Integer" MinimumValue="0" MaximumValue="255"
                    ControlToValidate="tbxPriority" ValidationGroup="vgTemplate" meta:resourceKey="rvPriority" />
            </div>
            <div class="field inline break">
                <asp:Label ID="lblDescription" runat="server" meta:resourcekey="lblDescription" AssociatedControlID="tbxDescription" />
                <asp:TextBox ID="tbxDescription" runat="server" TextMode="MultiLine" Rows="3" Height="50" />
            </div>
        </fieldset>
        <fieldset id="fsLocalizations" runat="server">
            <legend>
                <asp:Label ID="lblCultures" AssociatedControlID="ddlCultures" runat="server" meta:resourcekey="lblCultures" />
                <asp:DropDownList ID="ddlCultures" runat="server" DataTextField="Name" DataValueField="CultureId"
                    AutoPostBack="true" OnSelectedIndexChanged="ddlCultures_SelectedIndexChanged"
                    ValidationGroup="vgLocalization" CausesValidation="true" />
                <asp:CustomValidator ID="cvLocalizationRequiredIfCantCreateAndDelete" runat="server"
                    ControlToValidate="ddlCultures" ValidationGroup="vgLocalization" OnServerValidate="cvLocalizationRequiredIfCantCreateAndDelete_ServerValidate"
                    meta:resourcekey="cvLocalizationRequiredIfCantCreateAndDelete" />
            </legend>
            <div class="field inline">
                <asp:Label runat="server" AssociatedControlID="tbxSubject" meta:resourcekey="lblSubject" />
                <asp:TextBox ID="tbxSubject" runat="server" />
            </div>
            <div class="field inline break">
                <asp:Label runat="server" AssociatedControlID="tbxFromEmail" meta:resourcekey="lblFromEmail" />
                <asp:TextBox ID="tbxFromEmail" runat="server" />
            </div>
            <div class="field inline break break-after">
                <asp:Label runat="server" AssociatedControlID="tbxFromText" meta:resourcekey="lblFromText" />
                <asp:TextBox ID="tbxFromText" runat="server" />
            </div>
            <mag:TabStrip ID="tabContent" runat="server" MultiViewID="mvContent">
                <TabItems>
                    <mag:TabItem ViewIndex="0" meta:resourcekey="lblHtmlBody" />
                    <mag:TabItem ViewIndex="1" meta:resourcekey="lblRawBody" />
                </TabItems>
            </mag:TabStrip>
            <div>
                <asp:MultiView ID="mvContent" runat="server" ActiveViewIndex="0">
                    <asp:View runat="server">
                        <asp:TextBox ID="tbxHtmlBody" runat="server" TextMode="MultiLine" CssClass="large" Rows="30" />
                    </asp:View>
                    <asp:View runat="server">
                        <asp:TextBox ID="tbxRawBody" runat="server" TextMode="MultiLine" CssClass="large" Rows="30" />
                    </asp:View>
                </asp:MultiView>
            </div>
        </fieldset>
        <asp:CustomValidator ID="cvsubjectLocalization" runat="server" meta:resourceKey="cvsubjectLocalization"
            OnServerValidate="cvsubjectLocalization_ServerValidate" ValidationGroup="vgTemplate" />
        <asp:CustomValidator ID="cvFromEmailLocalization" runat="server" meta:resourceKey="cvFromEmailLocalization"
            OnServerValidate="cvFromEmailLocalization_ServerValidate" ValidationGroup="vgTemplate" />
        <asp:CustomValidator ID="cvFromEmailIsValidLocalization" runat="server" meta:resourceKey="cvFromEmailIsValidLocalization"
            OnServerValidate="cvFromEmailIsValidLocalization_ServerValidate" ValidationGroup="vgTemplate" />
    </div>
</asp:Content>
