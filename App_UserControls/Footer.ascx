<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Footer.ascx.cs" Inherits="Magelia.WebStore.Admin.App_UserControls.Footer" %>
<%@ Register Namespace="System.Web.UI" TagPrefix="asp" Assembly="System.Web" %>
<%@ Import Namespace="Magelia.WebStore.Runtime" %>
<table id="tFooter">
    <tbody>
        <tr>
            <td id="tdLogo" class="logo" runat="server">
                <asp:HyperLink ID="hlMageliaWebStore" runat="server" NavigateUrl="http://www.magelia.org" Target="_blank" meta:resourcekey="hlMageliaWebStore">
                    <asp:Image ID="imgMageliaWebStore" runat="server" SkinID="Magelia" meta:resourcekey="imgMageliaWebStore" />
                </asp:HyperLink>
            </td>
            <td>
                <asp:HyperLink ID="hlEdition" runat="server" NavigateUrl="~/administration/Platform/Licensing.aspx" />
                <asp:Literal ID="litStatus" runat="server" />
                &copy; Magelia 2014</td>
            <td>|</td>
            <td>
                <asp:Literal ID="litVersion" runat="server" />
            </td>
            <td>|</td>
            <td>
                <asp:HyperLink ID="hlLicense" meta:resourcekey="hlLicense" runat="server" Target="_blank" />
            </td>
            <td>|</td>
            <td>
                <asp:HyperLink ID="hlCredits" navigateurl="http://www.magelia.org/credits" meta:resourcekey="hlCredits" runat="server" Target="_blank" />
            </td>
            <td>|</td>            
            <td>
                <asp:UpdatePanel runat="server" RenderMode="Inline">
                    <contenttemplate>
                <asp:Literal runat="server" meta:resourcekey="litTimeTakenLabel" /> <em><strong><asp:control runat="server" id="cTimeTaken" /></strong></em>
            </contenttemplate>
                </asp:UpdatePanel>
            </td>
        </tr>
    </tbody>
</table>
