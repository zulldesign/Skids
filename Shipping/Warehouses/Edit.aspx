<%@ Page Title="" Language="C#" MasterPageFile="~/App_Masters/DefaultLayout.Master" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="Magelia.WebStore.Admin.Shipping.Warehouse.Edit" %>

<asp:Content ContentPlaceHolderID="cphBarTitle" runat="server">
    <asp:Literal ID="litWarehouse" runat="server" meta:resourcekey="litWarehouse" />
</asp:Content>
<asp:Content ContentPlaceHolderID="cphBarContent" runat="server">
    <ul>
        <li id="iSave" runat="server">
            <asp:LinkButton ID="lbtnSave" runat="server" OnClick="lbtnSave_Click" Text='<%$ resources:global, Save %>' SkinID="Major" ValidationGroup="vgWarehouse" />
        </li>
    </ul>
</asp:Content>
<asp:Content ContentPlaceHolderID="cphBody" runat="server">
    <asp:ValidationSummary runat="server" ValidationGroup="vgWarehouse" HeaderText="<%$ Resources: Global, ErrorMsgText %>" />
    <mag:TabStrip runat="server" ValidationGroup="vgWarehouse" MultiViewID="mvGlobal">
        <TabItems>
            <mag:TabItem meta:resourceKey="mtiGeneral" Text='<%$ resources:global, General %>' />
            <mag:TabItem meta:resourceKey="mtiContentItems" Text='<%$ resources:global, ContentItems %>' />
        </TabItems>
    </mag:TabStrip>
    <div class="form">
        <asp:MultiView ID="mvGlobal" runat="server" ActiveViewIndex="0">
            <asp:View runat="server">
                <fieldset>
                    <legend>
                        <asp:Literal runat="server" Text='<%$ resources:global, Properties %>' />
                    </legend>
                    <div class="field">
                        <asp:Label ID="lblCode" runat="server" AssociatedControlID="tbxCode" meta:resourcekey="lblCode" />
                        <asp:TextBox ID="tbxCode" runat="server" />
                        <asp:RequiredFieldValidator ID="rfvCode" runat="server" ControlToValidate="tbxCode" ValidationGroup="vgWarehouse" meta:resourcekey="rfvCode" />
                        <asp:RegularExpressionValidator ID="revCodeLength" runat="server" ControlToValidate="tbxCode" ValidationGroup="vgWarehouse" ValidationExpression="^.{0,50}$" meta:resourcekey="revCodeLength" />
                        <asp:CustomValidator ID="cvCodeIsUnique" runat="server" ValidationGroup="vgWarehouse" ControlToValidate="tbxCode" OnServerValidate="cvCodeIsUnique_ServerValidate" meta:resourcekey="cvCodeIsUnique" />
                    </div>
                    <div id="bTaxZones" runat="server" class="field">
                        <asp:Label ID="lblTaxZone" runat="server" AssociatedControlID="ddlTaxZones" meta:resourcekey="lblTaxZone" />
                        <asp:DropDownList ID="ddlTaxZones" runat="server" AppendDataBoundItems="true" DataTextField="Code" DataValueField="GeographicZoneId">
                            <asp:ListItem />
                        </asp:DropDownList>
                    </div>
                </fieldset>
                <fieldset>
                    <legend>
                        <asp:Literal runat="server" Text='<%$ resources:global, Localizations %>' />
                    </legend>
                    <mag:Localizer ID="mlWarehouse" runat="server">
                        <localizablefields>
                            <mag:LocalizableField Editor="SingleLineString" PropertyName="Name" meta:resourcekey="mlfName" />
                        </localizablefields>
                    </mag:Localizer>
                </fieldset>
            </asp:View>
            <asp:View runat="server">
                <mag:AssociatedContentItems ID="mAssociatedContentItems" runat="server" ValidationGroup="vgWarehouse" />
            </asp:View>
        </asp:MultiView>
    </div>
</asp:Content>
