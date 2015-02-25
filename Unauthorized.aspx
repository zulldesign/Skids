<%@ Page Title="" Language="C#" MasterPageFile="~/App_Masters/DefaultLayout.Master"
    AutoEventWireup="true" CodeBehind="Unauthorized.aspx.cs" Inherits="Magelia.WebStore.Admin.Unauthorized" %>

<%@ Register TagPrefix="mag" TagName="Unauthorized" Src="~/App_UserControls/Generics/Unauthorized.ascx" %>

<asp:Content ContentPlaceHolderID="cphBarTitle" runat="server">
    <asp:Literal ID="litUnauthorized" runat="server" meta:resourcekey="litUnauthorized" />
</asp:Content>
<asp:Content ContentPlaceHolderID="cphBody" runat="server">
    <mag:Unauthorized runat="server" />
</asp:Content>
