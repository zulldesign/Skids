<%@ Page Title="" Language="C#" MasterPageFile="~/App_Masters/DefaultLayout.Master" AutoEventWireup="true" CodeBehind="List.aspx.cs" Inherits="Magelia.WebStore.Admin.Products.Types.List" %>

<%@ Import Namespace="Magelia.WebStore.Data.Entities" %>

<asp:Content ContentPlaceHolderID="cphBarTitle" runat="server">
    <asp:Literal ID="litTypes" runat="server" meta:resourcekey="litTypes" />
</asp:Content>
<asp:Content ContentPlaceHolderID="cphBarContent" runat="server">
    <ul>
        <mag:FeaturePanel runat="server" Level="CreateAndDelete" Tag="Li">
            <asp:HyperLink runat="server" SkinID="Major" NavigateUrl="~/Products/Types/Edit.aspx"
                Text='<%$ resources:global, AddNew %>' />
        </mag:FeaturePanel>
    </ul>
</asp:Content>
<asp:Content ContentPlaceHolderID="cphBody" runat="server">
    <mag:SearchPanel runat="server" DefaultButton="lbtnSearch">
        <div class="field">
            <asp:Label ID="lblCode" runat="server" meta:resourcekey="lblCode" AssociatedControlID="tbxCode" />
            <asp:TextBox ID="tbxCode" runat="server" />
        </div>
        <div class="field">
            <asp:Label ID="lblName" runat="server" meta:resourcekey="lblName" AssociatedControlID="tbxName" />
            <asp:TextBox ID="tbxName" runat="server" />
        </div>
        <div class="field">
            <asp:Label ID="lblProductKind" runat="server" AssociatedControlID="ddlProductKinds"
                meta:resourcekey="lblProductKind" />
            <asp:DropDownList ID="ddlProductKinds" runat="server">
                <asp:ListItem />
                <asp:ListItem Value="0" meta:resourcekey="liStandard" />
                <asp:ListItem Value="1" meta:resourcekey="liVariable" />
                <asp:ListItem Value="3" meta:resourcekey="liBundle" />
            </asp:DropDownList>
        </div>
        <div class="field">
            <asp:Label runat="server" meta:resourcekey="lblIsVirtual" AssociatedControlID="ddlIsVirtual" />
            <asp:DropDownList ID="ddlIsVirtual" runat="server">
                <asp:ListItem />
                <asp:ListItem Value="False" meta:resourcekey="liPhysical" />
                <asp:ListItem Value="True" meta:resourcekey="liVirtual" />
            </asp:DropDownList>
        </div>
        <div class="field">
            <asp:Label runat="server" meta:resourcekey="lblIsManaged" AssociatedControlID="ddlIsManaged" />
            <asp:DropDownList ID="ddlIsManaged" runat="server">
                <asp:ListItem />
                <asp:ListItem Value="False" meta:resourcekey="liUnmanaged" />
                <asp:ListItem Value="True" meta:resourcekey="liManaged" />
            </asp:DropDownList>
        </div>
        <div class="buttons">
            <ul>
                <li>
                    <asp:LinkButton ID="lbtnReset" runat="server" Text='<%$ resources:global, Reset %>'
                        SkinID="Minor" OnClick="lbtnReset_Click" />
                </li>
                <li>
                    <asp:LinkButton ID="lbtnSearch" runat="server" Text='<%$ resources:global, Search %>'
                        SkinID="Major" OnClick="lbtnSearch_Click" />
                </li>
            </ul>
        </div>
    </mag:SearchPanel>
    <mag:Gridview ID="mgvTypes" runat="server" AllowPaging="true" DataKeyNames="TypeId"
        ShowSelectionColumn="true" OnCommand="mgvTypes_Command">
        <commandbuttons>
            <mag:CommandButton runat="server" Text='<%$ resources:global, Delete %>' CommandName="DeleteTypes"
                OnClientClick='<%$ resources:global, ClientClickConfirmDeletion %>' />
        </commandbuttons>
        <columns>
            <mag:GridViewColumn AllowSorting="true" SortExpression="Code" meta:resourcekey="mgvcCode">
                <celltemplate>
                    <asp:Literal runat="server" Text='<%# Eval("Code") %>' />
                </celltemplate>
            </mag:GridViewColumn>
            <mag:GridViewColumn AllowSorting="true" SortExpression="Name" meta:resourcekey="mgvcName">
                <celltemplate>
                    <asp:Literal runat="server" Text='<%# Eval("Name") %>' />
                </celltemplate>
            </mag:GridViewColumn>
            <mag:GridViewColumn AllowSorting="true" SortExpression="ProductKind" meta:resourcekey="mgvcProductKind">
                <celltemplate>
                   <asp:MultiView runat="server" ActiveViewIndex='<%# Eval("ProductKindIndex") %>' >
                        <asp:View runat="server">
                            <asp:Literal ID="litStandard" runat="server" meta:resourcekey="litStandard" />
                        </asp:View>
                        <asp:View runat="server">
                            <asp:Literal ID="litVariable" runat="server" meta:resourcekey="litVariable" />
                        </asp:View>
                        <asp:View runat="server">
                            <asp:Literal ID="litBundle" runat="server" meta:resourcekey="litBundle" />
                        </asp:View>
                    </asp:MultiView>
                </celltemplate>
            </mag:GridViewColumn>
            <mag:GridViewColumn AllowSorting="true" SortExpression="IsVirtual" meta:resourcekey="mgvcPhysicalOrVirtual">
                <celltemplate>
                    <asp:MultiView runat="server" ActiveViewIndex='<%# ((TypeViewModel)Container.DataItem).IsVirtual ? 0 : 1  %>' >
                       <asp:View runat="server">
                        <asp:Literal runat="server" meta:resourcekey="litVirtual" />
                       </asp:View>
                       <asp:View  runat="server">
                        <asp:Literal runat="server" meta:resourcekey="litPhysical" />
                       </asp:View>
                    </asp:MultiView>
                </celltemplate>
            </mag:GridViewColumn>
            <mag:GridViewColumn AllowSorting="true" SortExpression="IsManaged" meta:resourcekey="mgvcInventory">
                <celltemplate>
                    <asp:MultiView runat="server" ActiveViewIndex='<%# ((TypeViewModel)Container.DataItem).IsManaged ? 0 : 1 %>' >
                       <asp:View runat="server">
                        <asp:Literal runat="server" meta:resourcekey="litManaged" />
                       </asp:View>
                       <asp:View  runat="server">
                        <asp:Literal runat="server" meta:resourcekey="litUnmanaged" />
                       </asp:View>
                    </asp:MultiView>
                </celltemplate>
            </mag:GridViewColumn>
            <mag:GridViewColumn AllowSorting="false" Name='<%$ resources:global, Action %>'>
                <celltemplate>
                    <ul>
                        <li>
                            <asp:ImageButton runat="server" CommandName="EditType" SkinID="Edit" ToolTip='<%$ resources:global,Edit %>' />
                        </li>
                        <li>
                            <asp:ImageButton runat="server" CommandName="CopyType" SkinID="Copy" ToolTip='<%$ resources:global,Copy %>' />
                        </li>
                        <li runat="server" visible='<%# !((TypeViewModel)Container.DataItem).HasProducts && this.CanCreateAndDelete %>' >
                            <asp:ImageButton runat="server" CommandName="DeleteTypes" SkinID="Delete" ToolTip='<%$ resources:global,Delete %>' OnClientClick='<%$ resources:global, ClientClickConfirmDeletion%>'  />
                        </li>
                    </ul>
                </celltemplate>
            </mag:GridViewColumn>
        </columns>
    </mag:Gridview>
</asp:Content>
