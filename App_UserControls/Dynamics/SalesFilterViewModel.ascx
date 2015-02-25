<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SalesFilterViewModel.ascx.cs" Inherits="Magelia.WebStore.Admin.App_UserControls.Dynamics.SalesFilterViewModel" %>

<%@ Register TagPrefix="magd" Assembly="Magelia.WebStore.Runtime.Web" Namespace="Magelia.WebStore.Web.UI.WebControls.Dynamics.DynamicControls" %>
<%@ Register TagPrefix="mag" TagName="DatePicker" Src="~/App_UserControls/Generics/DatePicker.ascx" %>

<asp:Panel runat="server" CssClass="field inline break">
    <asp:Label runat="server" ID="lblPeriodType" AssociatedControlID="ddlPeriodType" meta:resourceKey="lblPeriodType"></asp:Label>
    <magd:DropDownList runat="server" ID="ddlPeriodType" AutoPostBack="true" EnableViewState="false" OnSelectedIndexChanged="ddlPeriodType_SelectedIndexChanged">
    </magd:DropDownList>
    <asp:CustomValidator runat="server" ID="cvPeriodType" ControlToValidate="ddlPeriodType" Display="Dynamic" Text="*" meta:resourceKey="cvPeriodType" OnServerValidate="cvPeriodType_ServerValidate"></asp:CustomValidator>
</asp:Panel>
<asp:Panel runat="server" ID="pnlCustomPeriod" CssClass="field inline break">
    <asp:Panel runat="server" CssClass="field inline">
        <asp:Label runat="server" ID="lblStartDate" AssociatedControlID="dpStartDate" meta:resourceKey="lblStartDate"></asp:Label>
        <mag:DatePicker runat="server" ID="dpStartDate" OnSelectionChanged="dpStartDate_SelectionChanged" />
        <asp:CustomValidator runat="server" ID="cvStartDate" ControlToValidate="dpStartDate" Display="Dynamic" Text="*" meta:resourceKey="cvStartDate" OnServerValidate="cvStartDate_ServerValidate"></asp:CustomValidator>
    </asp:Panel>
    <asp:Panel runat="server" CssClass="field inline">
        <asp:Label runat="server" ID="lblEndDate" AssociatedControlID="dpEndDate" meta:resourceKey="lblEndDate"></asp:Label>
        <mag:DatePicker runat="server" ID="dpEndDate" OnSelectionChanged="dpEndDate_SelectionChanged" />
        <asp:CustomValidator runat="server" ID="cvEndDate" ControlToValidate="dpEndDate" Display="Dynamic" Text="*" meta:resourceKey="cvEndDate" OnServerValidate="cvEndDate_ServerValidate"></asp:CustomValidator>
    </asp:Panel>
</asp:Panel>
<asp:Panel runat="server" CssClass="field inline break">
    <asp:Label runat="server" ID="lblCurrencyId" AssociatedControlID="ddlCurrencyId" meta:resourceKey="lblCurrencyId"></asp:Label>
    <magd:DropDownList runat="server" ID="ddlCurrencyId" AutoPostBack="true" EnableViewState="false" OnSelectedIndexChanged="ddlCurrencyId_SelectedIndexChanged">
    </magd:DropDownList>
    <asp:CustomValidator runat="server" ID="cvCurrencyId" ControlToValidate="ddlCurrencyId" Display="Dynamic" Text="*" meta:resourceKey="cvCurrencyId" OnServerValidate="cvCurrencyId_ServerValidate"></asp:CustomValidator>
</asp:Panel>
<asp:Panel runat="server" CssClass="field inline break">
    <asp:Label runat="server" ID="lblStatusType" AssociatedControlID="cblStatusType" meta:resourceKey="lblStatusType"></asp:Label>
    <magd:CheckBoxList runat="server" ID="cblStatusType" AutoPostBack="true" EnableViewState="false" OnSelectedIndexChanged="cblStatusType_SelectedIndexChanged" RepeatLayout="UnorderedList">
    </magd:CheckBoxList>
</asp:Panel>
