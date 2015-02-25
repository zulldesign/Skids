<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="TimePicker.ascx.cs" Inherits="Magelia.WebStore.Admin.App_UserControls.Generics.TimePicker" %>
<asp:UpdatePanel runat="server" UpdateMode="Conditional" ID="upDateTime">
    <ContentTemplate>
        <div class="time-picker">
            <asp:DropDownList ID="ddlHours" runat="server" CssClass="autoSize" AutoPostBack="true" OnSelectedIndexChanged="ddlHours_SelectedIndexChanged" />
            <asp:Label ID="lblHours" runat="server" meta:resourcekey="lblHours" />
            <asp:DropDownList ID="ddlMinutes" runat="server" CssClass="autoSize" AutoPostBack="true" OnSelectedIndexChanged="ddlMinutes_SelectedIndexChanged" />
            <asp:Label ID="lblMinutes" runat="server" meta:resourcekey="lblMinutes" />
            <asp:DropDownList ID="ddlSeconds" runat="server" CssClass="autoSize" AppendDataBoundItems="true" AutoPostBack="true" OnSelectedIndexChanged="ddlSeconds_SelectedIndexChanged" />
            <asp:Label ID="lblSeconds" runat="server" meta:resourcekey="lblSeconds" />
        </div>
    </ContentTemplate>
</asp:UpdatePanel>
