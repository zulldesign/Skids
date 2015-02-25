<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="TopProducts.ascx.cs" Inherits="Magelia.WebStore.Admin.App_UserControls.Synthesis.TopProducts" %>

<fieldset class="top-products">
    <legend>
        <asp:Literal runat="server" meta:resourceKey="litTopProductsLegend" />
    </legend>
    <div class="form">
        <mag:DynamicControl runat="server" ID="dcFilter" OnModelChanged="dcFilter_ModelChanged" />
    </div>
    <mag:Gridview ID="mgvTopProducts" runat="server" AllowPaging="true" EnableAutoRefresh="false" DataKeyNames="SKU" ShowSelectionColumn="false">
        <columns>
            <mag:GridViewColumn runat="server" meta:resourceKey="mgvcSKU" AllowSorting="true" SortExpression="SKU">
                <CellTemplate>
                    <asp:Literal runat="server" Text='<%# Eval("SKU") %>' />
                </CellTemplate>
            </mag:GridViewColumn>
            <mag:GridViewColumn runat="server" meta:resourceKey="mgvcName">
                <CellTemplate>
                    <asp:Literal runat="server" Text='<%# Eval("Name") %>' />
                </CellTemplate>
            </mag:GridViewColumn>
            <mag:GridViewColumn runat="server" CssClass="numeric" meta:resourceKey="mgvcTotalIncludingDiscount" AllowSorting="true"  SortExpression="TotalIncludingDiscount">
                <CellTemplate>
                    <asp:Literal runat="server" Text='<%# FormatPrice((Decimal)Eval("TotalIncludingDiscount"), (String)Eval("CurrencySymbol")) %>' />
                </CellTemplate>
            </mag:GridViewColumn>
            <mag:GridViewColumn runat="server" CssClass="numeric" meta:resourceKey="mgvcTotalIncludingTotalDiscountAndTaxesConsideringTotalDiscount" AllowSorting="true" SortExpression="TotalIncludingTotalDiscountAndTaxesConsideringTotalDiscount">
                <CellTemplate>
                    <asp:Literal runat="server" Text='<%# FormatPrice((Decimal)Eval("TotalIncludingTotalDiscountAndTaxesConsideringTotalDiscount"), (String)Eval("CurrencySymbol")) %>' />
                </CellTemplate>
            </mag:GridViewColumn>
            <mag:GridViewColumn runat="server" CssClass="numeric" meta:resourceKey="mgvcCount" AllowSorting="true" SortExpression="Count">
                <CellTemplate>
                    <asp:Literal runat="server" Text='<%# Eval("Count") %>' />
                </CellTemplate>
            </mag:GridViewColumn>
        </columns>
    </mag:Gridview>
</fieldset>

