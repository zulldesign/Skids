<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ComponentConfigurator.ascx.cs" Inherits="Magelia.WebStore.Admin.App_UserControls.Generics.ComponentConfigurator" %>

<div class="field inline break-after">
    <asp:Label runat="server" ID="lblComponentType" AssociatedControlID="ddlComponentType" />
    <asp:DropDownList runat="server" ID="ddlComponentType" AutoPostBack="true" DataTextField="Name" DataValueField="AssemblyQualifiedName" OnSelectedIndexChanged="ddlComponentType_SelectedIndexChanged" />
</div>
<mag:DynamicControl ID="dcParameters" runat="server" />
