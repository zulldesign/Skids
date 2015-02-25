<%@ Page Title="" Language="C#" MasterPageFile="~/App_Masters/DefaultLayout.Master"
    EnableEventValidation="false" AutoEventWireup="true" CodeBehind="List.aspx.cs"
    Inherits="Magelia.WebStore.Admin.Products.Suppliers.List" %>

<asp:Content ContentPlaceHolderID="cphBarTitle" runat="server">
    <asp:Literal ID="litSuppliers" runat="server" meta:resourcekey="litSuppliers" />
</asp:Content>
<asp:Content ContentPlaceHolderID="cphBarContent" runat="server">
    <ul>
        <mag:FeaturePanel runat="server" Level="CreateAndDelete" Tag="li">
            <asp:HyperLink runat="server" SkinID="Major" Text="<%$ Resources: Global, AddNew %>"
                NavigateUrl="~/Products/Suppliers/Edit.aspx" />
        </mag:FeaturePanel>
    </ul>
</asp:Content>
<asp:Content ContentPlaceHolderID="cphBody" runat="server">
    <mag:SearchPanel runat="server" DefaultButton="lbtnSearch">
        <div class="field inline">
            <asp:Label ID="lblCode" runat="server" AssociatedControlID="tbxCode" meta:resourcekey="lblCode" />
            <asp:TextBox ID="tbxCode" runat="server" />
        </div>
        <div class="buttons">
            <ul>
                <li>
                    <asp:LinkButton ID="lbtnReset" runat="server" Text="<%$ Resources:Global, Reset %>"
                        SkinID="Minor" OnClick="lbtnReset_Click" />
                </li>
                <li>
                    <asp:LinkButton ID="lbtnSearch" runat="server" Text="<%$ Resources:Global, Search %>"
                        SkinID="Major" ValidationGroup="vgSearch" OnClick="lbtnSearch_Click" meta:resourcekey="lbnSearch" />
                </li>
            </ul>
        </div>
    </mag:SearchPanel>
    <mag:Gridview runat="server" ID="mgvSuppliers" DataKeyNames="SupplierId" OnCommand="mgvSuppliers_Command">
        <commandbuttons>
            <mag:CommandButton Text="<%$ Resources: Global, Delete %>" CommandName="DeleteSuppliers"
                OnClientClick='<%$ resources:global, ClientClickConfirmDeletion %>' />
        </commandbuttons>
        <columns>
            <mag:GridViewColumn AllowSorting="true" SortExpression="Code" meta:resourcekey="mgvcCode">
                <celltemplate>
                    <asp:Literal runat="server" Text='<%# Eval("Code") %>'/>
                </celltemplate>
            </mag:GridViewColumn>
            <mag:GridViewColumn Name="<%$ Resources: Global, Action %>">
                <celltemplate>
                    <ul>
                        <li>
                            <asp:ImageButton runat="server" SkinID="Edit" ToolTip='<%$ resources:global,Edit %>' CommandName="EditSupplier" />
                        </li>
                        <mag:FeaturePanel runat="server" Level="CreateAndDelete" Tag="Li">
                            <asp:ImageButton runat="server" SkinID="Delete" ToolTip='<%$ resources:global,Delete %>' OnClientClick='<%$ resources:global, ClientClickConfirmDeletion %>' CommandName="DeleteSuppliers" />
                        </mag:FeaturePanel>
                    </ul>
                </celltemplate>
            </mag:GridViewColumn>
        </columns>
    </mag:Gridview>
</asp:Content>
