<%@ Page Title="" Language="C#" MasterPageFile="~/App_Masters/DefaultLayout.Master"
    AutoEventWireup="true" CodeBehind="List.aspx.cs" Inherits="Magelia.WebStore.Admin.Shipping.Rates.List" %>

<asp:Content ContentPlaceHolderID="cphBarTitle" runat="server">
    <asp:Literal ID="litShippingRatesTitle" runat="server" meta:resourcekey="litShippingRatesTitle" />
</asp:Content>
<asp:Content ContentPlaceHolderID="cphBarContent" runat="server">
    <ul>
        <mag:FeaturePanel runat="server" Level="CreateAndDelete" Tag="Li">
            <asp:HyperLink runat="server" Text='<%$ resources:global, AddNew %>' NavigateUrl="~/Shipping/Rates/Edit.aspx"
                SkinID="Major" />
        </mag:FeaturePanel>
    </ul>
</asp:Content>
<asp:Content ContentPlaceHolderID="cphBody" runat="server">
    <mag:SearchPanel runat="server" DefaultButton="lbtnSearch">
        <div class="field">
            <asp:Label ID="lblCode" runat="server" meta:resourcekey="lblCode" AssociatedControlID="tbxCode" />
            <asp:TextBox ID="tbxCode" runat="server" />
        </div>
        <div class="field">
            <asp:Label ID="lblCarrier" runat="server" meta:resourcekey="lblCarrier" AssociatedControlID="ddlCarriers" />
            <asp:DropDownList ID="ddlCarriers" runat="server" DataTextField="Code" DataValueField="CarrierId"
                AppendDataBoundItems="true">
                <asp:ListItem />
            </asp:DropDownList>
        </div>
        <div class="field">
            <asp:Label ID="lblWarehouse" runat="server" meta:resourcekey="lblWarehouse" AssociatedControlID="ddlWarehouse" />
            <asp:DropDownList ID="ddlWarehouse" runat="server" DataTextField="Code" DataValueField="WarehouseId"
                AppendDataBoundItems="true">
                <asp:ListItem />
            </asp:DropDownList>
        </div>
        <div class="field">
            <asp:Label ID="lblShippingZone" runat="server" meta:resourcekey="lblShippingZone" AssociatedControlID="ddlShippingZones" />
            <asp:DropDownList ID="ddlShippingZones" runat="server" DataTextField="Code" DataValueField="GeographicZoneId" AppendDataBoundItems="true">
                <asp:ListItem />
            </asp:DropDownList>
        </div>
        <div class="field">
            <asp:Label ID="lblCriteria" runat="server" meta:resourcekey="lblCriteria" AssociatedControlID="ddlCriterias" />
            <asp:DropDownList ID="ddlCriterias" runat="server" DataValueField="Key" DataTextField="Value"/>
        </div>
        <div class="field">
            <asp:Label runat="server" meta:resourcekey="lblStore" AssociatedControlID="ddlStores" />
            <asp:DropDownList ID="ddlStores" runat="server" DataTextField="Code" DataValueField="StoreId" AppendDataBoundItems="true">
                <asp:ListItem />
            </asp:DropDownList>
        </div>
        <div class="field">
            <asp:Label ID="lblDescription" runat="server" meta:resourcekey="lblDescription" AssociatedControlID="tbxDescription" />
            <asp:TextBox ID="tbxDescription" runat="server" />
        </div>
        <div class="buttons">
            <ul>
                <li>
                    <asp:LinkButton ID="lbtnReset" runat="server" Text='<%$ resources:global, Reset %>'
                        SkinID="Minor" OnClick="lbtnReset_Click" />
                </li>
                <li>
                    <asp:LinkButton ID="lbtnSearch" runat="server" Text='<%$ resources:global, Search %>'
                        SkinID="Major" OnClick="lbtnSearch_Click" />
                </li>
            </ul>
        </div>
    </mag:SearchPanel>
    <mag:Gridview ID="mgvShippingRates" runat="server" DataKeyNames="ShippingRateId"
        OnCommand="mgvShippingRates_Command" ShowSelectionColumn="true">
        <commandbuttons>
            <mag:CommandButton runat="server" Text='<%$ resources:global, Delete %>' CommandName="DeleteShippingRates"
                OnClientClick='<%$ resources:global, ClientClickConfirmDeletion %>' />
        </commandbuttons>
        <columns>
            <mag:GridViewColumn AllowSorting="true" runat="server" SortExpression="Code" meta:resourcekey="mgvcCode">
                <celltemplate>
                    <asp:Literal runat="server" Text='<%# Eval("Code") %>' />
                </celltemplate>
            </mag:GridViewColumn>
            <mag:GridViewColumn AllowSorting="true" runat="server" SortExpression="CarrierCode"
                meta:resourcekey="mgvcCarrier">
                <celltemplate>
                    <asp:Literal runat="server" Text='<%# Eval("CarrierCode") %>' />
                </celltemplate>
            </mag:GridViewColumn>
            <mag:GridViewColumn AllowSorting="true" runat="server" SortExpression="WarehouseCode"
                meta:resourcekey="mgvcWarehouse">
                <celltemplate>
                    <asp:Literal  runat="server" Text='<%# Eval("WarehouseCode") %>' />
                </celltemplate>
            </mag:GridViewColumn>
            <mag:GridViewColumn AllowSorting="true" runat="server" SortExpression="ShippingZoneCode"
                meta:resourcekey="mgvcShippingZone">
                <celltemplate>
                    <asp:Literal runat="server" Text='<%# Eval("ShippingZoneCode") %>' />
                </celltemplate>
            </mag:GridViewColumn>
            <mag:GridViewColumn AllowSorting="true" runat="server" SortExpression="Criteria"
                meta:resourcekey="mgvcCriteria">
                <celltemplate>
                    <asp:Label runat="server" Text='<%# this.GetCriteriaDisplayName(((ShippingRateViewModel)Container.DataItem).Criteria) %>' />
                </celltemplate>
            </mag:GridViewColumn>
            <mag:GridViewColumn AllowSorting="true" runat="server" SortExpression="Description" meta:resourcekey="mgvcStores">
                <cellTemplate>
                    <asp:Literal runat="server" Text='<%# String.Join(", ",((ShippingRateViewModel)Container.DataItem).Stores.ToArray()) %>' />
                </cellTemplate>
            </mag:GridViewColumn>
            <mag:GridViewColumn AllowSorting="true" runat="server" SortExpression="Description" meta:resourcekey="mgvcDescription">
                <celltemplate>
                    <asp:Literal runat="server" Text='<%# ((ShippingRateViewModel)Container.DataItem).Description == null ? String.Empty : ((ShippingRateViewModel)Container.DataItem).Description.Replace(Environment.NewLine, "<br/>") %>' />
                </celltemplate>
            </mag:GridViewColumn>
            <mag:GridViewColumn AllowSorting="false" runat="server" Name='<%$ resources:global, Action %>'>
                <celltemplate>
                    <ul>
                        <li>
                            <asp:ImageButton runat="server" SkinID="Edit" ToolTip='<%$ resources:global,Edit %>' CommandName="EditShippingRate" />
                        </li>
                        <mag:FeaturePanel runat="server" Level="CreateAndDelete" Tag="Li">
                            <asp:ImageButton  runat="server" CommandName="DeleteShippingRates" SkinID="Delete" ToolTip='<%$ resources:global,Delete %>' OnClientClick='<%$ resources:global, ClientClickConfirmDeletion %>'  />
                        </mag:FeaturePanel>
                    </ul>
                </celltemplate>
            </mag:GridViewColumn>
        </columns>
    </mag:Gridview>
</asp:Content>
