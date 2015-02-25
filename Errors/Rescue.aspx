<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Rescue.aspx.cs" Inherits="Magelia.WebStore.Admin.Errors.Rescue" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>
        <asp:Literal ID="litRescueTitle" runat="server" meta:resourcekey="litRescueTitle" />
    </title>
    <link id="lFavicon" rel="shortcut icon" type="image/x-icon" runat="server" />
    <asp:PlaceHolder runat="server">
        <%: System.Web.Optimization.Styles.Render("~/App_Themes/New/All") %>
    </asp:PlaceHolder>
    <!--[if lt IE 9]><style type="text/css">#aspnetForm{border: 1px solid #cccccc;border-top:0;}</style><![endif]-->
</head>
<body>
    <div id="bMasterContainer">
        <form id="aspnetForm" runat="server">
            <asp:ScriptManager runat="server" AsyncPostBackTimeout="600">
                <CompositeScript>
                    <Scripts>
                        <asp:ScriptReference Path="~/Scripts/Libraries/html5shiv.js" />
                        <asp:ScriptReference Path="~/Scripts/Libraries/jquery-1.8.3.min.js" />
                        <asp:ScriptReference Path="~/Scripts/Libraries/jquery-ui-1.9.1.custom.min.js" />
                        <asp:ScriptReference Path="~/Scripts/Libraries/json2.js" />
                        <asp:ScriptReference Path="~/Scripts/Components/Uservoice.js" />
                        <asp:ScriptReference Path="~/Scripts/Plugins/jquery.validationhighlighter.js" />
                        <asp:ScriptReference Path="~/Scripts/Plugins/jquery.rounded.js" />
                        <asp:ScriptReference Path="~/Scripts/Plugins/jquery.tabStrip.js" />
                        <asp:ScriptReference Path="~/Scripts/Plugins/jquery.popin.js" />
                        <asp:ScriptReference Path="~/Scripts/Plugins/combobox.js" />
                        <asp:ScriptReference Path="~/Scripts/Plugins/jquery.contextmenu.js" />
                        <asp:ScriptReference Path="~/Scripts/Plugins/jquery.validate.min.js" />
                        <asp:ScriptReference Path="~/Scripts/Libraries/tinymce/jquery.tinymce.js" />
                        <asp:ScriptReference Path="~/Scripts/Plugins/eye.js" />
                        <asp:ScriptReference Path="~/Scripts/Plugins/colorpicker.js" />
                        <asp:ScriptReference Path="~/Scripts/Plugins/jquery.mainMenu.js" />
                        <asp:ScriptReference Path="~/Scripts/Plugins/jquery.cookie.js" />
                        <asp:ScriptReference Path="~/Scripts/Plugins/readmore.js" />
                        <asp:ScriptReference Path="~/Scripts/Pages/Errors/Rescue.aspx.js" />
                    </Scripts>
                </CompositeScript>
                <Scripts>
                    <asp:ScriptReference Path="~/Scripts/Libraries/tinymce/tiny_mce.js" />
                    <%-- tiny_mce don't support CompositeScript. the script use his url to load tinymce plugins --%>
                </Scripts>
            </asp:ScriptManager>
            <div class="loader">
                <p>
                    <asp:Literal ID="litLoading" runat="server" meta:resourcekey="litLoading" />
                </p>
            </div>
            <header>
                <asp:Repeater runat="server" ID="rptCultures" OnItemCommand="rptCultures_ItemCommand" OnItemDataBound="rptCultures_ItemDataBound">
                    <HeaderTemplate>
                        <ul class="flags">
                    </HeaderTemplate>
                    <FooterTemplate>
                        </ul>
                    </FooterTemplate>
                    <ItemTemplate>
                        <li id="iFlag" runat="server"></li>
                    </ItemTemplate>
                </asp:Repeater>
                <h1>
                    <asp:HyperLink ID="hlEnvironment" runat="server" NavigateUrl="~/" />
                </h1>
                <ul class="user">
                    <li>
                        <span>
                            <asp:PlaceHolder runat="server" ID="phSeller">
                                <span>
                                    <asp:Label ID="lblSeller" runat="server" AssociatedControlID="ddlSellers" meta:resourcekey="lblSeller" />
                                    <asp:DropDownList ID="ddlSellers" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlSellers_SelectedIndexChanged" DataValueField="SellerId" DataTextField="Code" CssClass="autoSize" />
                                </span>
                            </asp:PlaceHolder>
                            <asp:PlaceHolder runat="server" ID="phStore">
                                <span>
                                    <asp:Label ID="lblStore" runat="server" AssociatedControlID="ddlStores" meta:resourcekey="lblStore" />
                                    <asp:DropDownList ID="ddlStores" runat="server" DataValueField="StoreId" DataTextField="Code" AutoPostBack="true" OnSelectedIndexChanged="ddlStores_SelectedIndexChanged" />
                                </span>
                            </asp:PlaceHolder>
                            <asp:LinkButton ID="lbtnSwitch" runat="server" SkinID="Minor" meta:resourcekey="lbtnSwitch" OnClick="lbtnSwitch_Click" Visible="false" />
                        </span>
                    </li>
                    <li class="logout">
                        <span>
                            <asp:Literal ID="litConnectedAs" runat="server" meta:resourcekey="litConnectedAs" />
                        </span>
                        <asp:HyperLink ID="hlUserEdit" runat="server" />
                        <asp:ImageButton ID="imgbtnLogout" runat="server" SkinID="Logout" OnClick="imgbtnLogout_Click" meta:resourcekey="imgbtnLogout" />
                    </li>
                </ul>
            </header>
            <div class="contextual">
                <h2>
                    <asp:Literal ID="litRescue" runat="server" meta:resourcekey="litRescue" />
                </h2>
            </div>
            <div>
                <ul class="messages">
                    <li class="warning">
                        <asp:Literal runat="server" meta:resourcekey="litRescueText" />
                    </li>
                </ul>
            </div>
            <div id="bContent">
                <div class="form log" runat="server">
                    <fieldset>
                        <legend>
                            <asp:Literal runat="server" meta:resourcekey="litExceptionDetails" />
                        </legend>
                        <div runat="server" class="field inline break large">
                            <asp:Label ID="lblMessage" meta:resourcekey="lblMessage" runat="server" />
                            <div class="content"><asp:Literal ID="litMessage" runat="server" /></div>
                        </div>
                        <div class="field inline break large">
                            <asp:Label ID="lblException" meta:resourcekey="lblException" runat="server" />
                            <div class="content"><asp:Literal ID="litException" runat="server" /></div>
                        </div>
                        <div class="field inline break large">
                            <asp:Label ID="lblStackTrace" meta:resourcekey="lblStackTrace" runat="server" />
                            <div class="content"><asp:Literal ID="litStackTrace" runat="server" /></div>
                        </div>
                    </fieldset>
                </div>
            </div>
            <div class="contextual bottom buttons">
                <ul>
                    <li>
                        <asp:HyperLink runat="server" meta:resourceKey="hlBackToAdministrationConsole" NavigateUrl="~/" SkinID="Minor" />
                    </li>
                </ul>
            </div>
            <div class="contextual bottom buttons">
                <ul>
                    <li runat="server" id="liExportLastLogs">
                        <asp:LinkButton runat="server" ID="lbtnExportLastLogs" OnClick="lbtnExportLastLogs_Click" meta:resourcekey="lbtnExportLastLogs" SkinID="Major" />
                    </li>
                    <li runat="server" id="liClearCache">
                        <asp:LinkButton runat="server" ID="lbtnClearCache" OnClick="lbtnClearCache_Click" meta:resourcekey="lbtnClearCache" SkinID="Major" />
                    </li>
                    <li runat="server" id="liRestartApplicationTiers">
                        <asp:LinkButton runat="server" ID="lbtnRestartApplicationTiers" OnClick="lbtnRestartApplicationTiers_Click" meta:resourcekey="lbtnRestartApplicationTiers" SkinID="Major" />
                    </li>
                </ul>
            </div>
            <div class="contextual bottom buttons">
                <ul>
                    <li runat="server" id="liDisableSellerExtensions">
                        <asp:LinkButton runat="server" ID="lbtnDisableSellerExtensions" OnClick="lbtnDisableSellerExtensions_Click" meta:resourcekey="lbtnDisableSellerExtensions" SkinID="Major" />
                    </li>
                    <li runat="server" id="liDisablePlatformExtensions">
                        <asp:LinkButton runat="server" ID="lbtnDisablePlatformExtensions" OnClick="lbtnDisablePlatformExtensions_Click" meta:resourcekey="lbtnDisablePlatformExtensions" SkinID="Major" />
                    </li>
                    <li runat="server" id="liDisableAllExtensions">
                        <asp:LinkButton runat="server" ID="lbtnDisableAllExtensions" OnClick="lbtnDisableAllExtensions_Click" meta:resourcekey="lbtnDisableAllExtensions" SkinID="Major" />
                    </li>
                </ul>
            </div>
            <footer>
                <mag:footer runat="server" />
            </footer>
        </form>
    </div>
</body>
</html>
