<%@ Page Title="" Language="C#" MasterPageFile="~/App_Masters/DefaultLayout.Master"
    AutoEventWireup="true" CodeBehind="List.aspx.cs" Inherits="Magelia.WebStore.Admin.Administration.Caches.List" %>

<asp:Content ContentPlaceHolderID="cphBarTitle" runat="server">
    <asp:Literal ID="litApplicationTiers" runat="server" meta:resourcekey="litApplicationTiers" />
</asp:Content>
<asp:Content ContentPlaceHolderID="cphBarContent" runat="server">

</asp:Content>
<asp:Content ContentPlaceHolderID="cphBody" runat="server">
    <mag:Gridview ID="mgvApplicationTiers" runat="server" AllowPaging="true" DataKeyNames="ApplicationTierId" ShowSelectionColumn="true" OnCommand="mgvApplicationTiers_Command">
        <Columns>
            <mag:GridViewColumn ID="mgvcComputerName" runat="server" AllowSorting="true" SortExpression="ComputerName" meta:resourcekey="mgvcComputerName">
                <celltemplate>
                    <asp:Literal runat="server" Text='<%# Eval("ComputerName") %>' />
                </celltemplate>
            </mag:GridViewColumn>
            <mag:GridViewColumn ID="mgvcServicePath" runat="server" AllowSorting="true" SortExpression="ServicePath" meta:resourcekey="mgvcServicePath">
                <celltemplate>
                    <asp:Literal runat="server" Text='<%# Eval("ServicePath") %>' />
                </celltemplate>
            </mag:GridViewColumn>
            <mag:GridViewColumn ID="mgvcRuntimeType" runat="server" AllowSorting="true" SortExpression="RuntimeType" meta:resourcekey="mgvcRuntimeType">
                <celltemplate>
                    <asp:Literal runat="server" Text='<%# Eval("RuntimeType") %>' />
                </celltemplate>
            </mag:GridViewColumn>

            <mag:GridViewColumn runat="server" AllowSorting="false" Name='<%$ resources:global, Action %>'>
                <celltemplate>
                    <ul>
                        <li>
                            <asp:ImageButton runat="server" SkinID="Edit" ToolTip='<%$ resources:global,Edit %>' CommandName="ClearCache" />
                        </li>
                    </ul>
                </celltemplate>
            </mag:GridViewColumn>
        </Columns>
    </mag:Gridview>
</asp:Content>
