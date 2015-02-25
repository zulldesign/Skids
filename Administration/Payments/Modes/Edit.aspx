<%@ Page Title="" Language="C#" MasterPageFile="~/App_Masters/DefaultLayout.Master" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="Magelia.WebStore.Admin.Administration.Payments.Modes.Edit" %>

<asp:Content ContentPlaceHolderID="cphBarTitle" runat="server">
    <asp:Literal ID="litPaymentMode" runat="server" meta:resourcekey="litPaymentMode" />
</asp:Content>
<asp:Content ContentPlaceHolderID="cphBarContent" runat="server">
    <ul>
        <li>
            <asp:HyperLink runat="server" Text='<%$ resources:global, Cancel %>' NavigateUrl="~/Administration/Payments/Modes/List.aspx" SkinID="Minor" />
        </li>
        <li id="iSave" runat="server">
            <asp:LinkButton ID="lbtnSave" runat="server" Text='<%$ resources:global, Save %>' SkinID="Major" ValidationGroup="vgPaymentMode" OnClick="lbtnSave_Click" />
        </li>
    </ul>
</asp:Content>
<asp:Content ContentPlaceHolderID="cphBody" runat="server">
    <asp:ValidationSummary runat="server" ValidationGroup="vgPaymentMode" HeaderText='<%$ Resources: Global, ErrorMsgText %>' />
    <div class="form">
        <fieldset>
            <legend>
                <asp:Literal runat="server" Text='<%$ resources:global, Properties %>' />
            </legend>
            <div class="field inline">
                <asp:Label ID="lblCode" runat="server" meta:resourcekey="lblCode" AssociatedControlID="tbxCode" />
                <asp:TextBox ID="tbxCode" runat="server" />
                <asp:RequiredFieldValidator ID="rvfCode" runat="server" meta:resourcekey="rfvCode" ValidationGroup="vgPaymentMode" ControlToValidate="tbxCode" />
                <asp:RegularExpressionValidator ID="revCodeLength" runat="server" ValidationGroup="vgPaymentMode" ControlToValidate="tbxCode" ValidationExpression="^.{0,50}$" meta:resourcekey="revCodeLength" />
                <asp:CustomValidator ID="cvCodeIsUnique" runat="server" ValidationGroup="vgPaymentMode" ControlToValidate="tbxCode" meta:resourcekey="cvCodeIsUnique" OnServerValidate="cvCodeIsUnique_ServerValidate" />
            </div>
        </fieldset>
        <fieldset>
            <legend><asp:Literal runat="server" Text='<%$ resources:global, Localizations %>' /></legend>
            <mag:Localizer ID="mlPaymentMode" runat="server">
                <LocalizableFields>
                    <mag:LocalizableField PropertyName="Name" Editor="SingleLineString" MaxLength="50" meta:resourcekey="mlfName" />
                </LocalizableFields>
            </mag:Localizer>
        </fieldset>
    </div>
</asp:Content>
