<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="DateTimeOffset.ascx.cs" Inherits="Magelia.WebStore.Admin.App_UserControls.Dynamics.DateTimeOffset" %>

<%@ Register TagPrefix="local" TagName="DatePicker" Src="~/App_UserControls/Generics/DatePicker.ascx" %>
<%@ Register TagPrefix="local" TagName="DateTimePicker" Src="~/App_UserControls/Generics/DateTimePicker.ascx" %>

<asp:Panel runat="server" ID="pnlDateTime">
    <local:DateTimePicker ID="dtpDateTimeOffset" runat="server" />
    <asp:CustomValidator runat="server" ID="cvDateTimeOffset" ControlToValidate="dtpDateTimeOffset" OnServerValidate="cvDateTimeOffset_ServerValidate" Display="Dynamic" Text="*" meta:resourceKey="cvDateTimeOffset" />
</asp:Panel>
<asp:Panel runat="server" ID="pnlDate" Enabled="false" Visible="false">
    <local:DatePicker ID="dpDateOffset" runat="server" />
    <asp:CustomValidator runat="server" ID="cvDateOffset" ControlToValidate="dpDateOffset" OnServerValidate="cvDateOffset_ServerValidate" Display="Dynamic" Text="*" meta:resourceKey="cvDateOffset" />
</asp:Panel>
