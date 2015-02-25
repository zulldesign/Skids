<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="RecurrenceTimeTaskTriggerSettings.ascx.cs" Inherits="Magelia.WebStore.Admin.App_UserControls.Dynamics.RecurrenceTimeTaskTriggerSettings" %>

<%@ Register TagPrefix="local" TagName="DateTimePicker" Src="~/App_UserControls/Generics/DateTimePicker.ascx" %>
<%@ Register TagPrefix="local" TagName="TimePicker" Src="~/App_UserControls/Generics/TimePicker.ascx" %>

<div class="field">
    <asp:Label runat="server" meta:resourcekey="lblStartDate" AssociatedControlID="dtpStartDate" />
    <local:DateTimePicker runat="server" ID="dtpStartDate" />
    <asp:RequiredFieldValidator ID="rfvStartDate" runat="server" ControlToValidate="dtpStartDate" meta:resourceKey="rfvStartDate" />
</div>
<div class="field break-after">
    <asp:Label runat="server" meta:resourcekey="lblDueDate" AssociatedControlID="dtpDueDate" />
    <local:DateTimePicker runat="server" ID="dtpDueDate" />
    <asp:CustomValidator runat="server" meta:resourceKey="cvDueDate" ID="cvDueDate" ControlToValidate="dtpDueDate" OnServerValidate="cvDueDate_ServerValidate" />
</div>
<div class="field break-after">
    <asp:Label ID="lblInterval" runat="server" AssociatedControlID="dInterval" meta:resourcekey="lblInterval" />
    <div runat="server" id="dInterval" class="field inline">
        <asp:CustomValidator runat="server" meta:resourceKey="cvInterval" ID="cvInterval" OnServerValidate="cvInterval_ServerValidate" />
        <asp:TextBox runat="server" ID="tbxIntervalDays" type="number" CssClass="numeric autoSize" />
        <asp:CompareValidator ID="cpvIntervalDays" runat="server" meta:resourceKey="cpvIntervalDays" ControlToValidate="tbxIntervalDays" Type="Integer" ValueToCompare="0" Operator="GreaterThanEqual" />
        <asp:Label ID="lblIntervalDays" runat="server" AssociatedControlID="tbxIntervalDays" meta:resourceKey="lblIntervalDays" />
        <local:TimePicker runat="server" ID="tpInterval" />
    </div>
</div>
<div class="field break-after">
    <asp:Label ID="lblStartTimeout" runat="server" meta:resourcekey="lblStartTimeout" AssociatedControlID="tpStartTimeout" />
    <local:TimePicker runat="server" ID="tpStartTimeout" />
    <asp:CustomValidator ID="cvStartTimeout" runat="server" OnServerValidate="cvStartTimeout_ServerValidate" meta:resourcekey="cvStartTimeout" />
</div>
