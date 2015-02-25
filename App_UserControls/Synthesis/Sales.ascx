<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Sales.ascx.cs" Inherits="Magelia.WebStore.Admin.App_UserControls.Synthesis.Sales" %>
<fieldset class="sales">
    <legend>
        <asp:Literal runat="server" meta:resourceKey="litSalesLegend" />
    </legend>
    <div class="form">
        <mag:DynamicControl runat="server" ID="dcFilter" OnModelChanged="dcFilter_ModelChanged" />
    </div>
    <mag:gridview id="mgvOrders" runat="server" allowpaging="true" enableautorefresh="false" datakeynames="OrderId" showselectioncolumn="false" oncommand="mgvOrders_Command">
        <columns>
            <mag:GridViewColumn ID="mgvcOrderNumber" runat="server" CssClass="numeric" AllowSorting="true" SortExpression="OrderNumber" meta:resourcekey="mgvcOrderNumber">
                <celltemplate>
                    <%--<asp:Literal runat="server" Text='<%# Eval("OrderNumber") %>' />--%>
                    <asp:LinkButton ID="lbtnOrderNumber" runat="server" Text='<%# Eval("OrderNumber") %>' CommandName='<%# this.CanEdit ? "EditOrder" : "ViewOrder" %>' />
                </celltemplate>
            </mag:GridViewColumn>
            <mag:GridViewColumn ID="mgvcStatus" runat="server" AllowSorting="true" SortExpression="Status" meta:resourcekey="mgvcStatus">
                <celltemplate>
                    <asp:Literal runat="server" Text='<%# Eval("Status") %>' />
                </celltemplate>
            </mag:GridViewColumn>
            <mag:GridViewColumn ID="mgvcLastModificationDate" runat="server" CssClass="numeric" AllowSorting="true" SortExpression="LastModificationDate" meta:resourcekey="mgvcLastModificationDate">
                <celltemplate>
                    <asp:label runat="server" Text='<%# ((DateTimeOffset)Eval("LastModificationDate")).ToUserTimeZoneString() %>' ToolTip='<%# ((DateTimeOffset)Eval("LastModificationDate")).ToUserTimeZoneString() %>' />
                </celltemplate>
            </mag:GridViewColumn>
            <mag:GridViewColumn ID="mgvcOrderTotalIncludingTotalDiscount" CssClass="numeric" runat="server" AllowSorting="true" SortExpression="OrderTotalIncludingTotalDiscount" meta:resourcekey="mgvcOrderTotalIncludingTotalDiscount">
                <celltemplate>
                    <asp:Literal runat="server" Text='<%# Eval("LocalizedOrderTotalIncludingTotalDiscount") %>' />
                </celltemplate>
            </mag:GridViewColumn>
            <mag:GridViewColumn ID="mgvcOrderTotalIncludingTotalDiscountAndTaxes" CssClass="numeric" runat="server" AllowSorting="true" 
                                SortExpression="OrderTotalIncludingTotalDiscountAndTaxes" meta:resourcekey="mgvcOrderTotalIncludingTotalDiscountAndTaxes">
                <celltemplate>
                    <asp:Literal runat="server" Text='<%# Eval("LocalizedOrderTotalIncludingTotalDiscountAndTaxes") %>' />
                </celltemplate>
            </mag:GridViewColumn>
            <mag:GridViewColumn runat="server" AllowSorting="false" Name='<%$ resources:global,Action %>'>
                <celltemplate>
                    <ul>
                        <mag:FeaturePanel runat="server" Tag="Li" Feature="Dashboards.Orders" Level="Edit" ><asp:ImageButton runat="server" SkinID="Edit" ToolTip='<%$ resources:global,Edit %>' CommandName="EditOrder" /></mag:FeaturePanel>
                        <li><asp:ImageButton runat="server" SkinID="View" CommandName="ViewOrder" /></li>
                    </ul>
                </celltemplate>
            </mag:GridViewColumn>
        </columns>
    </mag:gridview>
</fieldset>
