<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Prices.ascx.cs" Inherits="Magelia.WebStore.Admin.App_UserControls.Products.Prices" %>
<asp:ValidationSummary runat="server" ValidationGroup="vgPriceInsert" HeaderText="<%$ Resources: Global, ErrorMsgText %>" />
<asp:ValidationSummary runat="server" ValidationGroup="vgPriceEdit" HeaderText="<%$ Resources: Global, ErrorMsgText %>" />
<fieldset>
    <legend>
        <asp:Literal ID="litPrices" runat="server" meta:resourcekey="litPrices" />
    </legend>
    <asp:ListView ID="lvPrices" runat="server" OnSorting="lvPrices_Sorting" InsertItemPosition="FirstItem" OnItemCanceling="lvPrices_ItemCanceling" OnItemEditing="lvPrices_ItemEditing" OnItemCreated="lvPrices_ItemCreated"
        OnItemDeleting="lvPrices_ItemDeleting" OnItemUpdating="lvPrices_ItemUpdating" OnItemInserting="lvPrices_ItemInserting" DataKeyNames="PriceId" OnItemDataBound="lvPrices_ItemDataBound">
        <EmptyDataTemplate>
            <p class="bordered">
                <asp:Literal ID="litEmpty" runat="server" meta:resourcekey="litEmpty" />
            </p>
        </EmptyDataTemplate>
        <LayoutTemplate>
            <table class="gridView">
                <thead>
                    <tr>
                        <th runat="server">
                            <asp:LinkButton ID="lbtnSKU" runat="server" meta:resourcekey="lbtnSKU" CommandName="Sort" CommandArgument="SKU" />
                        </th>
                        <th runat="server">
                            <asp:LinkButton ID="lbtnQuantity" runat="server" meta:resourcekey="lbtnQuantity" CommandName="Sort" CommandArgument="Quantity" />
                        </th>
                        <asp:Repeater ID="rptCurrencies" runat="server" OnItemDataBound="rptCurrencies_ItemDataBound" OnItemCommand="rptCurrencies_ItemCommand">
                            <ItemTemplate>
                                <th runat="server">
                                    <asp:LinkButton ID="lbtnSortSalePrice" runat="server" CommandName="Sort" CommandArgument='<%# String.Format("{0}_{1}", Eval("CurrencyId"), "SalePrice") %>' />
                                </th>
                                <th runat="server">
                                    <asp:LinkButton ID="lbtnSortCutPrice" runat="server" CommandName="Sort" CommandArgument='<%# String.Format("{0}_{1}", Eval("CurrencyId"), "CutPrice") %>' />
                                </th>
                            </ItemTemplate>
                        </asp:Repeater>
                        <th id="thActions" runat="server">
                            <asp:Literal runat="server" Text='<%$ resources:global, Action %>' />
                        </th>
                    </tr>
                </thead>
                <tbody>
                    <asp:PlaceHolder runat="server" ID="itemPlaceHolder" />
                </tbody>
            </table>
        </LayoutTemplate>
        <InsertItemTemplate>
            <tr>
                <td>
                    <asp:DropDownList ID="ddlProducts" runat="server" DataTextField="SKU" DataValueField="ProductId" />
                    <asp:RequiredFieldValidator ID="rfvProducts" runat="server" ControlToValidate="ddlProducts" ValidationGroup="vgPriceInsert" meta:resourcekey="rfvProducts" />
                </td>
                <td>
                    <asp:TextBox ID="tbxQuantity" runat="server" CssClass="numeric" />
                    <asp:RequiredFieldValidator ID="rfvQuantity" runat="server" ControlToValidate="tbxQuantity" ValidationGroup="vgPriceInsert" meta:resourcekey="rfvQuantity" />
                    <asp:CompareValidator ID="cvQuantityIsInteger" runat="server" ControlToValidate="tbxQuantity" ValidationGroup="vgPriceInsert" meta:resourcekey="cvQuantityIsInteger" Operator="DataTypeCheck" Type="Integer" />
                    <asp:CompareValidator ID="cvQuantityIsGreaterThanZero" runat="server" ControlToValidate="tbxQuantity" ValidationGroup="vgPriceInsert" meta:resourcekey="cvQuantityIsGreaterThanZero" Operator="GreaterThan"
                        ValueToCompare="0" />
                    <asp:CustomValidator ID="cvQuantityIsUnique" runat="server" ValidationGroup="vgPriceInsert" ControlToValidate="tbxQuantity" OnServerValidate="cvQuantityIsUnique_ServerValidate" meta:resourcekey="cvQuantityIsUnique" />
                </td>
                <asp:ListView ID="lvPrices" runat="server" DataKeyNames="CurrencyId">
                    <ItemTemplate>
                        <td>
                            <asp:TextBox ID="tbxSalePrice" runat="server" CssClass="numeric" />
                            <asp:CompareValidator ID="cvSalePriceIsDecimal" runat="server" ControlToValidate="tbxSalePrice" ValidationGroup="vgPriceInsert" Operator="DataTypeCheck" Type="Double" meta:resourcekey="cvSalePriceIsDecimal" />
                            <asp:CompareValidator ID="cvSalePriceIsGreaterThanZero" runat="server" ControlToValidate="tbxSalePrice" ValidationGroup="vgPriceInsert" meta:resourcekey="cvSalePriceIsGreaterThanZero" Operator="GreaterThanEqual"
                                ValueToCompare="0" />
                            <asp:CustomValidator ID="cvRequiredIfCutPriceDefined" runat="server" meta:resourcekey="cvRequiredIfCutPriceDefined" ValidateEmptyText="true" ControlToValidate="tbxSalePrice" ValidationGroup="vgPriceInsert"
                                OnServerValidate="cvRequiredIfCutPriceDefined_ServerValidate" />
                        </td>
                        <td>
                            <asp:TextBox ID="tbxCutPrice" runat="server" CssClass="numeric" />
                            <asp:CompareValidator ID="cvCutPriceIsDecimal" runat="server" ControlToValidate="tbxCutPrice" ValidationGroup="vgPriceInsert" Operator="DataTypeCheck" Type="Double" meta:resourcekey="cvCutPriceIsDecimal" />
                            <asp:CompareValidator ID="cvCutPriceIsGreaterThanZero" runat="server" ControlToValidate="tbxCutPrice" ValidationGroup="vgPriceInsert" meta:resourcekey="cvCutPriceIsGreaterThanZero" Operator="GreaterThanEqual"
                                ValueToCompare="0" />
                        </td>
                    </ItemTemplate>
                </asp:ListView>
                <td>
                    <ul>
                        <li>
                            <asp:ImageButton runat="server" SkinID="Add" ToolTip='<%$ resources:global,Add %>' CommandName="Insert" ValidationGroup="vgPriceInsert" />
                            <asp:CustomValidator ID="cvAnyPriceDefined" runat="server" ValidationGroup="vgPriceInsert" OnServerValidate="cvAnyPriceDefined_ServerValidate" meta:resourcekey="cvAnyPriceDefined" />
                        </li>
                    </ul>
                </td>
            </tr>
        </InsertItemTemplate>
        <EditItemTemplate>
            <tr>
                <td>
                    <asp:DropDownList ID="ddlProducts" runat="server" DataTextField="SKU" DataValueField="ProductId" />
                    <asp:RequiredFieldValidator ID="rfvProducts" runat="server" ControlToValidate="ddlProducts" ValidationGroup="vgPriceEdit" meta:resourcekey="rfvProducts" />
                </td>
                <td>
                    <asp:TextBox ID="tbxQuantity" runat="server" Text='<%# Eval("Quantity") %>' CssClass="numeric" />
                    <asp:RequiredFieldValidator ID="rfvQuantity" runat="server" ControlToValidate="tbxQuantity" ValidationGroup="vgPriceEdit" meta:resourcekey="rfvQuantity" />
                    <asp:CompareValidator ID="cvQuantityIsInteger" runat="server" ControlToValidate="tbxQuantity" ValidationGroup="vgPriceEdit" meta:resourcekey="cvQuantityIsInteger" Operator="DataTypeCheck" Type="Integer" />
                    <asp:CompareValidator ID="cvQuantityIsGreaterThanZero" runat="server" ControlToValidate="tbxQuantity" ValidationGroup="vgPriceEdit" meta:resourcekey="cvQuantityIsGreaterThanZero" Operator="GreaterThan"
                        ValueToCompare="0" />
                    <asp:CustomValidator ID="cvQuantityIsUnique" runat="server" ValidationGroup="vgPriceEdit" ControlToValidate="tbxQuantity" OnServerValidate="cvQuantityIsUnique_ServerValidate" meta:resourcekey="cvQuantityIsUnique" />
                </td>
                <asp:ListView ID="lvPrices" runat="server" DataKeyNames="CurrencyId">
                    <ItemTemplate>
                        <td>
                            <asp:TextBox ID="tbxSalePrice" runat="server" Text='<%# Eval("SalePrice") %>' CssClass="numeric" ReadOnly='<%# !(this.CanCreateAndDelete || (this.CanEdit && ((CurrencyPriceViewModel)Container.DataItem).SalePrice.HasValue )) %>' />
                            <asp:CompareValidator ID="cvSalePriceIsDecimal" runat="server" ControlToValidate="tbxSalePrice" ValidationGroup="vgPriceEdit" Operator="DataTypeCheck" Type="Double" meta:resourcekey="cvSalePriceIsDecimal" />
                            <asp:CompareValidator ID="cvSalePriceIsGreaterThanZero" runat="server" ControlToValidate="tbxSalePrice" ValidationGroup="vgPriceEdit" meta:resourcekey="cvSalePriceIsGreaterThanZero" Operator="GreaterThanEqual"
                                ValueToCompare="0" />
                            <asp:CustomValidator ID="cvRequiredIfCutPriceDefined" runat="server" meta:resourcekey="cvRequiredIfCutPriceDefined" ValidateEmptyText="true" ControlToValidate="tbxSalePrice" ValidationGroup="vgPriceEdit"
                                OnServerValidate="cvRequiredIfCutPriceDefined_ServerValidate" />
                            <asp:CustomValidator ID="cvRequiredIfCanCreateAndDelete" runat="server" meta:resourcekey="cvRequiredIfCanCreateAndDelete" ValidateEmptyText="true" ControlToValidate="tbxSalePrice" ValidationGroup="vgPriceEdit"
                                OnServerValidate="cvRequiredIfCanCreateAndDelete_ServerValidate" />
                        </td>
                        <td>
                            <asp:TextBox ID="tbxCutPrice" runat="server" Text='<%# Eval("CutPrice") %>' CssClass="numeric" ReadOnly='<%# !(this.CanCreateAndDelete || (this.CanEdit && ((CurrencyPriceViewModel)Container.DataItem).SalePrice.HasValue )) %>' />
                            <asp:CompareValidator ID="cvCutPriceIsDecimal" runat="server" ControlToValidate="tbxCutPrice" ValidationGroup="vgPriceEdit" Operator="DataTypeCheck" Type="Double" meta:resourcekey="cvCutPriceIsDecimal" />
                            <asp:CompareValidator ID="cvCutPriceIsGreaterThanZero" runat="server" ControlToValidate="tbxCutPrice" ValidationGroup="vgPriceEdit" meta:resourcekey="cvCutPriceIsGreaterThanZero" Operator="GreaterThanEqual"
                                ValueToCompare="0" />
                        </td>
                    </ItemTemplate>
                </asp:ListView>
                <td id="tdActions" runat="server">
                    <ul>
                        <li>
                            <asp:ImageButton runat="server" ToolTip='<%$ resources:global,Save %>' SkinID="Save" CommandName="Update" ValidationGroup="vgPriceEdit" />
                            <asp:CustomValidator ID="cvAnyPriceDefined" runat="server" ValidationGroup="vgPriceEdit" OnServerValidate="cvAnyPriceDefined_ServerValidate" meta:resourcekey="cvAnyPriceDefined" />
                        </li>
                        <li>
                            <asp:ImageButton runat="server" ToolTip='<%$ resources:global,Cancel %>' SkinID="Cancel" CommandName="Cancel" />
                        </li>
                    </ul>
                </td>
            </tr>
        </EditItemTemplate>
        <ItemTemplate>
            <tr>
                <td>
                    <asp:Literal runat="server" Text='<%# Eval("SKU") %>' />
                </td>
                <td class="numeric">
                    <asp:Literal runat="server" Text='<%# Eval("Quantity") %>' />
                </td>
                <asp:Repeater ID="rptPrices" runat="server">
                    <ItemTemplate>
                        <td class="numeric">
                            <asp:Literal runat="server" Text='<%# Eval("SalePrice") %>' />
                        </td>
                        <td class="numeric">
                            <asp:Literal runat="server" Text='<%# Eval("CutPrice") %>' />
                        </td>
                    </ItemTemplate>
                </asp:Repeater>
                <td runat="server" visible='<%# this.CanEdit %>'>
                    <ul>
                        <li>
                            <asp:ImageButton runat="server" CommandName="Edit" SkinID="Edit" ToolTip='<%$ resources:global,Edit %>' />
                        </li>
                        <li runat="server" visible='<%# this.CanCreateAndDelete %>'>
                            <asp:ImageButton runat="server" CommandName="Delete" SkinID="Delete" ToolTip='<%$ resources:global,Delete %>' />
                        </li>
                    </ul>
                </td>
            </tr>
        </ItemTemplate>
    </asp:ListView>
</fieldset>
