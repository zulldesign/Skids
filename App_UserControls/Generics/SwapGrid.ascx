<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SwapGrid.ascx.cs" Inherits="Magelia.WebStore.Admin.App_UserControls.Generics.SwapGrid" %>
<%@ Register TagPrefix="local" TagName="gridview" Src="~/App_UserControls/Generics/GridView.ascx" %>
<local:Gridview runat="server" ID="mgvItems" DataKeyNames="ItemId" AllowPaging="false">
    <Columns>
        <mag:GridViewColumn AllowSorting="true" SortExpression="Code" meta:resourceKey="CodeColumn">
            <celltemplate>
                <%#((ItemViewModel)(Container.DataItem)).Code%>
            </celltemplate>
        </mag:GridViewColumn>
        <mag:GridViewColumn AllowSorting="true" SortExpression="DisplayName" meta:resourcekey="DisplayNameColumn">
            <celltemplate>
                <%#((ItemViewModel)(Container.DataItem)).DisplayName%>
            </celltemplate>
        </mag:GridViewColumn>
        <mag:GridViewColumn meta:resourcekey="IsSelectedColumn" ID="IsSelectedColumn">
            <celltemplate>
                <asp:CheckBox id="cbIsSelected" runat="server" Enabled='<%# !this.ReadOnly %>' AutoPostBack="true" Checked='<%# ((ItemViewModel)(Container.DataItem)).IsAvailable %>' OnCheckedChanged="cbAvailable_CheckedChanged" />
            </celltemplate>
        </mag:GridViewColumn>
        <mag:GridViewColumn meta:resourcekey="IsDefaultColumn" id="IsDefaultColumn">
            <celltemplate>
                <asp:RadioButton id="cbIsDefault" runat="server" AutoPostBack="true" Checked="<%# ((ItemViewModel)(Container.DataItem)).IsDefault %>" Enabled="<%# ((ItemViewModel)(Container.DataItem)).IsAvailable && !this.ReadOnly %>" OnCheckedChanged="rbIsDefault_CheckedChanged"/>
            </celltemplate> 
        </mag:GridViewColumn>
    </Columns>
</local:Gridview>
<asp:CustomValidator runat="server" ID="cvCheckMinimumSelected" OnServerValidate="cvCheckMinimumSelected_ServerValidate"  ValidationGroup="vgWebsiteForm" meta:resourceKey="cvCheckMinimumSelected" Text="*" />
<asp:CustomValidator runat="server" ID="cvCheckDefault" OnServerValidate="cvCheckDefault_ServerValidate"  ValidationGroup="vgWebsiteForm" meta:resourceKey="cvCheckDefault" Text="*" />
