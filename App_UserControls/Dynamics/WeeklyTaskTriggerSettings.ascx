<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WeeklyTaskTriggerSettings.ascx.cs" Inherits="Magelia.WebStore.Admin.App_UserControls.Dynamics.WeeklyTaskTriggerSettings" %>

<%@ Register TagPrefix="local" TagName="DateTimePicker" Src="~/App_UserControls/Generics/DateTimePicker.ascx" %>
<%@ Register TagPrefix="local" TagName="SwapList" Src="~/App_UserControls/Generics/SwapList.ascx" %>
<%@ Register TagPrefix="local" TagName="TimePicker" Src="~/App_UserControls/Generics/TimePicker.ascx" %>

<div class="field">
    <asp:Label runat="server" meta:resourcekey="lblStartDate" AssociatedControlID="dtpStartDate" />
    <local:dateTimePicker runat="server" id="dtpStartDate" />
    <asp:RequiredFieldValidator ID="rfvStartDate" runat="server" ControlToValidate="dtpStartDate" meta:resourceKey="rfvStartDate" />
</div>
<div class="field break-after">
    <asp:Label runat="server" meta:resourcekey="lblDueDate" AssociatedControlID="dtpDueDate" />
    <local:dateTimePicker runat="server" id="dtpDueDate" />
    <asp:CustomValidator runat="server" meta:resourceKey="cvDueDate" ID="cvDueDate" ControlToValidate="dtpDueDate" OnServerValidate="cvDueDate_ServerValidate" />
</div>
<div class="field">
    <asp:Label ID="lblTime" runat="server" meta:resourcekey="lblTime" AssociatedControlID="tpTime" />
    <local:timePicker runat="server" id="tpTime" />
</div>
<div class="field break-after">
    <asp:Label ID="lblStartTimeout" runat="server" meta:resourcekey="lblStartTimeout" AssociatedControlID="tpStartTimeout" />
    <local:timePicker runat="server" id="tpStartTimeout" />
    <asp:CustomValidator ID="cvStartTimeout" runat="server" OnServerValidate="cvStartTimeout_ServerValidate" meta:resourcekey="cvStartTimeout" />
</div>
<div class="field break-after">
    <asp:Label ID="lblDaysOfWeek" runat="server" meta:resourcekey="lblDaysOfWeek" AssociatedControlID="slDaysOfWeek" />
    <local:SwapList runat="server" ID="slDaysOfWeek" DataTextField="Key" DataValueField="Value" meta:resourcekey="slDaysOfWeek" />
    <asp:CustomValidator ID="cvDaysOfWeek" runat="server" OnServerValidate="cvDaysOfWeek_ServerValidate" meta:resourcekey="cvDaysOfWeek" />
</div>
