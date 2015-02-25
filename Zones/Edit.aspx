<%@ Page Title="" Language="C#" MasterPageFile="~/App_Masters/DefaultLayout.Master" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="Magelia.WebStore.Admin.Zones.Edit" %>

<asp:Content ContentPlaceHolderID="cphBarTitle" runat="server">
    <asp:Literal ID="litZone" runat="server" />
</asp:Content>
<asp:Content ContentPlaceHolderID="cphBarContent" runat="server">
    <ul>
        <li>
            <asp:HyperLink ID="hlCancel" runat="server" Text='<%$ resources:global, Cancel %>' SkinID="Minor" />
        </li>
        <li id="iSave" runat="server">
            <asp:LinkButton ID="lbtnSave" runat="server" Text='<%$ resources:global, Save %>' OnClick="lbtnSave_Click" ValidationGroup="vgShippingZone" SkinID="Major" />
        </li>
    </ul>
</asp:Content>
<asp:Content ContentPlaceHolderID="cphBody" runat="server">
    <asp:ValidationSummary runat="server" ValidationGroup="vgShippingZone" HeaderText="<%$ Resources: Global, ErrorMsgText %>" />
    <asp:CustomValidator ID="cvZoneFilterRequired" ValidationGroup="vgShippingZone" runat="server" OnServerValidate="cvZoneFilterRequired_ServerValidate" meta:resourcekey="cvZoneFilterRequired" />
    <mag:TabStrip runat="server" ValidationGroup="vgShippingZone" MultiViewID="mvGlobal">
        <TabItems>
            <mag:TabItem meta:resourceKey="mtiGeneral" Text='<%$ resources:global, General %>' />
        </TabItems>
    </mag:TabStrip>
    <div class="form">
        <asp:MultiView ID="mvGlobal" runat="server" ActiveViewIndex="0">
            <asp:View runat="server">
                <fieldset>
                    <legend>
                        <asp:Literal runat="server" Text='<%$ resources:global, Properties %>' />
                    </legend>
                    <div class="field inline">
                        <asp:Label ID="lblCode" runat="server" meta:resourcekey="lblCode" AssociatedControlID="tbxCode" />
                        <asp:TextBox ID="tbxCode" runat="server" />
                        <asp:RequiredFieldValidator ID="rfvCode" runat="server" ControlToValidate="tbxCode" ValidationGroup="vgShippingZone" meta:resourcekey="rfvCode" />
                        <asp:RegularExpressionValidator ID="revCodeLength" runat="server" ControlToValidate="tbxCode" ValidationGroup="vgShippingZone" meta:resourcekey="revCodeLength" ValidationExpression="^.{0,50}$" />
                        <asp:CustomValidator ID="cvCodeIsUnique" runat="server" ValidationGroup="vgShippingZone" ControlToValidate="tbxCode" OnServerValidate="cvCodeIsUnique_ServerValidate" meta:resourcekey="cvCodeIsUnique" />
                    </div>
                </fieldset>
                <fieldset>
                    <legend>
                        <asp:Literal ID="litFilters" runat="server" meta:resourcekey="litFilters" />
                    </legend>
                    <asp:ValidationSummary runat="server" ValidationGroup="vgZoneFilterInsert" HeaderText="<%$ Resources: Global, ErrorMsgText %>" />
                    <asp:ValidationSummary runat="server" ValidationGroup="vgZoneFilterEdit" HeaderText="<%$ Resources: Global, ErrorMsgText %>" />
                    <asp:UpdatePanel runat="server">
                        <ContentTemplate>
                            <asp:ListView ID="lvZoneFilters" runat="server" InsertItemPosition="FirstItem" DataKeyNames="ZoneFilterViewModelId" OnItemCreated="lvZoneFilters_ItemCreated" OnItemInserting="lvZoneFilters_ItemInserting"
                                OnItemDeleting="lvZoneFilters_ItemDeleting" OnItemEditing="lvZoneFilters_ItemEditing" OnItemDataBound="lvZoneFilters_ItemDataBound" OnItemCanceling="lvZoneFilters_ItemCanceling" OnItemUpdating="lvZoneFilters_ItemUpdating"
                                OnSorting="lvZoneFilters_Sorting">
                                <LayoutTemplate>
                                    <table class="gridView">
                                        <thead>
                                            <tr>
                                                <th runat="server">
                                                    <asp:LinkButton ID="lbtnContinent" CommandName="Sort" CommandArgument="Continent" runat="server" meta:resourcekey="lbtnContinent" />
                                                </th>
                                                <th runat="server">
                                                    <asp:LinkButton ID="lbtnCountry" CommandName="Sort" CommandArgument="Country" runat="server" meta:resourcekey="lbtnCountry" />
                                                </th>
                                                <th runat="server">
                                                    <asp:LinkButton ID="lbtnRegion" CommandName="Sort" CommandArgument="Region" runat="server" meta:resourcekey="lbtnRegion" />
                                                </th>
                                                <th runat="server">
                                                    <asp:LinkButton ID="lbtnRegEx" CommandName="Sort" CommandArgument="RegExp" runat="server" meta:resourcekey="lbtnRegEx" />
                                                </th>
                                                <th runat="server">
                                                    <asp:LinkButton ID="lbtnRule" CommandName="Sort" CommandArgument="Rule" runat="server" meta:resourcekey="lbtnRule" />
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
                                <InsertItemTemplate>
                                    <tr>
                                        <td>
                                            <asp:DropDownList ID="ddlContinents" runat="server" DataTextField="Name" DataValueField="ContinentId" AutoPostBack="true" OnSelectedIndexChanged="ddlContinents_SelectedIndexChanged" />
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="ddlCountries" runat="server" DataTextField="Name" DataValueField="CountryId" AutoPostBack="true" OnSelectedIndexChanged="ddlCountries_SelectedIndexChanged" Enabled="false" />
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="ddlRegions" runat="server" DataTextField="Name" DataValueField="RegionId" Enabled="false" />
                                        </td>
                                        <td>
                                            <asp:TextBox ID="tbxRegExp" runat="server" TextMode="MultiLine" />
                                            <asp:CustomValidator runat="server" ID="cvRegExpValidity" ValidationGroup="vgZoneFilterInsert" meta:resourcekey="cvRegExpValidity" OnServerValidate="cvRegExpValidity_ServerValidate" />
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="ddlRules" runat="server">
                                                <asp:ListItem />
                                                <asp:ListItem Value="False" meta:resourcekey="liInclude" />
                                                <asp:ListItem Value="True" meta:resourcekey="liExclude" />
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="rfvRules" runat="server" ControlToValidate="ddlRules" ValidationGroup="vgZoneFilterInsert" meta:resourcekey="rfvRule" />
                                        </td>
                                        <td>
                                            <ul>
                                                <li>
                                                    <asp:ImageButton runat="server" CommandName="Insert" SkinID="Add" ToolTip='<%$ resources:global,Add %>' ValidationGroup="vgZoneFilterInsert" />
                                                    <asp:CustomValidator runat="server" ID="cvZoneFilterProvidesOneCondition" ValidationGroup="vgZoneFilterInsert" OnServerValidate="cvZoneFilterProvidesOneCondition_ServerValidate" meta:resourcekey="cvZoneFilterProvidesOneCondition" />
                                                    <asp:CustomValidator runat="server" ID="cvZoneConsistancy" ValidationGroup="vgZoneFilterInsert" meta:resourcekey="cvZoneConsistancy" OnServerValidate="cvZoneConsistancy_ServerValidate" />
                                                </li>
                                            </ul>
                                        </td>
                                    </tr>
                                </InsertItemTemplate>
                                <EditItemTemplate>
                                    <tr>
                                        <td>
                                            <asp:DropDownList ID="ddlContinents" runat="server" DataTextField="Name" DataValueField="ContinentId" AutoPostBack="true" OnSelectedIndexChanged="ddlContinents_SelectedIndexChanged" />
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="ddlCountries" runat="server" DataTextField="Name" DataValueField="CountryId" AutoPostBack="true" OnSelectedIndexChanged="ddlCountries_SelectedIndexChanged" Enabled="false" />
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="ddlRegions" runat="server" DataTextField="Name" DataValueField="RegionId" Enabled="false" />
                                        </td>
                                        <td>
                                            <asp:TextBox ID="tbxRegExp" runat="server" TextMode="MultiLine" />
                                            <asp:CustomValidator runat="server" ID="cvRegExpValidity" ValidationGroup="vgZoneFilterEdit" OnServerValidate="cvRegExpValidity_ServerValidate" meta:resourcekey="cvRegExpValidity" />
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="ddlRules" runat="server">
                                                <asp:ListItem />
                                                <asp:ListItem Value="False" meta:resourcekey="liInclude" />
                                                <asp:ListItem Value="True" meta:resourcekey="liExclude" />
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="rfvRules" runat="server" ControlToValidate="ddlRules" ValidationGroup="vgZoneFilterEdit" meta:resourcekey="rfvRule" />
                                        </td>
                                        <td>
                                            <ul>
                                                <li>
                                                    <asp:ImageButton runat="server" CommandName="Update" ToolTip='<%$ resources:global,Save %>' SkinID="Save" ValidationGroup="vgZoneFilterEdit" />
                                                    <asp:CustomValidator runat="server" ID="cvZoneFilterProvidesOneCondition" ValidationGroup="vgZoneFilterEdit" OnServerValidate="cvZoneFilterProvidesOneCondition_ServerValidate" meta:resourcekey="cvZoneFilterProvidesOneCondition" />
                                                    <asp:CustomValidator runat="server" ID="cvZoneConsistancy" ValidationGroup="vgZoneFilterEdit" meta:resourcekey="cvZoneConsistancy" OnServerValidate="cvZoneConsistancy_ServerValidate" />
                                                </li>
                                                <li>
                                                    <asp:ImageButton runat="server" CommandName="Cancel" SkinID="Cancel" ToolTip='<%$ resources:global,Cancel %>' />
                                                </li>
                                            </ul>
                                        </td>
                                    </tr>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <tr>
                                        <td>
                                            <asp:Literal runat="server" Text='<%# Eval("ContinentName") %>' />
                                        </td>
                                        <td>
                                            <asp:Literal runat="server" Text='<%# Eval("CountryName") %>' />
                                        </td>
                                        <td>
                                            <asp:Literal runat="server" Text='<%# Eval("RegionName") %>' />
                                        </td>
                                        <td>
                                            <asp:Literal runat="server" Text='<%# Eval("RegExp") %>' />
                                        </td>
                                        <td>
                                            <asp:MultiView ID="mvRule" runat="server" ActiveViewIndex='<%#((ZoneFilterViewModel)Container.DataItem).Exclude ? 0:1 %>'>
                                                <asp:View ID="vExclude" runat="server">
                                                    <asp:Literal ID="litExclude" runat="server" meta:resourcekey="litExclude" />
                                                </asp:View>
                                                <asp:View ID="vInclude" runat="server">
                                                    <asp:Literal ID="litInclude" runat="server" meta:resourcekey="litInclude" />
                                                </asp:View>
                                            </asp:MultiView>
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
                            </asp:ListView>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </fieldset>
                <fieldset id="fsCatalogs" runat="server" visible="false">
                    <legend>
                        <asp:Literal ID="litCatalogs" runat="server" meta:resourcekey="litCatalogs" />
                    </legend>
                    <mag:SwapList ID="mslCatalogs" runat="server" DataTextField="Code" DataValueField="CatalogId" meta:resourcekey="mslCatalogs" />
                </fieldset>
            </asp:View>
        </asp:MultiView>
    </div>
</asp:Content>
