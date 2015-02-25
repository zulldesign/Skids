<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Associations.ascx.cs"
    Inherits="Magelia.WebStore.Admin.App_UserControls.Products.Associations" %>

<fieldset>
    <legend>
        <asp:Literal ID="litAssociations" runat="server" meta:resourcekey="litAssociations" />
    </legend>
    <mag:SearchPanel runat="server" DefaultButton="lbtnSearch">
        <div class="field">
            <asp:Label ID="lblProductType" runat="server" AssociatedControlID="ddlProductTypes"
                meta:resourcekey="lblProductType" />
            <mag:DropDownList ID="ddlProductTypes" runat="server" AppendDataBoundItems="true"
                GroupByTextField="ProductKind" DataTextField="Code" DataValueField="ProductTypeID">
                <asp:ListItem />
            </mag:DropDownList>
        </div>
        <div class="field">
            <asp:Label ID="lblCodeOrSKU" runat="server" AssociatedControlID="tbxCodeOrSKU" meta:resourcekey="lblCodeOrSKU" />
            <asp:TextBox ID="tbxCodeOrSKU" runat="server" />
        </div>
        <div class="field">
            <asp:Label ID="lblName" runat="server" AssociatedControlID="tbxName" meta:resourcekey="lblName" />
            <asp:TextBox ID="tbxName" runat="server" />
        </div>
        <div class="field">
            <asp:Label ID="lblSample" runat="server" AssociatedControlID="ddlSample" meta:resourcekey="lblSample" />
            <asp:DropDownList ID="ddlSample" runat="server">
                <asp:ListItem />
                <asp:ListItem meta:resourcekey="liYes" Value="true" />
                <asp:ListItem meta:resourcekey="liNo" Value="false" />
            </asp:DropDownList>
        </div>
        <div class="field">
            <asp:Label ID="lblActive" runat="server" AssociatedControlID="ddlActive" meta:resourcekey="lblActive" />
            <asp:DropDownList ID="ddlActive" runat="server">
                <asp:ListItem />
                <asp:ListItem meta:resourcekey="liYes" Value="true" />
                <asp:ListItem meta:resourcekey="liNo" Value="false" />
            </asp:DropDownList>
        </div>
        <div class="field">
            <asp:Label ID="lblOnline" runat="server" AssociatedControlID="ddlOnline" meta:resourcekey="lblOnline" />
            <asp:DropDownList ID="ddlOnline" runat="server">
                <asp:ListItem />
                <asp:ListItem meta:resourcekey="liYes" Value="true" />
                <asp:ListItem meta:resourcekey="liNo" Value="false" />
            </asp:DropDownList>
        </div>
        <div class="buttons">
            <ul>
                <li>
                    <asp:LinkButton ID="lbtnReset" runat="server" SkinID="Minor" Text='<%$ resources:global, Reset %>'
                        OnClick="lbtnReset_Click" />
                </li>
                <li>
                    <asp:LinkButton ID="lbtnSearch" runat="server" SkinID="Major" Text='<%$ resources:global, Search %>'
                        OnClick="lbtnSearch_Click" />
                </li>
            </ul>
        </div>
    </mag:SearchPanel>
    <fieldset>
        <legend>
            <asp:Label ID="lblAvailableProducts" runat="server" meta:resourcekey="lblAvailableProducts" />
        </legend>
        <mag:Gridview ID="mgvProducts" runat="server" AllowPaging="true" DataKeyNames="ProductId"
            ShowSelectionColumn="true" OnCommand="mgvProducts_Command">
            <commandbuttons>
                <mag:CommandButton ID="mcbAdd" runat="server" meta:resourcekey="mcbAdd" CommandName="Add" />
            </commandbuttons>
            <columns>
                <mag:GridViewColumn AllowSorting="true" SortExpression="ProductType" meta:resourcekey="mgvcProductType">
                    <celltemplate>
                        <asp:Literal runat="server" Text='<%# Eval("ProductType") %>' />
                    </celltemplate>
                </mag:GridViewColumn>
                <mag:GridViewColumn AllowSorting="true" SortExpression="CodeOrSKU" meta:resourcekey="mgvcCodeOrSKU">
                    <celltemplate>
                        <asp:Literal runat="server" Text='<%# Eval("CodeOrSKU") %>' />
                    </celltemplate>
                </mag:GridViewColumn>
                <mag:GridViewColumn AllowSorting="true" SortExpression="Name" meta:resourcekey="mgvcName">
                    <celltemplate>
                        <asp:Literal runat="server" Text='<%# Eval("Name") %>' /> 
                        <mag:ProductDetail runat="server" ProductId='<%# Eval("ProductId") %>' />
                    </celltemplate>
                </mag:GridViewColumn>
                <mag:GridViewColumn AllowSorting="true" SortExpression="IsActive" meta:resourcekey="mgvcActive">
                    <celltemplate>
                        <asp:PlaceHolder runat="server" Visible='<%# ((Nullable<Boolean>)Eval("IsActive")).HasValue %>'>
                            <asp:CheckBox runat="server" Enabled="false" Checked='<%# ((Nullable<Boolean>)Eval("IsActive"))??false %>' />
                        </asp:PlaceHolder>
                    </celltemplate>
                </mag:GridViewColumn>
                <mag:GridViewColumn AllowSorting="true" SortExpression="IsOnline" meta:resourcekey="mgvcOnline">
                    <celltemplate>
                        <asp:CheckBox runat="server" Enabled="false" Checked='<%# Eval("IsOnline") %>' />
                    </celltemplate>
                </mag:GridViewColumn>
                <mag:GridViewColumn AllowSorting="false" CssClass="numeric"  meta:resourcekey="mgvcOrder">
                    <celltemplate>
                        <asp:DropDownList ID="ddlOrder" runat="server" CssClass="autoSize" DataSourceID="odOrders" Enabled='<%# this.CanEdit %>' />
                    </celltemplate>
                </mag:GridViewColumn>
                <mag:GridViewColumn AllowSorting="false" Name='<%$ resources:global, Action %>'>
                    <celltemplate>
                        <ul>
                            <li>
                                <asp:ImageButton runat="server" CommandName="Add" SkinID="Add" ToolTip='<%$ resources:global,Add %>' Enabled='<%# this.CanEdit %>' />
                            </li>
                        </ul>
                    </celltemplate>
                    </mag:GridViewColumn>
                </columns>
        </mag:Gridview>
    </fieldset>
    <asp:ObjectDataSource ID="odOrders" runat="server" TypeName="Magelia.WebStore.Admin.App_UserControls.Products.Associations+OrdersDataSource"
        SelectMethod="GetOrders"></asp:ObjectDataSource>
    <asp:ObjectDataSource ID="odOrdersAssociated" runat="server" TypeName="Magelia.WebStore.Admin.App_UserControls.Products.Associations+OrdersDataSource"
        SelectMethod="GetOrders"></asp:ObjectDataSource>
    <fieldset>
        <legend>
            <asp:Label ID="lblAssociatedProducts" runat="server" meta:resourcekey="lblAssociatedProducts" />
        </legend>
        <mag:Gridview ID="mgvAssociatedProducts" runat="server" AllowPaging="true" DataKeyNames="ProductId"
            ShowSelectionColumn="true" OnCommand="mgvAssociatedProducts_Command">
            <commandbuttons>
                <mag:CommandButton runat="server" meta:resourcekey="mcbRemove" CommandName="Remove" />
            </commandbuttons>
            <columns>
                <mag:GridViewColumn AllowSorting="true" SortExpression="ProductType" meta:resourcekey="mgvcProductType">
                    <celltemplate>
                        <asp:Literal runat="server" Text='<%# Eval("ProductType") %>' />
                    </celltemplate>
                </mag:GridViewColumn>
                <mag:GridViewColumn AllowSorting="true" SortExpression="CodeOrSKU" meta:resourcekey="mgvcCodeOrSKU">
                    <celltemplate>
                        <asp:Literal runat="server" Text='<%# Eval("CodeOrSKU") %>' />
                    </celltemplate>
                </mag:GridViewColumn>
                <mag:GridViewColumn AllowSorting="true" SortExpression="Name" meta:resourcekey="mgvcName">
                    <celltemplate>
                        <asp:Literal runat="server" Text='<%# Eval("Name") %>' /> 
                        <mag:ProductDetail runat="server" ProductId='<%# Eval("ProductId") %>' />
                    </celltemplate>
                </mag:GridViewColumn>
                <mag:GridViewColumn AllowSorting="true" SortExpression="IsActive" meta:resourcekey="mgvcActive">
                    <celltemplate>
                        <asp:PlaceHolder runat="server" Visible='<%# ((Nullable<Boolean>)Eval("IsActive")).HasValue %>'>
                            <asp:CheckBox ID="cbxIsActive" runat="server" Enabled="false" Checked='<%# ((Nullable<Boolean>)Eval("IsActive"))??false %>' />
                        </asp:PlaceHolder>
                    </celltemplate>
                </mag:GridViewColumn>
                <mag:GridViewColumn AllowSorting="true" SortExpression="IsOnline" meta:resourcekey="mgvcOnline">
                    <celltemplate>
                        <asp:CheckBox runat="server" Enabled="false" Checked='<%# Eval("IsOnline") %>' />
                    </celltemplate>
                </mag:GridViewColumn>
                <mag:GridViewColumn AllowSorting="true" CssClass="numeric" SortExpression="IsOrder" meta:resourcekey="mgvcOrder">
                    <celltemplate>
                        <asp:DropDownList ID="ddlOrderAssociated" runat="server" CssClass="autoSize" Enabled='<%# this.CanEdit %>' DataSourceID="odOrdersAssociated" SelectedValue='<%# Eval("Order") %>' AutoPostBack="true" OnSelectedIndexChanged="ddlOrderAssociated_SelectedIndexChanged" />
                    </celltemplate>
                </mag:GridViewColumn>
                <mag:GridViewColumn AllowSorting="false" Name='<%$ resources:global, Action %>'>
                    <celltemplate>
                        <ul>
                            <li>
                                <asp:ImageButton runat="server" Enabled='<%# this.CanEdit %>' CommandName="Remove" SkinID="Delete" ToolTip='<%$ resources:global,Delete %>' />
                            </li>
                        </ul>
                    </celltemplate>
                </mag:GridViewColumn>
            </columns>
        </mag:Gridview>
    </fieldset>
</fieldset>

