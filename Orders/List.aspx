<%@ Page Title="" Language="C#" MasterPageFile="~/App_Masters/DefaultLayout.Master" AutoEventWireup="true" CodeBehind="List.aspx.cs" Inherits="Magelia.WebStore.Admin.Orders.List" %>

<asp:Content ContentPlaceHolderID="cphBarTitle" runat="server">
    <asp:Literal ID="litOrders" runat="server" meta:resourcekey="litOrders" />
</asp:Content>
<asp:Content ContentPlaceHolderID="cphBody" runat="server">
    <asp:ValidationSummary runat="server" HeaderText="<%$ Resources:Global, ErrorMsgText %>" ValidationGroup="vgSearch" />
    <mag:SearchPanel runat="server" DefaultButton="lbtnSeach">
        <div class="field">
            <asp:Label ID="lblNumber" runat="server" meta:resourcekey="lblNumber" AssociatedControlID="ddlNumberOperator" />
            <asp:DropDownList ID="ddlNumberOperator" runat="server" CssClass="autoSize operator">
                <asp:ListItem Text="=" Value="=" />
                <asp:ListItem Text="!=" Value="!=" />
                <asp:ListItem Text="&lt;" Value="&lt;" />
                <asp:ListItem Text="&lt;=" Value="&lt;=" />
                <asp:ListItem Text="&gt;" Value="&gt;" />
                <asp:ListItem Text="&gt;=" Value="&gt;=" />
            </asp:DropDownList>
            <asp:TextBox ID="tbxNumber" CssClass="numeric" runat="server" />
            <asp:CompareValidator ID="cvNumberIsInteger" runat="server" ValidationGroup="vgSearch" meta:resourcekey="cvNumberIsInteger" ControlToValidate="tbxNumber" Operator="DataTypeCheck" Type="Integer" />
            <asp:CompareValidator ID="cvNumberGreaterThanZero" runat="server" ValidationGroup="vgSearch" meta:resourcekey="cvNumberGreaterThanZero" ControlToValidate="tbxNumber" Operator="GreaterThan" ValueToCompare="0"
                Type="Integer" />
        </div>
        <div id="bStatus" runat="server" class="field">
            <asp:Label ID="lblStatus" runat="server" meta:resourcekey="lblStatus" AssociatedControlID="ddlStatus" />
            <asp:DropDownList ID="ddlStatus" runat="server" DataTextField="Code" DataValueField="StatusId" AppendDataBoundItems="true">
                <asp:ListItem />
            </asp:DropDownList>
        </div>
        <div class="field">
            <asp:Label ID="lblVersion" runat="server" meta:resourcekey="lblVersion" AssociatedControlID="ddlVersionOperator" />
            <asp:DropDownList ID="ddlVersionOperator" runat="server" CssClass="autoSize operator">
                <asp:ListItem Text="=" Value="=" />
                <asp:ListItem Text="!=" Value="!=" />
                <asp:ListItem Text="&lt;" Value="&lt;" />
                <asp:ListItem Text="&lt;=" Value="&lt;=" />
                <asp:ListItem Text="&gt;" Value="&gt;" />
                <asp:ListItem Text="&gt;=" Value="&gt;=" />
            </asp:DropDownList>
            <asp:TextBox ID="tbxVersion" CssClass="numeric" runat="server" />
            <asp:CompareValidator ID="cvVersionIsInteger" runat="server" ValidationGroup="vgSearch" meta:resourcekey="cvVersionIsInteger" ControlToValidate="tbxVersion" Operator="DataTypeCheck" Type="Integer" />
            <asp:CompareValidator ID="cvVersionGreaterThanZero" runat="server" ValidationGroup="vgSearch" meta:resourcekey="cvVersionGreaterThanZero" ControlToValidate="tbxVersion" Operator="GreaterThan" ValueToCompare="0"
                Type="Integer" />
        </div>
        <div class="field">
            <asp:Label ID="lblCustomer" runat="server" meta:resourcekey="lblCustomer" AssociatedControlID="tbxCustomer" />
            <asp:TextBox ID="tbxCustomer" runat="server" />
        </div>
        <div class="field">
            <asp:Label ID="lblUserName" runat="server" meta:resourcekey="lblUserName" AssociatedControlID="tbxUserName" />
            <asp:TextBox ID="tbxUserName" runat="server" />
        </div>
        <div class="field">
            <asp:Label ID="lblCreationDate" runat="server" meta:resourcekey="lblCreationDate" AssociatedControlID="ddlCreationDateOperator" />
            <asp:DropDownList ID="ddlCreationDateOperator" runat="server" CssClass="autoSize operator">
                <asp:ListItem Text="=" Value="=" />
                <asp:ListItem Text="!=" Value="!=" />
                <asp:ListItem Text="&lt;" Value="&lt;" />
                <asp:ListItem Text="&lt;=" Value="&lt;=" />
                <asp:ListItem Text="&gt;" Value="&gt;" />
                <asp:ListItem Text="&gt;=" Value="&gt;=" />
            </asp:DropDownList>
            <mag:DatePicker ID="mdpCreationDate" runat="server" />
        </div>
        <div class="field">
            <asp:Label ID="lblLastModificationDate" runat="server" meta:resourcekey="lblLastModificationDate" AssociatedControlID="ddlLastModificationDateOperator" />
            <asp:DropDownList ID="ddlLastModificationDateOperator" runat="server" CssClass="autoSize operator">
                <asp:ListItem Text="=" Value="=" />
                <asp:ListItem Text="!=" Value="!=" />
                <asp:ListItem Text="&lt;" Value="&lt;" />
                <asp:ListItem Text="&lt;=" Value="&lt;=" />
                <asp:ListItem Text="&gt;" Value="&gt;" />
                <asp:ListItem Text="&gt;=" Value="&gt;=" />
            </asp:DropDownList>
            <mag:DatePicker ID="mdpLastModificationDate" runat="server" />
        </div>
        <div class="field">
            <asp:Label ID="lblTotalIncludingDiscount" runat="server" meta:resourcekey="lblTotalIncludingDiscount" AssociatedControlID="ddlTotalIncludingDiscountOperator" />
            <asp:DropDownList ID="ddlTotalIncludingDiscountOperator" runat="server" CssClass="autoSize operator">
                <asp:ListItem Text="=" Value="=" />
                <asp:ListItem Text="!=" Value="!=" />
                <asp:ListItem Text="&lt;" Value="&lt;" />
                <asp:ListItem Text="&lt;=" Value="&lt;=" />
                <asp:ListItem Text="&gt;" Value="&gt;" />
                <asp:ListItem Text="&gt;=" Value="&gt;=" />
            </asp:DropDownList>
            <asp:TextBox ID="tbxTotalIncludingDiscount" CssClass="numeric" runat="server" />
            <asp:CompareValidator ID="cvTotalIncludingDiscountIsDecimal" runat="server" ValidationGroup="vgSearch" meta:resourcekey="cvTotalIncludingDiscountIsDecimal" ControlToValidate="tbxTotalIncludingDiscount"
                Operator="DataTypeCheck" Type="Double" />
            <asp:CompareValidator ID="cvTotalIncludingDiscountGreaterThanEqualZero" runat="server" ValidationGroup="vgSearch" meta:resourcekey="cvTotalIncludingDiscountGreaterThanEqualZero" ControlToValidate="tbxTotalIncludingDiscount"
                Operator="GreaterThan" ValueToCompare="0" Type="Double" />
        </div>
        <div class="field">
            <asp:Label ID="lblTotalIncludingDiscountAndTaxes" runat="server" meta:resourcekey="lblTotalIncludingDiscountAndTaxes" AssociatedControlID="ddlTotalIncludingDiscountAndTaxesOperator" />
            <asp:DropDownList ID="ddlTotalIncludingDiscountAndTaxesOperator" runat="server" CssClass="autoSize operator">
                <asp:ListItem Text="=" Value="=" />
                <asp:ListItem Text="!=" Value="!=" />
                <asp:ListItem Text="&lt;" Value="&lt;" />
                <asp:ListItem Text="&lt;=" Value="&lt;=" />
                <asp:ListItem Text="&gt;" Value="&gt;" />
                <asp:ListItem Text="&gt;=" Value="&gt;=" />
            </asp:DropDownList>
            <asp:TextBox ID="tbxTotalIncludingDiscountAndTaxes" CssClass="numeric" runat="server" />
            <asp:CompareValidator ID="cvTotalIncludingDiscountAndTaxesIsDecimal" runat="server" ValidationGroup="vgSearch" meta:resourcekey="cvTotalIncludingDiscountAndTaxesIsDecimal" ControlToValidate="tbxTotalIncludingDiscountAndTaxes"
                Operator="DataTypeCheck" Type="Double" />
            <asp:CompareValidator ID="cvTotalIncludingDiscountAndTaxesGreaterThanEqualZero" runat="server" ValidationGroup="vgSearch" meta:resourcekey="cvTotalIncludingDiscountAndTaxesGreaterThanEqualZero" ControlToValidate="tbxTotalIncludingDiscountAndTaxes"
                Operator="GreaterThan" ValueToCompare="0" Type="Double" />
        </div>
        <div class="field">
            <asp:Label ID="lblCurrency" runat="server" meta:resourcekey="lblCurrency" AssociatedControlID="ddlCurrencies" />
            <asp:DropDownList ID="ddlCurrencies" runat="server" DataTextField="Code" DataValueField="CurrencyId" AppendDataBoundItems="true">
                <asp:ListItem />
            </asp:DropDownList>
        </div>
        <div class="field">
            <asp:Label ID="lblCountry" runat="server" meta:resourcekey="lblCountry" AssociatedControlID="ddlCountries" />
            <asp:DropDownList ID="ddlCountries" runat="server" DataTextField="Name" DataValueField="CountryId" AppendDataBoundItems="true">
                <asp:ListItem />
            </asp:DropDownList>
        </div>
        <div class="field">
            <asp:Label ID="lblChannel" runat="server" meta:resourcekey="lblChannel" AssociatedControlID="ddlChannels" />
            <asp:DropDownList ID="ddlChannels" runat="server" AppendDataBoundItems="true">
                <asp:ListItem />
            </asp:DropDownList>
        </div>
        <div class="buttons">
            <ul>
                <li>
                    <asp:LinkButton ID="lbtnReset" runat="server" Text='<%$ resources:global,Reset %>' SkinID="Minor" OnClick="lbtnReset_Click" />
                </li>
                <li>
                    <asp:LinkButton ID="lbtnSeach" runat="server" Text='<%$ resources:global,Search %>' SkinID="Major" ValidationGroup="vgSearch" OnClick="lbtnSearch_Click" />
                </li>
            </ul>
        </div>
    </mag:SearchPanel>
    <mag:Gridview ID="mgvOrders" runat="server" AllowPaging="true" EnableAutoRefresh="false" DataKeyNames="OrderId" ShowSelectionColumn="false" OnCommand="mgvOrders_Command">
        <columns>
            <mag:GridViewColumn ID="mgvcOrderNumber" runat="server" CssClass="numeric" AllowSorting="true" SortExpression="OrderNumber" meta:resourcekey="mgvcOrderNumber">
                <celltemplate>
                    <asp:LinkButton runat="server" Text='<%# Eval("OrderNumber") %>' CommandName='<%# this.CanEdit ? "EditOrder" : "ViewLastOrderVersion" %>' />
                </celltemplate>
            </mag:GridViewColumn>
            <mag:GridViewColumn ID="mgvcStatus" runat="server" AllowSorting="true" SortExpression="Status" meta:resourcekey="mgvcStatus">
                <celltemplate>
                    <asp:Literal runat="server" Text='<%# Eval("Status") %>' />
                </celltemplate>
            </mag:GridViewColumn>
            <mag:GridViewColumn ID="mgvcCustomer" runat="server" AllowSorting="true" SortExpression="Customer" meta:resourcekey="mgvcCustomer">
                <celltemplate>
                    <asp:Literal runat="server" Text='<%# this.Server.HtmlEncode(((OrderViewModel)Container.DataItem).Customer) %>' />
                </celltemplate>
            </mag:GridViewColumn>
            <mag:GridViewColumn ID="mgvcUserName" runat="server" AllowSorting="true" SortExpression="UserName" meta:resourcekey="mgvcUserName">
                <celltemplate>
                    <asp:Literal runat="server" Text='<%# this.Server.HtmlEncode(((OrderViewModel)Container.DataItem).UserName) %>' />
                </celltemplate>
            </mag:GridViewColumn>
            <mag:GridViewColumn ID="mgvcCreationDate" runat="server" CssClass="numeric" AllowSorting="true" SortExpression="CreationDate" meta:resourcekey="mgvcCreationDate">
                <celltemplate>
                    <asp:Literal runat="server" Text='<%# ((OrderViewModel)Container.DataItem).CreationDate.ToUserTimeZoneString() %>' />
                </celltemplate>
            </mag:GridViewColumn>
            <mag:GridViewColumn ID="mgvcLastModificationDate" runat="server" CssClass="numeric" AllowSorting="true" SortExpression="LastModificationDate" meta:resourcekey="mgvcLastModificationDate">
                <celltemplate>
                    <asp:Literal runat="server" Text='<%# ((OrderViewModel)Container.DataItem).LastModificationDate.ToUserTimeZoneString() %>' />
                </celltemplate>
            </mag:GridViewColumn>
            <mag:GridViewColumn ID="mgvcOrderTotalIncludingTotalDiscount" CssClass="numeric" runat="server" AllowSorting="true" SortExpression="OrderTotalIncludingTotalDiscount" meta:resourcekey="mgvcOrderTotalIncludingTotalDiscount">
                <celltemplate>
                    <asp:Literal runat="server" Text='<%# Eval("LocalizedOrderTotalIncludingTotalDiscount") %>' />
                </celltemplate>
            </mag:GridViewColumn>
            <mag:GridViewColumn ID="mgvcOrderTotalIncludingTotalDiscountAndTaxes" CssClass="numeric" runat="server" AllowSorting="true" SortExpression="OrderTotalIncludingTotalDiscountAndTaxes" meta:resourcekey="mgvcOrderTotalIncludingTotalDiscountAndTaxes">
                <celltemplate>
                    <asp:Literal runat="server" Text='<%# Eval("LocalizedOrderTotalIncludingTotalDiscountAndTaxes") %>' />
                </celltemplate>
            </mag:GridViewColumn>
            <mag:GridViewColumn ID="mgvcCurrencyCode" runat="server" AllowSorting="true" SortExpression="CurrencyCode" meta:resourcekey="mgvcCurrencyCode">
                <celltemplate>
                    <asp:Literal runat="server" Text='<%# Eval("CurrencyCode") %>' />
                </celltemplate>
            </mag:GridViewColumn>
            <mag:GridViewColumn ID="mgvcCountry" runat="server" AllowSorting="true" SortExpression="Country" meta:resourcekey="mgvcCountry">
                <celltemplate>
                    <asp:Literal runat="server" Text='<%# Eval("Country") %>' />
                </celltemplate>
            </mag:GridViewColumn>
            <mag:GridViewColumn ID="mgvcChannel" runat="server" AllowSorting="true" SortExpression="Channel" meta:resourcekey="mgvcChannel">
                <celltemplate>
                    <asp:Literal runat="server" Text='<%# Eval("Channel") %>' />
                </celltemplate>
            </mag:GridViewColumn>
              <mag:GridViewColumn ID="mgvcVersion" runat="server" CssClass="numeric" AllowSorting="true" SortExpression="Version" meta:resourcekey="mgvcVersion">
                <celltemplate>
                    <asp:DropDownList ID="ddlversion" runat="server" CssClass="autoSize" DataSource='<%# Eval("Versions") %>' />
                </celltemplate>
            </mag:GridViewColumn>
            <mag:GridViewColumn runat="server" AllowSorting="false" Name='<%$ resources:global,Action %>'>
                <celltemplate>
                    <ul>
                        <mag:FeaturePanel runat="server" Tag="Li" Level="Edit">
                            <asp:ImageButton runat="server" SkinID="Edit" ToolTip='<%$ resources:global,Edit %>' CommandName="EditOrder" />
                        </mag:FeaturePanel>
                        <li>
                            <asp:ImageButton runat="server" SkinID="View" CommandName="ViewOrder" />
                        </li>
                    </ul>
                </celltemplate>
            </mag:GridViewColumn>
        </columns>
    </mag:Gridview>
</asp:Content>
