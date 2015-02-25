<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Standalone.aspx.cs" Inherits="Magelia.WebStore.Admin.Content.Files.Standalone"
    MaintainScrollPositionOnPostback="true" %>

<%@ Register TagPrefix="mag" TagName="FileManager" Src="~/App_UserControls/Generics/FileManager.ascx" %>
<!DOCTYPE html >
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>
        <asp:Literal ID="litFileManager" runat="server" meta:resourcekey="litFileManager" />
    </title>
     <asp:PlaceHolder runat="server">
        <%: System.Web.Optimization.Styles.Render("~/App_Themes/New/All") %>
    </asp:PlaceHolder>
</head>
<body>
    <form runat="server">
    <asp:ScriptManager runat="server" EnableScriptGlobalization="true">
        <CompositeScript>
            <Scripts>
                <asp:ScriptReference Path="~/Scripts/Libraries/tinymce/tiny_mce_popup.js" />
                <asp:ScriptReference Path="~/Scripts/Libraries/jquery-1.8.3.min.js" />
                <asp:ScriptReference Path="~/Scripts/Libraries/jquery-ui-1.9.1.custom.min.js" />
                <asp:ScriptReference Path="~/Scripts/Plugins/jquery.contextmenu.js" />
                <asp:ScriptReference Path="~/Scripts/Plugins/jquery.validate.min.js" />
                <asp:ScriptReference Path="~/Scripts/Components/File/Manager.js" />
                <asp:ScriptReference Path="~/Scripts/Components/File/Manager.Localizations.js" ResourceUICultures="fr" />
            </Scripts>
        </CompositeScript>
        <Services>
            <asp:ServiceReference Path="~/Content/Files/Services.asmx" />
        </Services>
    </asp:ScriptManager>
    <mag:FileManager ID="mfmStandalone" runat="server" AllowedSelection="One" />
    </form>
</body>
</html>
