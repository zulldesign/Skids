<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Menu.ascx.cs" Inherits="Magelia.WebStore.Admin.App_UserControls.Menu" %>
<%@ Import Namespace="Magelia.WebStore.Admin.App_UserControls" %>
<nav id="nMenu">
    <asp:Repeater ID="rptHeadMenu" runat="server" OnItemDataBound="rptHeadMenu_ItemDataBound"
        EnableViewState="false">
        <HeaderTemplate>
            <ul class="head ctx-bg">
        </HeaderTemplate>
        <FooterTemplate>
            <li class="toggle">
                <a href="javascript:void(0);">
                    <asp:Literal ID="litToggle" runat="server" meta:resourcekey="litToggle" />
                </a>
            </li>
            </ul>
        </FooterTemplate>
        <ItemTemplate>
            <li id="liHeadMenu" runat="server" enableviewstate="false" unselectable="on">
                <%#Container.DataItem %></li>
        </ItemTemplate>
    </asp:Repeater>
    <asp:Repeater ID="rptSubmenus" runat="server" OnItemDataBound="rptSubMenu_ItemDataBound"
        EnableViewState="false">
        <HeaderTemplate>
            <ul class="sub">
        </HeaderTemplate>
        <FooterTemplate>
            </ul>
        </FooterTemplate>
        <ItemTemplate>
            <li id="liSubMenu" runat="server" enableviewstate="false">
                <asp:Repeater runat="server" DataSource="<%#((SiteMapNode)Container.DataItem).ChildNodes %>"
                    OnItemDataBound="rptBlockMenu_ItemDataBound" EnableViewState="false">
                    <HeaderTemplate>
                        <ul>
                    </HeaderTemplate>
                    <FooterTemplate>
                        </ul>
                    </FooterTemplate>
                    <ItemTemplate>
                        <li id="liBlockMenu" runat="server" enableviewstate="false">
                            <div>
                                <span class="title">
                                    <%#Container.DataItem%>
                                </span>
                                <div class="content">
                                    <asp:MultiView runat="server" ActiveViewIndex="<%# this.GetActiveView(((SiteMapNode)Container.DataItem)) %>"
                                        EnableViewState="false">
                                        <asp:View runat="server" EnableViewState="false">
                                            <asp:ListView runat="server" DataSource="<%#((SiteMapNode)Container.DataItem).ChildNodes %>"
                                                OnItemDataBound="listViewMenu_ItemDataBound" GroupItemCount="3" EnableViewState="false">
                                                <GroupTemplate>
                                                    <ul>
                                                        <asp:PlaceHolder runat="server" ID="itemPlaceHolder" />
                                                    </ul>
                                                </GroupTemplate>
                                                <LayoutTemplate>
                                                    <asp:PlaceHolder runat="server" ID="groupPlaceholder" />
                                                </LayoutTemplate>
                                                <ItemTemplate>
                                                    <li id="liLvMenu" runat="server" enableviewstate="false">
                                                        <a class="ctx-clr <%#((SiteMapNode)Container.DataItem)["CssClass"]%>"
                                                            href='<%#this.GetTargetUrl(((SiteMapNode)Container.DataItem))%>'>
                                                            <%#Container.DataItem%>
                                                        </a>
                                                    </li>
                                                </ItemTemplate>
                                            </asp:ListView>
                                        </asp:View>
                                        <asp:View runat="server" EnableViewState="false">
                                            <a class="<%#((SiteMapNode)Container.DataItem)["CssClass"]%>" href="<%#this.GetTargetUrl(((SiteMapNode)Container.DataItem))%>">
                                                <%#Container.DataItem%>
                                            </a>
                                        </asp:View>
                                    </asp:MultiView>
                                </div>
                            </div>
                        </li>
                    </ItemTemplate>
                </asp:Repeater>
            </li>
        </ItemTemplate>
    </asp:Repeater>
</nav>
