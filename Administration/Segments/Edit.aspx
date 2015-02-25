<%@ Page Language="C#" MasterPageFile="~/App_Masters/DefaultLayout.Master" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="Magelia.WebStore.Admin.Administration.Segments.Edit" %>

<asp:Content ID="cBarTitle" ContentPlaceHolderID="cphBarTitle" runat="server">
    <asp:Literal ID="litSegment" runat="server" meta:resourcekey="litSegment" />
</asp:Content>
<asp:Content ID="cBarContent" ContentPlaceHolderID="cphBarContent" runat="server">
    <ul>
        <li>
            <asp:HyperLink runat="server" NavigateUrl="~/Administration/Segments/List.aspx" Text='<%$ Resources:Global, Cancel %>' SkinID="Minor" />
        </li>
        <mag:FeaturePanel runat="server" Level="Edit" Tag="Li">
            <asp:LinkButton ID="lbntSave" runat="server" OnClick="lbntSave_Click" ValidationGroup="vgSegment" Text='<%$ Resources:Global, Save %>' SkinID="Major" />
        </mag:FeaturePanel>
    </ul>
</asp:Content>
<asp:Content ID="cBody" ContentPlaceHolderID="cphBody" runat="server">
    <asp:ValidationSummary runat="server" HeaderText="<%$ Resources:Global, ErrorMsgText %>" ValidationGroup="vgSegment" />
    <mag:TabStrip runat="server" ValidationGroup="vgSegment" MultiViewID="mvGlobal">
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
                        <asp:Literal runat="server" Text='<%$ resources:global,Properties %>' />
                    </legend>
                    <div class="field inline">
                        <asp:Label ID="lblCustomerSet" runat="server" AssociatedControlID="ddlCustomerSet" meta:resourcekey="lblCustomerSet" />
                        <asp:DropDownList ID="ddlCustomerSet" runat="server" DataValueField="CustomerSetId" DataTextField="Code" AppendDataBoundItems="true">
                            <asp:ListItem />
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rfvCustomerSet" ControlToValidate="ddlCustomerSet" runat="server" ValidationGroup="vgSegment" meta:resourcekey="rfvCustomerSet" />
                    </div>
                    <div class="field inline break">
                        <asp:Label ID="lblCode" runat="server" AssociatedControlID="tbxCode" meta:resourcekey="lblCode" />
                        <asp:TextBox ID="tbxCode" runat="server" />
                        <asp:RequiredFieldValidator ID="rfvCode" ControlToValidate="tbxCode" runat="server" ValidationGroup="vgSegment" meta:resourcekey="rfvCode" />
                        <asp:RegularExpressionValidator ID="revCodeLength" runat="server" ValidationExpression="^.{0,50}$" ValidationGroup="vgSegment" ControlToValidate="tbxCode" meta:resourcekey="revCodeLength" />
                        <asp:CustomValidator ID="cvCodeIsUnique" runat="server" meta:resourcekey="cvCodeIsUnique" ValidationGroup="vgSegment" ControlToValidate="tbxCode" OnServerValidate="cvCodeIsUnique_ServerValidate" />
                    </div>
                    <div class="field inline break">
                        <asp:Label ID="lblExternalCode" runat="server" AssociatedControlID="tbxExternalCode" meta:resourcekey="lblExternalCode" />
                        <asp:TextBox ID="tbxExternalCode" runat="server" />
                        <asp:RegularExpressionValidator ID="revExternalCodeLength" runat="server" ValidationExpression="^.{0,50}$" ValidationGroup="vgSegment" ControlToValidate="tbxExternalCode" meta:resourcekey="revExternalCodeLength" />
                    </div>
                    <div class="field inline break">
                        <asp:Label ID="lblDescription" runat="server" AssociatedControlID="tbxDescription" meta:resourcekey="lblDescription" />
                        <asp:TextBox ID="tbxDescription" runat="server" TextMode="MultiLine" />
                    </div>
                </fieldset>
                <fieldset id="fCustomers" runat="server">
                    <legend>
                        <asp:Literal ID="litCustomers" runat="server" meta:resourcekey="litCustomers" />
                    </legend>
                    <asp:HyperLink ID="hlCustomers" runat="server" NavigateUrl="~/Customers/List.aspx?segmentId=" meta:resourcekey="hlCustomers" />
                </fieldset>
            </asp:View>
            <asp:View runat="server">
                <mag:AssociatedContentItems ID="mAssociatedContentItems" runat="server" ValidationGroup="vgSegment" />
            </asp:View>
        </asp:MultiView>
    </div>
</asp:Content>
