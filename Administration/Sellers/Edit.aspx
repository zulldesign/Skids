<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/App_Masters/DefaultLayout.Master" CodeBehind="Edit.aspx.cs" Inherits="Magelia.WebStore.Admin.Administration.Sellers.Edit" %>
<%@ Register TagPrefix="mag" TagName="WorkerComponentConfiguration" Src="~/App_UserControls/WorkerComponent/WorkerComponentConfiguration.ascx" %>

<asp:Content ContentPlaceHolderID="cphBarTitle" runat="server">
    <asp:Literal runat="server" meta:resourcekey="litSeller" />
</asp:Content>
<asp:Content ContentPlaceHolderID="cphBarContent" runat="server">
    <ul>
        <li>
            <asp:LinkButton runat="server" SkinID="Major" ValidationGroup="vgSeller" ID="lbtnSave" Text='<%$ Resources:Global, Save %>' OnClick="lbtnSave_Click" />
        </li>
    </ul>
</asp:Content>
<asp:Content ContentPlaceHolderID="cphBody" runat="server">
    <mag:TabStrip runat="server" MultiViewID="mvSeller">
        <TabItems>
            <mag:TabItem meta:resourcekey="mtiTechnical" ViewIndex="0" />
            <mag:TabItem meta:resourceKey="mtiConfiguration" ViewIndex="1" />
            <mag:TabItem meta:resourcekey="mtiFunctional" ViewIndex="2" />
        </TabItems>
    </mag:TabStrip>
    <div class="form">
        <asp:ValidationSummary ID="vsSeller" runat="server" HeaderText="<%$ Resources:Global, ErrorMsgText %>" ValidationGroup="vgSeller" />
        <asp:MultiView ID="mvSeller" runat="server" ActiveViewIndex="0">
            <asp:View ID="vTechnical" runat="server">
                <script type="text/javascript">
                    Magelia.WebStore.HelpManager.Instance.setSubPath('technical');
                </script>
                <fieldset>
                    <legend>
                        <asp:Literal runat="server" Text='<%$ resources:global, Properties %>' /></legend>
                    <div class="field">
                        <asp:Label meta:resourcekey="lblCode" AssociatedControlID="tbxCode" runat="server" />
                        <asp:TextBox ID="tbxCode" runat="server" ValidationGroup="vgSeller" />
                        <asp:RequiredFieldValidator ID="rfvCode" ControlToValidate="tbxCode" runat="server" meta:resourcekey="rfvCode" ValidationGroup="vgSeller" />
                        <asp:RegularExpressionValidator ID="revCodeLength" runat="server" ValidationExpression="^.{0,50}$" ValidationGroup="vgSeller" meta:resourcekey="revCodeLength" ControlToValidate="tbxCode" />
                        <asp:CustomValidator ID="cvCode" runat="server" ControlToValidate="tbxCode" OnServerValidate="cvCode_ServerValidate" ValidationGroup="vgSeller" meta:resourcekey="cvCode" />
                    </div>
                    <div class="field">
                        <asp:Label runat="server" AssociatedControlID="cbIsActive" meta:resourcekey="lblIsActive" />
                        <asp:CheckBox ID="cbIsActive" runat="server" Checked="true" />
                    </div>
                    <div class="field">
                        <asp:Label meta:resourceKey="lblSellerId" AssociatedControlID="tbxSellerId" runat="server" />
                        <asp:TextBox runat="server" ID="tbxSellerId" ReadOnly="true" />
                        <asp:CustomValidator ID="cvSellerId" runat="server" ControlToValidate="tbxSellerId" OnServerValidate="cvSellerId_ServerValidate" ValidationGroup="vgSeller" meta:resourcekey="cvSellerId" />
                    </div>
                </fieldset>
                <fieldset>
                    <legend>
                        <asp:Literal ID="litSettings" runat="server" meta:resourcekey="litSettings" />
                    </legend>
                    <mag:DynamicControl runat="server" ID="dcSettings" />
                </fieldset>
                <fieldset>
                    <legend>
                        <asp:Literal ID="litCultures" runat="server" meta:resourcekey="litCultures" />
                    </legend>
                    <p>
                        <asp:Literal ID="litCulturesInfo" runat="server" meta:resourcekey="litCulturesInfo" />
                    </p>
                    <mag:swaplist runat="server" id="slCultures" validationgroup="vgSeller" datatextfield="Name" datavaluefield="CultureId" onItemsRemoved="slCultures_ItemsRemoved" meta:resourcekey="slCultures" />
                    <asp:CustomValidator ID="cvCulturesAsscociated" runat="server" ValidationGroup="vgSeller" OnServerValidate="cvCulturesAsscociated_ServerValidate" meta:resourcekey="cvCulturesAsscociated" />
                </fieldset>
            </asp:View>
            <asp:View ID="vConfiguration" runat="server">
                <script type="text/javascript">
                    Magelia.WebStore.HelpManager.Instance.setSubPath('technical.configuration');
                </script>
                <mag:WorkerComponentConfiguration id="ucWorkerComponentConfiguration" runat="server" Scope="Seller" ValidationGroup="vgSeller" />
            </asp:View>
            <asp:View ID="vFunctional" runat="server">
                <script type="text/javascript">
                    Magelia.WebStore.HelpManager.Instance.setSubPath('technical.functional');
                    $(document).ready(
                        function () {
                            $('#<%=this.lbStores.ClientID%>,#<%=this.lbWarehouses.ClientID%>,#<%=this.lbCatalogs.ClientID%>,#<%=this.lbProductTypes.ClientID%>').bind('click, change', function () { $(this).val(''); return false; });
                        }
                    );
                </script>

                <fieldset>
                    <legend>
                        <asp:Literal runat="server" meta:resourcekey="litLegendCollections" />
                    </legend>
                    <div class="field">
                        <asp:Label runat="server" meta:resourcekey="lblStores" AssociatedControlID="lbStores" />
                        <asp:ListBox ID="lbStores" runat="server" Enabled="false" DataTextField="Code" DataValueField="StoreId" />
                    </div>
                    <div class="field">
                        <asp:Label runat="server" meta:resourcekey="lblWarehouses" AssociatedControlID="lbWarehouses" />
                        <asp:ListBox ID="lbWarehouses" runat="server" Enabled="false" DataTextField="Code" DataValueField="WarehouseId" />
                    </div>
                    <div class="field break">
                        <asp:Label runat="server" meta:resourcekey="lblCatalogs" AssociatedControlID="lbCatalogs" />
                        <asp:ListBox ID="lbCatalogs" runat="server" Enabled="false" DataTextField="Code" DataValueField="CatalogId" />
                    </div>
                    <div class="field">
                        <asp:Label runat="server" meta:resourcekey="lblProductTypes" AssociatedControlID="lbProductTypes" />
                        <asp:ListBox ID="lbProductTypes" runat="server" Enabled="false" DataTextField="Code" DataValueField="ProductTypeId" />
                    </div>
                </fieldset>
            </asp:View>
        </asp:MultiView>
    </div>
</asp:Content>
