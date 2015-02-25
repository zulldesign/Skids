<%@ Page Title="" Language="C#" MasterPageFile="~/App_Masters/DefaultLayout.Master"
    AutoEventWireup="true" CodeBehind="List.aspx.cs" Inherits="Magelia.WebStore.Admin.Products.Attributes.List" %>

<asp:Content ContentPlaceHolderID="cphBarTitle" runat="server">
    <asp:Literal ID="litAttributes" runat="server" meta:resourcekey="litAttributes" />
</asp:Content>
<asp:Content ContentPlaceHolderID="cphBarContent" runat="server">
    <mag:FeaturePanel runat="server" Level="CreateAndDelete" Tag="Ul">
        <li>
            <asp:HyperLink runat="server" Text='<%$ resources:global, AddNew %>' SkinID="Major"
                NavigateUrl="~/Products/Attributes/Edit.aspx" />
        </li>
    </mag:FeaturePanel>
</asp:Content>
<asp:Content ContentPlaceHolderID="cphBody" runat="server">
    <mag:SearchPanel runat="server" DefaultButton="lbtnSearch">
        <div class="field">
            <asp:Label ID="lblCode" runat="server" AssociatedControlID="tbxCode" meta:resourcekey="lblCode" />
            <asp:TextBox ID="tbxCode" runat="server" />
        </div>
        <div class="field">
            <asp:Label ID="lblName" runat="server" AssociatedControlID="tbxName" meta:resourcekey="lblName" />
            <asp:TextBox ID="tbxName" runat="server" />
        </div>
        <div class="field">
            <asp:Label ID="lblDescription" runat="server" AssociatedControlID="tbxDescription"
                meta:resourcekey="lblDescription" />
            <asp:TextBox ID="tbxDescription" runat="server" />
        </div>
        <div class="field">
            <asp:Label ID="lblType" runat="server" AssociatedControlID="ddlTypes" meta:resourcekey="lblType" />
            <asp:DropDownList ID="ddlTypes" runat="server" AppendDataBoundItems="true" DataTextField="Code"
                DataValueField="ProductAttributeTypeId">
                <asp:ListItem />
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
    <mag:gridview id="mgvAttributes" runat="server" datakeynames="AttributeId" showselectioncolumn="true"
        allowpaging="true" oncommand="mgvAttributes_Command">
        <commandbuttons>
            <mag:CommandButton runat="server" Text='<%$ resources:global, Delete %>' CommandName="DeleteAttributes"
                OnClientClick='<%$ resources:global, ClientClickConfirmDeletion %>' />
        </commandbuttons>
        <columns>
            <mag:GridViewColumn AllowSorting="true" runat="server" SortExpression="Code" meta:resourcekey="mgvcCode">
                <celltemplate>
                        <asp:Literal runat="server" Text='<%# Eval("Code") %>' />
                    </celltemplate>
            </mag:GridViewColumn>
            <mag:GridViewColumn AllowSorting="true" runat="server" SortExpression="Name" meta:resourcekey="mgvcName">
                <celltemplate>
                        <asp:Literal runat="server" Text='<%# Eval("Name") %>' />
                    </celltemplate>
            </mag:GridViewColumn>
            <mag:GridViewColumn AllowSorting="true" runat="server" SortExpression="Description"
                meta:resourcekey="mgvcDescription">
                <celltemplate>
                        <asp:Literal runat="server" Text='<%# Eval("Description") %>' />
                    </celltemplate>
            </mag:GridViewColumn>
            <mag:GridViewColumn AllowSorting="true" runat="server" SortExpression="Type" meta:resourcekey="mgvcType">
                <celltemplate>
                        <asp:Literal runat="server" Text='<%# Eval("Type") %>' />
                    </celltemplate>
            </mag:GridViewColumn>
            <mag:GridViewColumn AllowSorting="false" runat="server" Name='<%$ resources:global, Action %>'>
                <celltemplate>
                        <ul>
                            <li>
                                <asp:ImageButton runat="server" SkinID="Edit" ToolTip='<%$ resources:global,Edit %>' CommandName="EditAttribute" />
                            </li>
                            <mag:FeaturePanel runat="server" Tag="Li" Level="CreateAndDelete">
                                <asp:ImageButton runat="server" SkinID="Delete" ToolTip='<%$ resources:global,Delete %>' CommandName="DeleteAttributes" OnClientClick='<%$ resources:global, ClientClickConfirmDeletion %>' />
                            </mag:FeaturePanel>
                        </ul>
                    </celltemplate>
            </mag:GridViewColumn>
        </columns>
    </mag:gridview>
</asp:Content>
