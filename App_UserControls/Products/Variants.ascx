<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Variants.ascx.cs" Inherits="Magelia.WebStore.Admin.App_UserControls.Products.Variants" %>
<%@ Register TagPrefix="product" TagName="AttributeEditor" Src="~/App_UserControls/Products/AttributeEditor.ascx" %>
<fieldset>
    <legend>
        <asp:Literal ID="litVariants" runat="server" meta:resourcekey="litVariants" />
    </legend>
    <mag:Gridview ID="mgvVariants" runat="server" AllowPaging="true" EnableAutoRefresh="false"
        DataKeyNames="VariantId" ShowSelectionColumn="true" OnCommand="mgvVariants_Command">
        <commandbuttons>
            <mag:CommandButton runat="server" Text='<%$ resources:global,Delete %>' CommandName="DeleteVariants"
                OnClientClick='<%$ resources:global, ClientClickConfirmDeletion %>' />
        </commandbuttons>
        <columns>
            <mag:GridViewColumn ID="mgvcSKU" runat="server" AllowSorting="true" SortExpression="Variant.SKU"
                meta:resourcekey="mgvcSKU">
                <celltemplate>
                        <asp:Literal runat="server" Text='<%# Eval("Variant.SKU") %>' />
                    </celltemplate>
            </mag:GridViewColumn>
            <mag:GridViewColumn ID="mgvcAttributes" runat="server" AllowSorting="true" SortExpression="Characteristics" meta:resourcekey="mgvcCharacteristics">
                <celltemplate>
                    <asp:Literal runat="server" Text='<%# Eval("Characteristics") %>' />
                    </celltemplate>
            </mag:GridViewColumn>
            <mag:GridViewColumn ID="mgvcWeight" runat="server" CssClass="numeric" AllowSorting="true" SortExpression="StrictWeight"
                meta:resourcekey="mgvcWeight">
                <celltemplate>
                        <asp:Literal runat="server" Text='<%# Eval("Variant.Weight") %>' />
                    </celltemplate>
            </mag:GridViewColumn>
            <mag:GridViewColumn ID="mgvcWidth" runat="server" CssClass="numeric" AllowSorting="true" SortExpression="StrictWidth"
                meta:resourcekey="mgvcWidth">
                <celltemplate>
                        <asp:Literal runat="server" Text='<%# Eval("Variant.Width") %>' />
                    </celltemplate>
            </mag:GridViewColumn>
            <mag:GridViewColumn ID="mgvcHeight" runat="server" CssClass="numeric" AllowSorting="true" SortExpression="StrictHeight"
                meta:resourcekey="mgvcHeight">
                <celltemplate>
                        <asp:Literal  runat="server" Text='<%# Eval("Variant.Height") %>' />
                    </celltemplate>
            </mag:GridViewColumn>
            <mag:GridViewColumn ID="mgvcLength" runat="server" CssClass="numeric" AllowSorting="true" SortExpression="StrictLength"
                meta:resourcekey="mgvcLength">
                <celltemplate>
                        <asp:Literal runat="server" Text='<%# Eval("Variant.Length") %>' />
                    </celltemplate>
            </mag:GridViewColumn>
            <mag:GridViewColumn ID="mgvcIsActive" runat="server" AllowSorting="true" SortExpression="Variant.IsActive"
                meta:resourcekey="mgvcIsActive">
                <celltemplate>
                        <asp:CheckBox ID="cbxIsActive" runat="server" AutoPostBack="true" OnCheckedChanged="cbxIsActive_CheckedChanged" Checked='<%# Eval("Variant.IsActive") %>' />
                    </celltemplate>
            </mag:GridViewColumn>
            <mag:GridViewColumn ID="mgvcIsOnline" runat="server" AllowSorting="true" SortExpression="Variant.IsOnline"
                meta:resourcekey="mgvcIsOnline">
                <celltemplate>
                        <asp:CheckBox ID="cbxIsOnline" runat="server" AutoPostBack="true" OnCheckedChanged="cbxIsOnline_CheckedChanged" Checked='<%# Eval("Variant.IsOnline") %>' />
                    </celltemplate>
            </mag:GridViewColumn>
            <mag:GridViewColumn ID="mgvcIsDefault" runat="server" AllowSorting="true" SortExpression="Variant.IsDefault"
                meta:resourcekey="mgvcIsDefault">
                <celltemplate>
                        <asp:CheckBox ID="cbxIsDefault" runat="server" AutoPostBack="true" OnCheckedChanged="cbxIsDefault_CheckedChanged" Checked='<%# Eval("Variant.IsDefault") %>' />
                    </celltemplate>
            </mag:GridViewColumn>
            <mag:GridViewColumn ID="mgvcOrder" runat="server" CssClass="numeric" AllowSorting="true" SortExpression="Variant.Order"
                meta:resourcekey="mgvcOrder">
                <celltemplate>
                        <asp:DropDownList ID="ddlOrder" runat="server" Enabled='<%# this.CanEdit %>' CssClass="autoSize" AutoPostBack="true" OnSelectedIndexChanged="ddlOrder_SelectedIndexChanged" SelectedValue='<%# Eval("Variant.Order") %>' DataSource='<%# Eval("Orders") %>' />
                    </celltemplate>
            </mag:GridViewColumn>
            <mag:GridViewColumn runat="server" AllowSorting="false" Name='<%$ resources:global,Action %>'>
                <celltemplate>
                        <ul>
                            <li>
                                <asp:ImageButton runat="server" CommandName="EditVariant" ToolTip='<%$ resources:global,Edit %>' SkinID="Edit" />
                            </li>
                            <li runat="server" visible='<%# this.CanCreateAndDelete %>'>
                                <asp:ImageButton runat="server" CommandName="CopyVariant" SkinID="Copy" ToolTip='<%$ resources:global,Copy %>' />
                            </li>
                            <li runat="server" visible='<%# this.CanCreateAndDelete %>'>
                                <asp:ImageButton runat="server" CommandName="DeleteVariants" SkinID="Delete" ToolTip='<%$ resources:global,Delete %>' OnClientClick='<%$ resources:global, ClientClickConfirmDeletion %>'/>
                            </li>
                        </ul>
                    </celltemplate>
            </mag:GridViewColumn>
        </columns>
    </mag:Gridview>
</fieldset>
