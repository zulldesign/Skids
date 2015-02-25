<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Magelia.WebStore.Admin.Login_Page" meta:resourcekey="Page" %>

<!DOCTYPE HTML>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>
        <asp:Literal ID="litMageliaWebStore" runat="server" meta:resourcekey="litMageliaWebStore" />
    </title>
    <link id="lFavicon" rel="shortcut icon" type="image/x-icon" runat="server" />
    <asp:PlaceHolder runat="server">
        <%: System.Web.Optimization.Styles.Render("~/App_Themes/New/All") %>
    </asp:PlaceHolder>
</head>
<body class="authentication">
    <form id="aspnetForm" runat="server">
        <asp:ScriptManager runat="server">
            <CompositeScript>
                <Scripts>
                    <asp:ScriptReference Path="~/Scripts/Libraries/html5shiv.js" />
                    <asp:ScriptReference Path="~/Scripts/Libraries/jquery-1.8.3.min.js" />
                    <asp:ScriptReference Path="~/Scripts/Libraries/jquery-ui-1.9.1.custom.min.js" />
                    <asp:ScriptReference Path="~/Scripts/Plugins/jquery.validationhighlighter.js" />
                    <asp:ScriptReference Path="~/Scripts/Plugins/jquery.rounded.js" />
                    <asp:ScriptReference Path="~/Scripts/Plugins/jquery.popin.js" />
                    <asp:ScriptReference Path="~/Scripts/Pages/Login.aspx.js" />
                </Scripts>
            </CompositeScript>
        </asp:ScriptManager>
        <script type="text/javascript">
            $(document).ready(
                function () {
                    if (!$.browser.msie) {
                        $('#<%= this.tbxUsername.ClientID %>, #<%= this.tbxPassword.ClientID %>').keypress(
                            function (e) {
                                if (e.which == 13) {
                                    e.stopPropagation();
                                    e.preventDefault();
                                    $('#<%= this.btnLogin.ClientID %>').click();
                                }
                            }
                        );
                        }
                }
            );
        </script>
        <div class="centralizer">
            <asp:Panel runat="server" CssClass="authentication" DefaultButton="btnLogin">
                <div>
                    <div class="content">
                        <asp:HyperLink ID="hlMagelia" runat="server" CssClass="magelia" NavigateUrl="http://www.magelia.org" Target="_blank" meta:resourcekey="hlMagelia" />
                        <h4 class="ctx-clr">
                            <asp:Literal runat="server" meta:resourceKey="litWelcome" />
                        </h4>
                        <p id="pLicenseWarning" runat="server" class="message warning" visible="false">
                            <asp:Literal runat="server" ID="litLicenseWarning" />
                        </p>
                        <p id="pLicenseError" runat="server" class="message error" visible="false">
                            <asp:Literal runat="server" ID="litLicenseError" />
                        </p>
                        <asp:ValidationSummary runat="server" ValidationGroup="vgAuthentication" HeaderText="<%$ Resources: Global, ErrorMsgText %>" />
                        <div class="form">
                            <div class="field">
                                <asp:Label ID="lblUsername" runat="server" AssociatedControlID="tbxUsername" meta:resourcekey="lblUsername" />
                                <asp:TextBox ID="tbxUsername" runat="server" />
                                <asp:RequiredFieldValidator ID="rfvUsername" runat="server" ControlToValidate="tbxUsername" ValidationGroup="vgAuthentication" meta:resourcekey="rfvUsername" />
                            </div>
                            <div class="field">
                                <asp:Label ID="lblPassword" runat="server" AssociatedControlID="tbxPassword" meta:resourcekey="lblPassword" />
                                <asp:TextBox ID="tbxPassword" runat="server" TextMode="Password" />
                                <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="tbxPassword" ValidationGroup="vgAuthentication" meta:resourcekey="rfvPassword" />
                            </div>
                            <div class="field inline">
                                <asp:Label ID="lblRememberMe" runat="server" AssociatedControlID="cbxRememberMe" meta:resourcekey="lblRememberMe" />
                                <asp:CheckBox ID="cbxRememberMe" runat="server" />
                            </div>
                            <div class="field">
                                <asp:LinkButton ID="lbtnForgottenPassword" runat="server" CssClass="ctx-clr" meta:resourcekey="lbtnForgottenPassword" OnClick="lbtnForgottenPassword_Click" />
                            </div>
                        </div>
                        <asp:Literal ID="litPasswordReseted" meta:resourcekey="litPasswordReseted" runat="server" Visible="false" />
                        <asp:CustomValidator ID="cvCredentials" runat="server" OnServerValidate="cvCredentials_ServerValidate" ControlToValidate="tbxUsername" ValidationGroup="vgAuthentication" meta:resourcekey="cvCredentials" />
                        <div class="buttons">
                            <ul>
                                <li>
                                    <a id="aLogin" class="rounded major" href="javascript:void(0);">
                                        <asp:Literal ID="litLogin" runat="server" meta:resourceKey="litLogin" />
                                    </a>
                                    <asp:Button ID="btnLogin" runat="server" ValidationGroup="vgAuthentication" OnClick="btnLogin_Click" />
                                </li>
                            </ul>
                        </div>
                        <footer>
                            <asp:Repeater runat="server" ID="rptCultures" OnItemCommand="rptCultures_ItemCommand" OnItemDataBound="rptCultures_ItemDataBound">
                                <HeaderTemplate>
                                    <ul class="flags">
                                </HeaderTemplate>
                                <FooterTemplate>
                                    </ul>
                                </FooterTemplate>
                                <ItemTemplate>
                                    <li id="liFlag" runat="server"></li>
                                </ItemTemplate>
                            </asp:Repeater>
                            <mag:Footer DisplayLogo="false" runat="server" />
                        </footer>
                    </div>
                </div>
            </asp:Panel>
        </div>
        <asp:Panel runat="server" ID="pnlForgottenPasswordPopin" ClientIDMode="Static" SkinID="Popin" DefaultButton="lbtnSend">
            <header>
                <h4>
                    <asp:Literal ID="litForgottenPassword" runat="server" meta:resourcekey="litForgottenPassword" />
                </h4>
            </header>
            <asp:Panel runat="server" SkinID="Form">
                <asp:MultiView ID="mvPopin" runat="server" ActiveViewIndex="0">
                    <asp:View ID="vEmail" runat="server">
                        <asp:ValidationSummary runat="server" HeaderText="<%$ Resources: Global, ErrorMsgText %>" ValidationGroup="vgForgottenPassword" />
                        <div class="field inline">
                            <asp:Label ID="lblEmail" runat="server" meta:resourcekey="lblEmail" AssociatedControlID="tbxEmail" />
                            <asp:TextBox ID="tbxEmail" runat="server" />
                            <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="tbxEmail" meta:resourcekey="rfvEmail" ValidationGroup="vgForgottenPassword" />
                            <asp:RegularExpressionValidator ID="revEmailIsValid" runat="server" ControlToValidate="tbxEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" meta:resourcekey="revEmailIsValid" ValidationGroup="vgForgottenPassword" />
                        </div>
                        <div class="buttons">
                            <ul>
                                <li>
                                    <asp:LinkButton ID="lbtnCancel" runat="server" OnClick="lbtnCancel_Click" SkinID="Minor" Text="<%$ Resources: Global, Cancel %>" />
                                </li>
                                <li>
                                    <asp:LinkButton ID="lbtnSend" runat="server" OnClick="lbtnSend_Click" SkinID="Major" Text="<%$ Resources: Global, Send %>" ValidationGroup="vgForgottenPassword" />
                                </li>
                            </ul>
                        </div>
                    </asp:View>
                    <asp:View ID="vResult" runat="server">
                        <asp:Repeater runat="server" ID="rptInfos">
                            <HeaderTemplate>
                                <ul class="messages">
                            </HeaderTemplate>
                            <FooterTemplate>
                                </ul>
                            </FooterTemplate>
                            <ItemTemplate>
                                <li>
                                    <div class="message<%# ((PageMessage)Container.DataItem).MessageType %>">
                                        <%# Server.HtmlEncode(((PageMessage)Container.DataItem).Message) %>
                                        <asp:Repeater runat="server" DataSource="<%# ((PageMessage)Container.DataItem).SubMessages %>">
                                            <HeaderTemplate>
                                                <ul class="infoList">
                                            </HeaderTemplate>
                                            <FooterTemplate>
                                                </ul>
                                            </FooterTemplate>
                                            <ItemTemplate>
                                                <li>
                                                    <%# Server.HtmlEncode((String)Container.DataItem)%></li>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                    </div>
                                </li>
                            </ItemTemplate>
                        </asp:Repeater>
                        <div class="buttons">
                            <ul>
                                <li>
                                    <asp:LinkButton ID="lbnTryAgain" runat="server" OnClick="lbnTryAgain_Click" Visible="false" SkinID="Major" meta:resourcekey="lbnTryAgain" />
                                </li>
                            </ul>
                        </div>
                    </asp:View>
                </asp:MultiView>
            </asp:Panel>
        </asp:Panel>
    </form>
</body>
</html>
