<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="StatusFilterViewModel.ascx.cs" Inherits="Magelia.WebStore.Admin.App_UserControls.Dynamics.StatusFilterViewModel" %>

<%@ Register TagPrefix="magd" Assembly="Magelia.WebStore.Runtime.Web" Namespace="Magelia.WebStore.Web.UI.WebControls.Dynamics.DynamicControls" %>

<asp:Panel runat="server" CssClass="field inline break">
    <asp:Label runat="server" ID="lblStatusType" AssociatedControlID="cblStatusType" meta:resourceKey="lblStatusType"></asp:Label>
    <magd:CheckBoxList runat="server" ID="cblStatusType" AutoPostBack="true" EnableViewState="false" OnSelectedIndexChanged="cblStatusType_SelectedIndexChanged" RepeatLayout="UnorderedList">
    </magd:CheckBoxList>
</asp:Panel>
