<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Inventory.ascx.cs" Inherits="Magelia.WebStore.Admin.App_UserControls.Products.Inventory" %>
<fieldset>
    <legend>
        <asp:Literal ID="litStock" runat="server" meta:resourcekey="litStock" />
    </legend>
    <asp:ListView ID="lvInventory" runat="server" DataKeyNames="WarehouseId,ProductId"
        OnItemDataBound="lvInventory_ItemDataBound" OnSorting="lvInventory_Sorting">
        <LayoutTemplate>
            <table class="gridView">
                <thead>
                    <tr>
                        <th runat="server">
                            <asp:LinkButton ID="lbtnSKU" runat="server" meta:resourcekey="lbtnSKU" CommandName="Sort"
                                CommandArgument="SKU" />
                        </th>
                        <th runat="server">
                            <asp:LinkButton ID="lbtnWarehouse" runat="server" meta:resourcekey="lbtnWarehouse"
                                CommandName="Sort" CommandArgument="WarehouseCode" />
                        </th>
                        <th runat="server">
                            <asp:LinkButton ID="lbtnUnlimited" runat="server" meta:resourcekey="lbtnUnlimited"
                                CommandName="Sort" CommandArgument="Unlimited" />
                        </th>
                        <th runat="server">
                            <asp:LinkButton ID="lbtnVirtualStock" runat="server" meta:resourcekey="lbtnVirtualStock"
                                CommandName="Sort" CommandArgument="VirtualStock" />
                        </th>
                        <th runat="server">
                            <asp:LinkButton ID="lbtnRealStock" runat="server" meta:resourcekey="lbtnRealStock"
                                CommandName="Sort" CommandArgument="RealStock" />
                        </th>
                        <th runat="server">
                            <asp:LinkButton ID="lbtnMinimumStock" runat="server" meta:resourcekey="lbtnMinimumStock"
                                CommandName="Sort" CommandArgument="MinimumStock" />
                        </th>
                        <th runat="server">
                            <asp:LinkButton ID="lbtnReorderLevel" runat="server" meta:resourcekey="lbtnReorderLevel"
                                CommandName="Sort" CommandArgument="ReorderLevel" />
                        </th>
                        <th runat="server">
                            <asp:LinkButton ID="lbtnAvailabilityDate" runat="server" meta:resourcekey="lbtnAvailabilityDate"
                                CommandName="Sort" CommandArgument="AvailabilityDate" />
                        </th>
                    </tr>
                </thead>
                <tbody>
                    <asp:PlaceHolder runat="server" ID="itemPlaceHolder" />
                </tbody>
            </table>
        </LayoutTemplate>
        <ItemTemplate>
            <tr>
                <td>
                    <asp:Literal runat="server" Text='<%# Eval("SKU") %>' />
                </td>
                <td>
                    <asp:Literal runat="server" Text='<%# Eval("Warehousecode") %>' />
                </td>
                <td>
                    <asp:CheckBox ID="cbxUnlimited" runat="server" Checked='<%# Eval("Unlimited") %>'
                        AutoPostBack="true" OnCheckedChanged="cbxUnlimited_CheckedChanged" />
                </td>
                <td>
                    <asp:UpdatePanel runat="server">
                        <ContentTemplate>
                            <asp:TextBox ID="tbxVirtualStock" runat="server" CssClass="numeric" AutoPostBack="true" Text='<%# Eval("VirtualStock") %>'
                                OnTextChanged="tbxVirtualStock_TextChanged" />
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </td>
                <td>
                    <asp:UpdatePanel runat="server">
                        <ContentTemplate>
                            <asp:TextBox ID="tbxRealStock" runat="server" CssClass="numeric" AutoPostBack="true" Text='<%# Eval("RealStock") %>'
                                OnTextChanged="tbxRealStock_TextChanged" />
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </td>
                <td>
                    <asp:UpdatePanel runat="server">
                        <ContentTemplate>
                            <asp:TextBox ID="tbxMinimumStock" runat="server" CssClass="numeric" AutoPostBack="true" Text='<%# Eval("MinimumStock") %>'
                                OnTextChanged="tbxMinimumStock_TextChanged" />
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </td>
                <td>
                    <asp:UpdatePanel runat="server">
                        <ContentTemplate>
                            <asp:TextBox ID="tbxReorderLevel" runat="server" CssClass="numeric" AutoPostBack="true" Text='<%# Eval("ReorderLevel") %>'
                                OnTextChanged="tbxReorderLevel_TextChanged" />
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </td>
                <td>
                    <asp:UpdatePanel runat="server">
                        <ContentTemplate>
                            <mag:DateTimePicker ID="mdtpAvailabilityDate" runat="server" OnSelectedDateTimeChanged="mdtpAvailabilityDate_SelectedDateTimeChanged" SelectedDateTime='<%# Eval("AvailabilityDate") %>' />
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </td>
            </tr>
        </ItemTemplate>
    </asp:ListView>
</fieldset>
