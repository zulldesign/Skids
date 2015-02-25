<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="GridView.ascx.cs" Inherits="Magelia.WebStore.Admin.App_UserControls.Generics.UC_GridView" %>
<%@ Import Namespace="Magelia.WebStore.Admin" %>
<%@ Import Namespace="Magelia.WebStore.Admin.App_UserControls.Generics" %>
<%@ Register Src="~/App_UserControls/Generics/AutoRefresh.ascx" TagName="AutoRefresh" TagPrefix="mag" %>

<asp:MultiView runat="server" ID="mvItems" ActiveViewIndex="0">
    <asp:View runat="server">
        <ul class="messages">
            <li class="warning">
                <asp:Literal ID="litNoRecordsFound" runat="server" meta:resourceKey="litNoRecordsFound" />
            </li>
        </ul>
    </asp:View>
    <asp:View runat="server">
        <div class="gridViewContainer">
            <asp:Panel ID="pnlGridOptionsTop" runat="server" CssClass="top">
                <div class="left">
                    <asp:Panel runat="server" EnableViewState="False" ID="pnlSelectTop">
                        <asp:Label runat="server" Text='<%$ Resources:Global, Select %>' />
                        <ul>
                            <li>
                                <asp:HyperLink runat="server" href="javascript:void(0);" CssClass="gridview enableAll" Text='<%$ Resources:Global, All %>' />
                            </li>
                            <li>|</li>
                            <li>
                                <asp:HyperLink runat="server" href="javascript:void(0);" CssClass="gridview disableAll" Text='<%$ Resources:Global, None %>' />
                            </li>
                        </ul>
                    </asp:Panel>
                    <asp:Repeater runat="server" ID="rptCommandButtonsTop">
                        <HeaderTemplate>
                            <ul>
                        </HeaderTemplate>
                        <FooterTemplate>
                            </ul>
                        </FooterTemplate>
                        <ItemTemplate>
                            <li>
                                <asp:LinkButton ID="lbtnCommandButton" runat="server" OnClientClick='<%# ((CommandButton)Container.DataItem).OnClientClick %>' CommandName='<%# ((CommandButton)Container.DataItem).CommandName %>' OnCommand="lbtnCommandButton_Command"
                                    ValidationGroup='<%# Eval("ValidationGroup") %>' Text='<%# ((CommandButton)Container.DataItem).Text %>' />
                            </li>
                        </ItemTemplate>
                        <SeparatorTemplate>
                            <li>|</li>
                        </SeparatorTemplate>
                    </asp:Repeater>
                </div>
                <div class="right">
                    <asp:DataPager runat="server" ID="dpTop" PagedControlID="lvGrid">
                        <Fields>
                            <asp:NextPreviousPagerField meta:resourcekey="NextPreviousPagerField" />
                            <asp:NumericPagerField CurrentPageLabelCssClass="current" NumericButtonCssClass="numericPage" ButtonCount="5" />
                            <asp:TemplatePagerField>
                                <PagerTemplate>
                                    <asp:LinkButton runat="server" CommandName="PageChange" OnCommand="lbtnChangePage_Command" CssClass="numericPage" CommandArgument='<%#(PageCount-1)*PageSize%>' Visible='<%# CurrentPageIndex < PageCount - 5 %>' Text='<%# this.PageCount %>' />
                                </PagerTemplate>
                            </asp:TemplatePagerField>
                        </Fields>
                    </asp:DataPager>
                </div>
            </asp:Panel>
            <table class="gridView">
                <thead>
                    <tr>
                        <asp:Repeater runat="server" ID="rptColumns" OnItemCommand="rptColumns_ItemCommand">
                            <HeaderTemplate>
                                <th runat="server" class="cbx" visible='<%# this.ShowSelectionColumn %>'>
                                    <input type="checkbox" />
                                </th>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <th class='<%#((GridViewColumn)Container.DataItem).HeaderCssClass %>' runat="server">
                                    <asp:MultiView runat="server" ActiveViewIndex='<%# ((GridViewColumn)Container.DataItem).AllowSorting?0:1 %>'>
                                        <asp:View runat="server">
                                            <asp:LinkButton runat="server" CommandName="Sort" ToolTip='<%# Eval("ToolTip") %>' CommandArgument='<%# Eval("SortExpression") %>' Text='<%# Eval("Name") %>' />
                                        </asp:View>
                                        <asp:View runat="server">
                                            <asp:Literal runat="server" Text='<%#((GridViewColumn)Container.DataItem).Name%>' />
                                        </asp:View>
                                    </asp:MultiView>
                                </th>
                            </ItemTemplate>
                        </asp:Repeater>
                    </tr>
                </thead>
                <tbody>
                    <asp:ListView runat="server" ID="lvGrid" OnPagePropertiesChanging="lvGrid_PagePropertiesChanging" OnPagePropertiesChanged="lvGrid_PagePropertiesChanged" OnSorting="lvGrid_Sorting" OnSorted="lvGrid_Sorted"
                        OnItemDataBound="lvGrid_ItemDataBound" OnItemCreated="lvGrid_ItemCreated" OnItemCommand="lvGrid_ItemCommand" OnDataBound="lvGrid_DataBound">
                        <ItemTemplate>
                            <tr>
                                <td runat="server" class="cbx" visible='<%# ShowSelectionColumn %>'>
                                    <asp:CheckBox ID="cbxSelect" runat="server" />
                                </td>
                                <asp:PlaceHolder ID="rowPlaceHolder" runat="server" />
                            </tr>
                        </ItemTemplate>
                        <LayoutTemplate>
                            <asp:PlaceHolder runat="server" ID="itemPlaceHolder" />
                        </LayoutTemplate>
                    </asp:ListView>
                </tbody>
            </table>
            <asp:Panel ID="pnlGridOptionsBottom" runat="server" CssClass="bottom">
                <div class="left">
                    <asp:Panel runat="server" EnableViewState="False" ID="pnlSelectBottom">
                        <asp:Label runat="server" Text='<%$ Resources:Global, Select %>' />
                        <ul>
                            <li>
                                <asp:HyperLink runat="server" href="javascript:void(0);" CssClass="gridview enableAll" Text='<%$ Resources:Global, All %>' />
                            </li>
                            <li>|</li>
                            <li>
                                <asp:HyperLink runat="server" href="javascript:void(0);" CssClass="gridview disableAll" Text='<%$ Resources:Global, None %>' />
                            </li>
                        </ul>
                    </asp:Panel>
                    <asp:Repeater runat="server" ID="rptCommandButtonsBottom">
                        <HeaderTemplate>
                            <ul class="buttons">
                        </HeaderTemplate>
                        <FooterTemplate>
                            </ul>
                        </FooterTemplate>
                        <ItemTemplate>
                            <li>
                                <asp:LinkButton runat="server" CommandName='<%# ((CommandButton)Container.DataItem).CommandName %>' OnClientClick='<%# ((CommandButton)Container.DataItem).OnClientClick %>' OnCommand="lbtnCommandButton_Command"
                                    Text='<%# ((CommandButton)Container.DataItem).Text %>' />
                            </li>
                        </ItemTemplate>
                        <SeparatorTemplate>
                            <li>|</li>
                        </SeparatorTemplate>
                    </asp:Repeater>
                </div>
                <div class="right">
                    <asp:DataPager runat="server" ID="dpBottom" PagedControlID="lvGrid">
                        <Fields>
                            <asp:NextPreviousPagerField meta:resourcekey="NextPreviousPagerField" />
                            <asp:TemplatePagerField>
                                <PagerTemplate>
                                    <asp:LinkButton runat="server" CommandName="PageChange" OnCommand="lbtnChangePage_Command" CssClass="numericPage" CommandArgument="0" Visible='<%# CurrentPageIndex >= 5 %>' Text="1" />
                                </PagerTemplate>
                            </asp:TemplatePagerField>
                            <asp:NumericPagerField CurrentPageLabelCssClass="current" NumericButtonCssClass="numericPage" ButtonCount="5" />
                            <asp:TemplatePagerField>
                                <PagerTemplate>
                                    <asp:LinkButton runat="server" CommandName="PageChange" OnCommand="lbtnChangePage_Command" CssClass="numericPage" CommandArgument='<%#(PageCount-1)*PageSize%>' Visible='<%# CurrentPageIndex < PageCount - 5 %>'
                                        Text='<%# this.PageCount %>' />
                                </PagerTemplate>
                            </asp:TemplatePagerField>
                            <asp:TemplatePagerField>
                                <PagerTemplate>
                                    <asp:Literal runat="server" ID="litShowing" meta:resourcekey="litShowing" />
                                    <asp:Literal runat="server" ID="CurrentPageLabel" Text='<%# Container.StartRowIndex + 1 %>' />
                                    <asp:Literal runat="server" ID="litTo" meta:resourcekey="litTo" />
                                    <asp:Literal runat="server" ID="TotalPagesLabel" Text='<%# (Container.StartRowIndex+Container.PageSize) <= Container.TotalRowCount ? Container.StartRowIndex+Container.PageSize : Container.TotalRowCount %>' />
                                    <asp:Literal runat="server" ID="litOf" meta:resourcekey="litOf" />
                                    <asp:Literal runat="server" ID="TotalItemsLabel" Text='<%# String.Format("{0:N0}", Container.TotalRowCount) %>' />
                                    <asp:Literal runat="server" ID="litRecords" meta:resourcekey="litRecords" />
                                </PagerTemplate>
                            </asp:TemplatePagerField>
                        </Fields>
                    </asp:DataPager>
                    <asp:Panel ID="pnlPageSize" runat="server">
                        <asp:Label ID="lblPageSize" runat="server" Text='<%$ Resources:Global, ItemsPerPage %>' />
                        <ul>
                            <li>
                                <asp:LinkButton runat="server" ID="lbPageSize10" Text="10" CommandArgument="10" OnCommand="lbtnPageSize_Command" EnableViewState="False" />
                            </li>
                            <li>
                                <asp:LinkButton runat="server" ID="lbPageSize20" Text="20" CommandArgument="20" OnCommand="lbtnPageSize_Command" EnableViewState="False" />
                            </li>
                            <li>
                                <asp:LinkButton runat="server" ID="lbPageSize50" Text="50" CommandArgument="50" OnCommand="lbtnPageSize_Command" EnableViewState="False" />
                            </li>
                            <li>
                                <asp:LinkButton runat="server" ID="lbPageSizeAll" Text='<%$ Resources:Global, All %>' CommandArgument="-1" OnCommand="lbtnPageSize_Command" EnableViewState="False" />
                            </li>
                        </ul>
                    </asp:Panel>
                    <div class="autoRefresh">
                        <mag:AutoRefresh ID="marGrid" runat="server" Interval="30000" OnTick="marGrid_Tick" Visible="false" />
                    </div>
                </div>
            </asp:Panel>
        </div>
    </asp:View>
</asp:MultiView>