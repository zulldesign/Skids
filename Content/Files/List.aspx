<%@ Page Title="" Language="C#" MasterPageFile="~/App_Masters/DefaultLayout.Master" AutoEventWireup="true" CodeBehind="List.aspx.cs" Inherits="Magelia.WebStore.Admin.Content.Files.List" %>

<%@ Register TagPrefix="mag" TagName="FileManager" Src="~/App_UserControls/Generics/FileManager.ascx" %>
<asp:Content ContentPlaceHolderID="cphBarTitle" runat="server">
    <asp:Literal ID="litMedias" runat="server" meta:resourcekey="litMedias" />
</asp:Content>
<asp:Content ContentPlaceHolderID="cphBody" runat="server">
    <mag:FileManager ID="mfmList" runat="server" AllowedSelection="None"/>
</asp:Content>
