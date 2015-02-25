<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ShippingRateValueEditor.ascx.cs" Inherits="Magelia.WebStore.Admin.App_UserControls.Shipping.ShippingRateValueEditor" %>
<asp:CustomValidator ID="cvShippingRateValueRequired" runat="server" OnServerValidate="cvShippingRateValueRequired_ServerValidate" meta:resourcekey="cvShippingRateValueRequired" />
<asp:ListView ID="lvShippingRatesValues" runat="server" DataKeyNames="ShippingRateValueId" OnItemCanceling="lvShippingRatesValues_ItemCanceling" OnItemCreated="lvShippingRatesValues_ItemCreated" InsertItemPosition="FirstItem"
    OnItemDataBound="lvShippingRatesValues_ItemDataBound" OnSorting="lvShippingRatesValues_Sorting" OnItemInserting="lvShippingRatesValues_ItemInserting" OnItemEditing="lvShippingRatesValues_ItemEditing"
    OnItemDeleting="lvShippingRatesValues_ItemDeleting" OnItemUpdating="lvShippingRatesValues_ItemUpdating">
    <LayoutTemplate>
        <table class="gridView shippingRateValues">
            <thead>
                <tr>
                    <th runat="server">
                        <asp:LinkButton ID="lbtnCurrency" runat="server" meta:resourcekey="lbtnCurrency" CommandName="Sort" CommandArgument="Currency" />
                    </th>
                    <th runat="server">
                        <asp:LinkButton ID="lbtnFrom" runat="server" CommandName="Sort" CommandArgument="From" meta:resourcekey="lbtnFrom" />
                    </th>
                    <th runat="server">
                        <asp:LinkButton ID="lbtnTo" runat="server" meta:resourcekey="lbtnTo" CommandName="Sort" CommandArgument="To" />
                    </th>
                    <th runat="server">
                        <asp:LinkButton ID="lbtnRate" runat="server" meta:resourcekey="lbtnRate" CommandName="Sort" CommandArgument="Rate" />
                    </th>
                    <th id="thActions" runat="server">
                        <asp:Literal runat="server" Text='<%$ resources:global, Action %>' />
                    </th>
                </tr>
            </thead>
            <tbody>
                <asp:PlaceHolder ID="itemPlaceholder" runat="server" />
            </tbody>
        </table>
    </LayoutTemplate>
    <ItemTemplate>
        <tr>
            <td>
                <asp:Literal runat="server" Text='<%# Eval("CurrencyName") %>' />
            </td>
            <td class="numeric">
                <asp:Literal runat="server" ID="litFrom" />
            </td>
            <td class="numeric">
                <asp:Literal runat="server" ID="litTo" />
            </td>
            <td class="numeric">
                <asp:Literal runat="server" ID="litRate" />
            </td>
            <td id="tdActions" runat="server">
                <ul>
                    <li>
                        <asp:ImageButton runat="server" CommandName="Edit" SkinID="Edit" ToolTip='<%$ resources:global,Edit %>' />
                    </li>
                    <li>
                        <asp:ImageButton runat="server" CommandName="Delete" SkinID="Delete" ToolTip='<%$ resources:global,Delete %>' />
                    </li>
                </ul>
            </td>
        </tr>
    </ItemTemplate>
    <EditItemTemplate>
        <tr>
            <td>
                <asp:DropDownList ID="ddlCurrencies" runat="server" DataTextField="Name" DataValueField="CurrencyId" AutoPostBack="true" OnSelectedIndexChanged="ddlCurrencies_SelectedIndexChanged" />
                <asp:RequiredFieldValidator ID="rfvCurrency" runat="server" ValidationGroup="vgShippingRateValueEdit" ControlToValidate="ddlCurrencies" meta:resourcekey="rfvCurrency" />
            </td>
            <td>
                <asp:Literal ID="litFromLeftUnit" runat="server" />
                <asp:TextBox ID="tbxFrom" runat="server" CssClass="numeric" Text='<%# this.Criteria == 1 ? Convert.ToInt32(((ShippingRateValueViewModel)Container.DataItem).From).ToString() : Eval("From").ToString() %>' />
                <asp:Literal ID="litFromRightUnit" runat="server" />
                <asp:RequiredFieldValidator ID="rfvFrom" runat="server" ValidationGroup="vgShippingRateValueEdit" ControlToValidate="tbxFrom" meta:resourcekey="rfvFrom" />
                <asp:CompareValidator ID="cvFromDouble" runat="server" ControlToValidate="tbxFrom" Visible='<%# this.Criteria != 1 %>' ValidationGroup="vgShippingRateValueEdit" Type="Double" Operator="DataTypeCheck"
                    meta:resourcekey="cvFromDouble" />
                <asp:CompareValidator ID="cvFromInt" runat="server" ControlToValidate="tbxFrom" Visible='<%# this.Criteria == 1 %>' ValidationGroup="vgShippingRateValueEdit" Type="Integer" Operator="DataTypeCheck"
                    meta:resourcekey="cvFromInt" />
                <asp:CompareValidator ID="cvFromGreaterThanEqualZero" runat="server" ControlToValidate="tbxFrom" ValidationGroup="vgShippingRateValueEdit" Type="Double" Operator="GreaterThanEqual" ValueToCompare="0" meta:resourcekey="cvFromGreaterThanEqualZero" />
                <asp:CustomValidator ID="cvConflictFrom" runat="server" ValidationGroup="vgShippingRateValueEdit" ControlToValidate="tbxFrom" OnServerValidate="cvConflictFrom_ServerValidate" meta:resourcekey="cvConflictFrom" />
            </td>
            <td>
                <asp:Literal ID="litToLeftUnit" runat="server" />
                <asp:TextBox ID="tbxTo" runat="server" CssClass="numeric" Text='<%# ((ShippingRateValueViewModel)Container.DataItem).To.HasValue ? this.Criteria == 1 ? Convert.ToInt32(((ShippingRateValueViewModel)Container.DataItem).To).ToString() : Eval("To").ToString() : String.Empty %>' />
                <asp:Literal ID="litToRightUnit" runat="server" />
                <asp:CompareValidator ID="cvToDouble" runat="server" ControlToValidate="tbxTo" ValidationGroup="vgShippingRateValueEdit" Visible='<%# this.Criteria != 1 %>' Type="Double" Operator="DataTypeCheck"
                    meta:resourcekey="cvToDouble" />
                <asp:CompareValidator ID="cvToInt" runat="server" ControlToValidate="tbxTo" ValidationGroup="vgShippingRateValueEdit" Visible='<%# this.Criteria == 1 %>' Type="Integer" Operator="DataTypeCheck"
                    meta:resourcekey="cvToInt" />
                <asp:CompareValidator ID="cvToGreaterThanFrom" runat="server" ControlToValidate="tbxTo" ControlToCompare="tbxFrom" ValidationGroup="vgShippingRateValueEdit" Type="Double" Operator="GreaterThanEqual" meta:resourcekey="cvToGreaterThanFrom" />
                <asp:CustomValidator ID="cvConflictTo" runat="server" ValidationGroup="vgShippingRateValueEdit" ControlToValidate="tbxTo" OnServerValidate="cvConflictTo_ServerValidate" meta:resourcekey="cvConflictTo" />
            </td>
            <td>
                <asp:Literal ID="litRateLeftSymbol" runat="server" />
                <asp:TextBox ID="tbxRate" runat="server" CssClass="numeric" Text='<%# Eval("Rate") %>' />
                <asp:Literal ID="litRateRightSymbol" runat="server" />
                <asp:RequiredFieldValidator ID="rfvRate" runat="server" ValidationGroup="vgShippingRateValueEdit" ControlToValidate="tbxRate" meta:resourcekey="rfvRate" />
                <asp:CompareValidator ID="cvRateType" runat="server" ControlToValidate="tbxRate" ValidationGroup="vgShippingRateValueEdit" Type="Double" Operator="DataTypeCheck" meta:resourcekey="cvRateType" />
                <asp:CompareValidator ID="cvRateGreaterThanEqualZero" runat="server" ControlToValidate="tbxRate" ValidationGroup="vgShippingRateValueEdit" Type="Double" Operator="GreaterThanEqual" ValueToCompare="0" meta:resourcekey="cvRateGreaterThanEqualZero" />
            </td>
            <td>
                <ul>
                    <li>
                        <asp:ImageButton runat="server" CommandName="Update" ToolTip='<%$ resources:global,Save %>' SkinID="Save" ValidationGroup="vgShippingRateValueEdit" />
                        <asp:CustomValidator ID="cvNotTakeIn" runat="server" ValidationGroup="vgShippingRateValueEdit" OnServerValidate="cvNotTakeIn_ServerValidate" meta:resourcekey="cvNotTakeIn" />
                    </li>
                    <li>
                        <asp:ImageButton runat="server" CommandName="Cancel" ToolTip='<%$ resources:global,Cancel %>' SkinID="Cancel" />
                    </li>
                </ul>
            </td>
        </tr>
    </EditItemTemplate>
    <InsertItemTemplate>
        <tr>
            <td>
                <asp:DropDownList ID="ddlCurrencies" runat="server" DataTextField="Name" DataValueField="CurrencyId" AutoPostBack="true" OnSelectedIndexChanged="ddlCurrencies_SelectedIndexChanged" />
                <asp:RequiredFieldValidator ID="rfvCurrency" runat="server" ValidationGroup="vgShippingRateValueInsert" ControlToValidate="ddlCurrencies" meta:resourcekey="rfvCurrency" />
            </td>
            <td>
                <asp:Literal ID="litFromLeftUnit" runat="server" />
                <asp:TextBox ID="tbxFrom" runat="server" CssClass="numeric" />
                <asp:Literal ID="litFromRightUnit" runat="server" />
                <asp:RequiredFieldValidator ID="rfvFrom" runat="server" ValidationGroup="vgShippingRateValueInsert" ControlToValidate="tbxFrom" meta:resourcekey="rfvFrom" />
                <asp:CompareValidator ID="cvFromDouble" runat="server" ControlToValidate="tbxFrom" Visible='<%# this.Criteria != 1 %>' ValidationGroup="vgShippingRateValueInsert" Type="Double" Operator="DataTypeCheck"
                    meta:resourcekey="cvFromDouble" />
                <asp:CompareValidator ID="cvFromInt" runat="server" ControlToValidate="tbxFrom" Visible='<%# this.Criteria == 1 %>' ValidationGroup="vgShippingRateValueInsert" Type="Integer" Operator="DataTypeCheck"
                    meta:resourcekey="cvFromInt" />
                <asp:CompareValidator ID="cvFromGreaterThanEqualZero" runat="server" ControlToValidate="tbxFrom" ValidationGroup="vgShippingRateValueInsert" Type="Double" Operator="GreaterThanEqual" ValueToCompare="0"
                    meta:resourcekey="cvFromGreaterThanEqualZero" />
                <asp:CustomValidator ID="cvConflictFrom" runat="server" ValidationGroup="vgShippingRateValueInsert" ControlToValidate="tbxFrom" OnServerValidate="cvConflictFrom_ServerValidate" meta:resourcekey="cvConflictFrom" />
            </td>
            <td>
                <asp:Literal ID="litToLeftUnit" runat="server" />
                <asp:TextBox ID="tbxTo" runat="server" CssClass="numeric" />
                <asp:Literal ID="litToRightUnit" runat="server" />
                <asp:CompareValidator ID="cvToDouble" runat="server" ControlToValidate="tbxTo" ValidationGroup="vgShippingRateValueInsert" Visible='<%# this.Criteria != 1 %>' Type="Double" Operator="DataTypeCheck"
                    meta:resourcekey="cvToDouble" />
                <asp:CompareValidator ID="cvToInt" runat="server" ControlToValidate="tbxTo" ValidationGroup="vgShippingRateValueInsert" Visible='<%# this.Criteria == 1 %>' Type="Integer" Operator="DataTypeCheck"
                    meta:resourcekey="cvToInt" />
                <asp:CompareValidator ID="cvToGreaterThanFrom" runat="server" ControlToValidate="tbxTo" ControlToCompare="tbxFrom" ValidationGroup="vgShippingRateValueInsert" Type="Double" Operator="GreaterThanEqual"
                    meta:resourcekey="cvToGreaterThanFrom" />
                <asp:CustomValidator ID="cvConflictTo" runat="server" ValidationGroup="vgShippingRateValueInsert" ControlToValidate="tbxTo" OnServerValidate="cvConflictTo_ServerValidate" meta:resourcekey="cvConflictTo" />
            </td>
            <td>
                <asp:Literal ID="litRateLeftSymbol" runat="server" />
                <asp:TextBox ID="tbxRate" runat="server" CssClass="numeric" />
                <asp:Literal ID="litRateRightSymbol" runat="server" />
                <asp:RequiredFieldValidator ID="rfvRate" runat="server" ValidationGroup="vgShippingRateValueInsert" ControlToValidate="tbxRate" meta:resourcekey="rfvRate" />
                <asp:CompareValidator ID="cvRateType" runat="server" ControlToValidate="tbxRate" ValidationGroup="vgShippingRateValueInsert" Type="Double" Operator="DataTypeCheck" meta:resourcekey="cvRateType" />
                <asp:CompareValidator ID="cvRateGreaterThanEqualZero" runat="server" ControlToValidate="tbxRate" ValidationGroup="vgShippingRateValueInsert" Type="Double" Operator="GreaterThanEqual" ValueToCompare="0"
                    meta:resourcekey="cvRateGreaterThanEqualZero" />
            </td>
            <td>
                <ul>
                    <li>
                        <asp:ImageButton runat="server" CommandName="Insert" SkinID="Add" ToolTip='<%$ resources:global,Add %>' ValidationGroup="vgShippingRateValueInsert" />
                        <asp:CustomValidator ID="cvNotTakeIn" runat="server" ValidationGroup="vgShippingRateValueInsert" OnServerValidate="cvNotTakeIn_ServerValidate" meta:resourcekey="cvNotTakeIn" />
                    </li>
                </ul>
            </td>
        </tr>
    </InsertItemTemplate>
</asp:ListView>
