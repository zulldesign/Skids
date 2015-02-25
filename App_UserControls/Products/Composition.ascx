<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Composition.ascx.cs"
    Inherits="Magelia.WebStore.Admin.App_UserControls.Products.Composition" %>

<fieldset>
    <legend>
        <asp:Literal ID="litComposition" runat="server" meta:resourcekey="litComposition" />
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
            <asp:Label ID="lblSKU" runat="server" AssociatedControlID="tbxSKU" meta:resourcekey="lblSKU" />
            <asp:TextBox ID="tbxSKU" runat="server" />
        </div>
        <div class="field">
            <asp:Label ID="lblName" runat="server" AssociatedControlID="tbxName" meta:resourcekey="lblName" />
            <asp:TextBox ID="tbxName" runat="server" />
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
            <asp:Literal ID="litAvailableProducts" runat="server" meta:resourcekey="litAvailableProducts" />
        </legend>
        <mag:Gridview ID="mgvProducts" runat="server" AllowPaging="true" DataKeyNames="ProductId"
            ShowSelectionColumn="true" OnCommand="mgvProducts_Command">
            <commandbuttons>
                    <mag:CommandButton ID="mcbAdd" runat="server" meta:resourcekey="mcbAdd" CommandName="Add" />
                </commandbuttons>
            <columns>
                    <mag:GridViewColumn AllowSorting="true" SortExpression="ProductTypeCode" meta:resourcekey="mgvcProductTypeCode">
                        <celltemplate>
                    <asp:Literal runat="server" Text='<%# Eval("ProductTypeCode") %>' />
                </celltemplate>
                    </mag:GridViewColumn>
                    <mag:GridViewColumn AllowSorting="true" SortExpression="SKU" meta:resourcekey="mgvcSKU">
                        <celltemplate>
                    <asp:Literal runat="server" Text='<%# Eval("SKU") %>' />
                </celltemplate>
                    </mag:GridViewColumn>
                    <mag:GridViewColumn AllowSorting="true" SortExpression="Name" meta:resourcekey="mgvcName">
                        <celltemplate>
                    <asp:Literal runat="server" Text='<%# Eval("Name") %>' />
                    <mag:ProductDetail runat="server" ProductId='<%# Eval("ProductId") %>' />
                </celltemplate>
                    </mag:GridViewColumn>
                    <mag:GridViewColumn AllowSorting="true" SortExpression="Sample" meta:resourcekey="mgvcSample">
                        <celltemplate>
                    <asp:CheckBox runat="server" Enabled="false" Checked='<%# Eval("Sample") %>' />
                </celltemplate>
                    </mag:GridViewColumn>
                    <mag:GridViewColumn AllowSorting="true" SortExpression="Active" meta:resourcekey="mgvcActive">
                        <celltemplate>
                    <asp:CheckBox runat="server" Enabled="false" Checked='<%# Eval("Active") %>' />
                </celltemplate>
                    </mag:GridViewColumn>
                    <mag:GridViewColumn AllowSorting="true" SortExpression="Online" meta:resourcekey="mgvcOnline">
                        <celltemplate>
                    <asp:CheckBox runat="server" Enabled="false" Checked='<%# Eval("Online") %>' />
                </celltemplate>
                    </mag:GridViewColumn>
                    <mag:GridViewColumn AllowSorting="false" meta:resourcekey="mgvcQuantity">
                        <celltemplate>
                        <asp:TextBox ID="tbxQuantity" runat="server" CssClass="numeric" Text="1" />
                    </celltemplate>
                    </mag:GridViewColumn>
                    <mag:GridViewColumn AllowSorting="false" CssClass="numeric" meta:resourcekey="mgvcOrder">
                        <celltemplate>
                    <asp:DropDownList ID="ddlOrder" runat="server" Enabled='<%# this.CanEdit %>' CssClass="autoSize" DataSourceID="odOrders" />
                </celltemplate>
                    </mag:GridViewColumn>
                    <mag:GridViewColumn AllowSorting="false" Name='<%$ resources:global, Action %>'>
                        <celltemplate>
                    <ul>
                        <li>
                            <asp:ImageButton runat="server" Enabled='<%# this.CanEdit %>' CommandName="Add" SkinID="Add" ToolTip='<%$ resources:global,Add %>' />
                        </li>
                    </ul>
                </celltemplate>
                    </mag:GridViewColumn>
                </columns>
        </mag:Gridview>
        <asp:ObjectDataSource ID="odOrders" runat="server" TypeName="Magelia.WebStore.Admin.App_UserControls.Products.Composition+OrdersDataSource"
            SelectMethod="GetOrders" />
        <asp:ObjectDataSource ID="odOrdersAssociated" runat="server" TypeName="Magelia.WebStore.Admin.App_UserControls.Products.Composition+OrdersDataSource"
            SelectMethod="GetOrders" />
    </fieldset>
    <fieldset>
        <legend>
            <asp:Literal ID="litAssociatedProducts" runat="server" meta:resourcekey="litAssociatedProducts" />
        </legend>
        <mag:Gridview ID="mgvAssociatedProducts" runat="server" AllowPaging="true" DataKeyNames="ProductId"
            ShowSelectionColumn="true" OnCommand="mgvAssociatedProducts_Command">
            <commandbuttons>
                    <mag:CommandButton runat="server" meta:resourcekey="mcbRemove" CommandName="Remove" />
                </commandbuttons>
            <columns>
                    <mag:GridViewColumn AllowSorting="true" SortExpression="ProductTypeCode" meta:resourcekey="mgvcProductTypeCode">
                        <celltemplate>
                    <asp:Literal runat="server" Text='<%# Eval("ProductTypeCode") %>' />
                </celltemplate>
                    </mag:GridViewColumn>
                    <mag:GridViewColumn AllowSorting="true" SortExpression="SKU" meta:resourcekey="mgvcSKU">
                        <celltemplate>
                    <asp:Literal runat="server" Text='<%# Eval("SKU") %>' />
                </celltemplate>
                    </mag:GridViewColumn>
                    <mag:GridViewColumn AllowSorting="true" SortExpression="Name" meta:resourcekey="mgvcName">
                        <celltemplate>
                            <asp:Literal runat="server" Text='<%# Eval("Name") %>' />
                            <mag:ProductDetail runat="server" ProductId='<%# Eval("ProductId") %>' />
                        </celltemplate>
                    </mag:GridViewColumn>
                    <mag:GridViewColumn AllowSorting="true" SortExpression="Sample" meta:resourcekey="mgvcSample">
                        <celltemplate>
                    <asp:CheckBox runat="server" Enabled="false" Checked='<%# Eval("Sample") %>' />
                </celltemplate>
                    </mag:GridViewColumn>
                    <mag:GridViewColumn AllowSorting="true" SortExpression="Active" meta:resourcekey="mgvcActive">
                        <celltemplate>
                    <asp:CheckBox runat="server" Enabled="false" Checked='<%# Eval("Active") %>' />
                </celltemplate>
                    </mag:GridViewColumn>
                    <mag:GridViewColumn AllowSorting="true" SortExpression="Online" meta:resourcekey="mgvcOnline">
                        <celltemplate>
                    <asp:CheckBox runat="server" Enabled="false" Checked='<%# Eval("Online") %>' />
                </celltemplate>
                    </mag:GridViewColumn>
                    <mag:GridViewColumn AllowSorting="true" SortExpression="Quantity" meta:resourcekey="mgvcQuantity">
                        <celltemplate>
                    <asp:TextBox ID="tbxQuantityAssociated" runat="server" CssClass="numeric" Text='<%# Eval("Quantity") %>' AutoPostBack="true" OnTextChanged="tbxQuantityAssociated_TextChanged" />
                </celltemplate>
                    </mag:GridViewColumn>
                    <mag:GridViewColumn AllowSorting="true" CssClass="numeric" SortExpression="Order" meta:resourcekey="mgvcOrder">
                        <celltemplate>
                            <asp:DropDownList ID="ddlOrderAssociated" runat="server" CssClass="autoSize" DataSourceID="odOrdersAssociated" Enabled='<%# this.CanEdit %>' SelectedValue='<%# Eval("Order") %>' AutoPostBack="true" OnSelectedIndexChanged="ddlOrderAssociated_SelectedIndexChanged" />
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
