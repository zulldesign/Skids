<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="OneTimeTaskTriggerSettings.ascx.cs" Inherits="Magelia.WebStore.Admin.App_UserControls.Dynamics.OneTimeTaskTriggerSettings" %>

<%@ Register TagPrefix="local" TagName="DateTimePicker" Src="~/App_UserControls/Generics/DateTimePicker.ascx" %>
<%@ Register TagPrefix="local" TagName="TimePicker" Src="~/App_UserControls/Generics/TimePicker.ascx" %>

<div class="field">
    <asp:Label runat="server" meta:resourcekey="lblScheduledDate" AssociatedControlID="dtpScheduledDate" />
    <local:dateTimePicker runat="server" id="dtpScheduledDate" />
    <asp:RequiredFieldValidator runat="server" ID="rfvScheduledDate" ControlToValidate="dtpScheduledDate" meta:resourceKey="rfvScheduledDate" />
</div>
<div class="field break-after">
    <asp:Label ID="lblStartTimeout" runat="server" meta:resourcekey="lblStartTimeout" AssociatedControlID="tpStartTimeout" />
    <local:timePicker runat="server" id="tpStartTimeout" />
    <asp:CustomValidator ID="cvStartTimeout" runat="server" OnServerValidate="cvStartTimeout_ServerValidate" meta:resourcekey="cvStartTimeout" />
</div>
