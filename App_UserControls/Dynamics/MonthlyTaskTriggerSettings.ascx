<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="MonthlyTaskTriggerSettings.ascx.cs" Inherits="Magelia.WebStore.Admin.App_UserControls.Dynamics.MonthlyTaskTriggerSettings" %>

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
    <asp:Label ID="lblMonthsOfYear" runat="server" meta:resourcekey="lblMonthsOfYear" AssociatedControlID="slMonthsOfYear" />
    <local:SwapList runat="server" ID="slMonthsOfYear" DataTextField="Key" DataValueField="Value" meta:resourcekey="slMonthsOfYear" />
    <asp:CustomValidator ID="cvMonthsOfYear" runat="server" OnServerValidate="cvMonthsOfYear_ServerValidate" meta:resourcekey="cvMonthsOfYear" />
</div>
<div class="field break-after">
    <asp:Label ID="lblDaysOfMonth" runat="server" meta:resourcekey="lblDaysOfMonth" AssociatedControlID="slDaysOfMonth" />
    <local:SwapList runat="server" ID="slDaysOfMonth" DataTextField="Key" DataValueField="Value" meta:resourcekey="slDaysOfMonth" />
    <asp:CustomValidator ID="cvDaysOfMonth" runat="server" OnServerValidate="cvDaysOfMonth_ServerValidate" meta:resourcekey="cvDaysOfMonth" />
</div>
