<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Localization.ascx.cs"
    Inherits="Magelia.WebStore.Admin.App_UserControls.Products.Localization" %>
<div id="bLocalization" runat="server" class="localization">
    <fieldset>
        <legend>
            <asp:Literal ID="litLocalization" runat="server" meta:resourcekey="litLocalization" />
        </legend>
        <div class="field">
            <asp:Label ID="lblName" runat="server" meta:resourcekey="lblName" AssociatedControlID="tbxName" />
            <asp:TextBox ID="tbxName" runat="server" MaxLength="50" />
            <asp:RegularExpressionValidator ID="revNameLength" runat="server" ControlToValidate="tbxName" ValidationGroup="vgProduct" meta:resourcekey="revNameLength"
                ValidationExpression="^.{0,50}$" />
            <asp:CustomValidator ID="cvRequiredIfCantCreateAndDelete" runat="server" ValidationGroup="vgProduct"
                meta:resourcekey="cvRequiredIfCantCreateAndDelete" OnServerValidate="cvRequiredIfCantCreateAndDelete_ServerValidate" />
            <asp:CustomValidator ID="cvNameRequired" runat="server" ValidationGroup="vgProduct" ControlToValidate="tbxName"
                meta:resourcekey="cvNameRequired" OnServerValidate="cvNameRequired_ServerValidate" ValidateEmptyText="true" />
        </div>
        <div class="field break">
            <asp:Label ID="lblShortDescription" runat="server" meta:resourcekey="lblShortDescription"
                AssociatedControlID="tbxShortDescription" />
            <asp:TextBox ID="tbxShortDescription" runat="server" TextMode="MultiLine" CssClass="tinymce" />
        </div>
        <div class="field break">
            <asp:Label ID="lblLongDescripion" runat="server" meta:resourcekey="lblLongDescripion" AssociatedControlID="tbxLongDescription" />
            <asp:TextBox ID="tbxLongDescription" runat="server" TextMode="MultiLine" CssClass="tinymce" />
        </div>
        <div class="field break">
            <asp:Label ID="lblAddtionalDescription" runat="server" meta:resourcekey="lblAddtionalDescription"
                AssociatedControlID="tbxAdditionalDescription" />
            <asp:TextBox ID="tbxAdditionalDescription" runat="server" TextMode="MultiLine" CssClass="tinymce" />
        </div>
    </fieldset>
</div>
