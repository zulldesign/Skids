<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WorkerComponentConfiguration.ascx.cs" Inherits="Magelia.WebStore.Admin.App_UserControls.WorkerComponent.WorkerComponentConfiguration" %>

<asp:Panel runat="server" meta:resourceKey="pnlWorkerComponents">
    <asp:ListView runat="server" ID="lvWorkerComponentPatterns" OnItemDataBound="lvWorkerComponentPatterns_ItemDataBound"
        DataKeyNames="WorkerComponentPatternId">
        <ItemTemplate>
            <asp:Panel runat="server" GroupingText="<%#((WorkerComponentPatternViewModel)Container.DataItem).WorkerComponentPatternType.Name %>">
                <div class="field inline break-after" runat="server" visible="<%#this.Scope == WorkercomponentScope.StoreConfiguration %>">
                    <asp:Label runat="server" meta:resourceKey="lblUseSellerConfiguration" AssociatedControlID="cbUseSellerConfiguration" />
                    <asp:CheckBox runat="server" ID="cbUseSellerConfiguration" OnCheckedChanged="cbUseSellerConfiguration_CheckedChanged" AutoPostBack="true" Checked="true" />
                </div>
                <asp:Panel runat="server" ID="pnlWorkerComponentConfiguration">
                    <hr runat="server" visible="<%#this.Scope == WorkercomponentScope.StoreConfiguration %>" />
                    <asp:Panel runat="server" ID="pnlBehaviors" meta:resourceKey="pnlBehaviors">
                        <asp:ListView ID="lvWorkerComponentBehaviors" runat="server" InsertItemPosition="FirstItem" DataKeyNames="WorkerComponentId"
                            OnItemDataBound="lvWorkerComponentBehaviors_ItemDataBound" OnItemInserting="lvWorkerComponentBehaviors_ItemInserting"
                            OnItemDeleting="lvWorkerComponentBehaviors_ItemDeleting" OnItemEditing="lvWorkerComponentBehaviors_ItemEditing" 
                            OnItemUpdating="lvWorkerComponentBehaviors_ItemUpdating" OnItemCanceling="lvWorkerComponentBehaviors_ItemCanceling">
                            <LayoutTemplate>
                                <table class="gridView">
                                    <thead>
                                        <tr>
                                            <th runat="server">
                                                <asp:Label ID="lblName" runat="server" meta:resourcekey="lblName" />
                                            </th>
                                            <th runat="server">
                                                <asp:Label ID="lblSettings" runat="server" meta:resourcekey="lblSettings" />
                                            </th>
                                            <th runat="server" class="sortedAsc">
                                                <a href="#" onclick="javascript:return false;">
                                                    <asp:Label ID="lblOrder" runat="server" meta:resourcekey="lblOrder" />
                                                </a>
                                            </th>
                                            <th runat="server">
                                                <asp:Literal runat="server" Text='<%$ resources:global, Action %>' />
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
                                        <asp:Literal runat="server" Text='<%# Eval("Name") %>' />
                                    </td>
                                    <td>
                                        <mag:DynamicControl runat="server" ID="dcParameters" />
                                    </td>
                                    <td class="numeric">
                                        <asp:DropDownList ID="ddlOrders" CssClass="autoSize" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlOrders_SelectedIndexChanged" />
                                    </td>
                                    <td id="tdAction" runat="server">
                                        <ul>
                                            <li>
                                                <asp:ImageButton runat="server" SkinID="Edit" ToolTip='<%$ resources:global,Edit %>' CommandName="Edit" />
                                            </li>
                                            <li>
                                                <asp:ImageButton runat="server" SkinID="Delete" ToolTip='<%$ resources:global,Delete %>' CommandName="Delete" />
                                            </li>
                                        </ul>
                                    </td>
                                </tr>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <tr>
                                    <td>
                                        <asp:Literal runat="server" Text='<%# Eval("Name") %>' />
                                    </td>
                                    <td>
                                        <mag:DynamicControl runat="server" ID="dcParameters" />
                                    </td>
                                    <td class="numeric">
                                        <asp:DropDownList ID="ddlOrders" runat="server" CssClass="autoSize" />
                                    </td>
                                    <td id="tdAction" runat="server">
                                        <ul>
                                            <li>
                                                <asp:ImageButton runat="server" ID="btnUpdate" CommandName="Update" ToolTip='<%$ resources:global,Save %>' SkinID="Save" ValidationGroup="vgBehaviorEdit" />
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
                                        <asp:DropDownList ID="ddlBehaviorTypes" runat="server" AutoPostBack="true" DataTextField="Name" DataValueField="AssemblyQualifiedName" OnSelectedIndexChanged="ddlBehaviorTypes_SelectedIndexChanged" ValidationGroup="vgBehaviorInsert" />
                                        <asp:RequiredFieldValidator ID="rfvBehaviorTypes" runat="server" ValidationGroup="vgBehaviorInsert" meta:resourcekey="rfvBehaviorTypes" ControlToValidate="ddlBehaviorTypes" />
                                    </td>
                                    <td>
                                        <mag:DynamicControl runat="server" ID="dcParameters" />
                                    </td>
                                    <td class="numeric">
                                        <asp:DropDownList ID="ddlOrders" runat="server" CssClass="autoSize" />
                                    </td>
                                    <td>
                                        <ul>
                                            <li>
                                                <asp:ImageButton runat="server" ID="btnInsert" CommandName="Insert" SkinID="Add" ToolTip='<%$ resources:global,Add %>' ValidationGroup="vgBehaviorInsert" />
                                            </li>
                                        </ul>
                                    </td>
                                </tr>
                            </InsertItemTemplate>
                        </asp:ListView>
                    </asp:Panel>
                    <mag:componentConfigurator runat="server" id="mccWorkerComponent" meta:resourceKey="mccWorkerComponent" />
                </asp:Panel>
            </asp:Panel>
        </ItemTemplate>
    </asp:ListView>
</asp:Panel>
