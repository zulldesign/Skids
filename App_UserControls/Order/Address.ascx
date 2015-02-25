<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Address.ascx.cs" Inherits="Magelia.WebStore.Admin.App_UserControls.Order.Address" %>
<div>
    <div class="field inline">
        <asp:Label ID="lblEmail" runat="server" meta:resourcekey="lblEmail" AssociatedControlID="tbxEmail" />
        <asp:TextBox ID="tbxEmail" runat="server" MaxLength="200" />
        <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="tbxEmail" meta:resourcekey="rfvEmail" Enabled="false" />
        <asp:RegularExpressionValidator ID="revEmailLength" runat="server" ControlToValidate="tbxEmail" meta:resourcekey="revEmailLength" ValidationExpression="^.{0,200}$" />
        <asp:RegularExpressionValidator ID="revEmailPatern" runat="server" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="tbxEmail"
            meta:resourcekey="revEmailPatern" />
    </div>
    <div class="field inline break">
        <asp:Label ID="lblCompany" runat="server" meta:resourcekey="lblCompany" AssociatedControlID="tbxCompany" />
        <asp:TextBox ID="tbxCompany" runat="server" />
        <asp:RegularExpressionValidator ID="revCompanyLength" runat="server" ControlToValidate="tbxCompany" meta:resourcekey="revCompanyLength" ValidationExpression="^.{0,50}$" />
    </div>
    <div class="field inline break">
        <asp:Label ID="lblFirstName" runat="server" meta:resourcekey="lblFirstName" AssociatedControlID="tbxFirstName" />
        <asp:TextBox ID="tbxFirstName" runat="server" />
        <asp:RequiredFieldValidator ID="rfvFirstName" runat="server" ControlToValidate="tbxFirstName" meta:resourcekey="rfvFirstName" />
        <asp:RegularExpressionValidator ID="revFirstNameLength" runat="server" ControlToValidate="tbxFirstName" meta:resourcekey="revFirstNameLength" ValidationExpression="^.{0,50}$" />
    </div>
    <div class="field inline break">
        <asp:Label ID="lblMiddleName" runat="server" meta:resourcekey="lblMiddleName" AssociatedControlID="tbxMiddleName" />
        <asp:TextBox ID="tbxMiddleName" runat="server" />
        <asp:RegularExpressionValidator ID="revMiddleNameLength" runat="server" ControlToValidate="tbxMiddleName" meta:resourcekey="revMiddleNameLength" ValidationExpression="^.{0,50}$" />
    </div>
    <div class="field inline break">
        <asp:Label ID="lblLastName" runat="server" meta:resourcekey="lblLastName" AssociatedControlID="tbxLastName" />
        <asp:TextBox ID="tbxLastName" runat="server" />
        <asp:RequiredFieldValidator ID="rfvLastName" runat="server" ControlToValidate="tbxLastName" meta:resourcekey="rfvLastName" />
        <asp:RegularExpressionValidator ID="revLastNameLength" runat="server" ControlToValidate="tbxLastName" meta:resourcekey="revLastNameLength" ValidationExpression="^.{0,50}$" />
    </div>
    <div class="field inline break">
        <asp:Label ID="lblLine1" runat="server" meta:resourcekey="lblLine1" AssociatedControlID="tbxLine1" />
        <asp:TextBox ID="tbxLine1" runat="server" />
        <asp:RequiredFieldValidator ID="rfvLine1" runat="server" ControlToValidate="tbxLine1" meta:resourcekey="rfvLine1" />
        <asp:RegularExpressionValidator ID="revLine1Length" runat="server" ControlToValidate="tbxLine1"
            meta:resourcekey="revLine1Length" ValidationExpression="^.{0,50}$" />
    </div>
    <div class="field inline break">
        <asp:Label ID="lblLine2" runat="server" meta:resourcekey="lblLine2" AssociatedControlID="tbxLine2" />
        <asp:TextBox ID="tbxLine2" runat="server" />
        <asp:RegularExpressionValidator ID="revLine2Length" runat="server" ControlToValidate="tbxLine2" meta:resourcekey="revLine2Length" ValidationExpression="^.{0,50}$" />
    </div>
    <div class="field inline break">
        <asp:Label ID="lblLine3" runat="server" meta:resourcekey="lblLine3" AssociatedControlID="tbxLine3" />
        <asp:TextBox ID="tbxLine3" runat="server" />
        <asp:RegularExpressionValidator ID="revLine3Length" runat="server" ControlToValidate="tbxLine3"
            meta:resourcekey="revLine3Length" ValidationExpression="^.{0,50}$" />
    </div>
    <div class="field inline break">
        <asp:Label ID="lblDigiCode" runat="server" meta:resourcekey="lblDigiCode" AssociatedControlID="tbxDigiCode" />
        <asp:TextBox ID="tbxDigiCode" runat="server" />
        <asp:RegularExpressionValidator ID="revDigiCodeLength" runat="server" ControlToValidate="tbxDigiCode" meta:resourcekey="revDigiCodeLength" ValidationExpression="^.{0,50}$" />
    </div>
    <div class="field inline break">
        <asp:Label ID="lblFloor" runat="server" meta:resourcekey="lblFloor" AssociatedControlID="tbxFloor" />
        <asp:TextBox ID="tbxFloor" runat="server" />
        <asp:RegularExpressionValidator ID="revFloorLength" runat="server" ControlToValidate="tbxFloor" meta:resourcekey="revFloorLength" ValidationExpression="^.{0,50}$" />
    </div>
    <div class="field inline break">
        <asp:Label ID="lblZipCode" runat="server" meta:resourcekey="lblZipCode" AssociatedControlID="tbxZipCode" />
        <asp:TextBox ID="tbxZipCode" runat="server" />
        <asp:RegularExpressionValidator ID="revZipCodeLength" runat="server" ControlToValidate="tbxZipCode" meta:resourcekey="revZipCodeLength" ValidationExpression="^.{0,20}$" />
    </div>
    <div class="field inline break">
        <asp:Label ID="lblCity" runat="server" meta:resourcekey="lblCity" AssociatedControlID="tbxCity" />
        <asp:TextBox ID="tbxCity" runat="server" />
        <asp:RequiredFieldValidator ID="rfvCity" runat="server" ControlToValidate="tbxCity" meta:resourcekey="rfvCity" />
        <asp:RegularExpressionValidator ID="revCityLength" runat="server" ControlToValidate="tbxCity" meta:resourcekey="revCityLength" ValidationExpression="^.{0,50}$" />
    </div>
    <div class="field inline break">
        <asp:Label ID="lblCountry" runat="server" meta:resourcekey="lblCountry" AssociatedControlID="ddlCountries" />
        <asp:DropDownList ID="ddlCountries" runat="server" DataTextField="Name" DataValueField="CountryId" AutoPostBack="true" OnSelectedIndexChanged="ddlCountries_SelectedIndexChanged" />
    </div>
    <div id="bRegion" runat="server" class="field inline break">
        <asp:Label ID="lblRegion" runat="server" meta:resourcekey="lblRegion" AssociatedControlID="ddlRegions" />
        <asp:DropDownList ID="ddlRegions" runat="server" DataTextField="Name" DataValueField="RegionId" />
    </div>
    <div class="field inline break">
        <asp:Label ID="lblPhoneNumber" runat="server" meta:resourcekey="lblPhoneNumber" AssociatedControlID="tbxPhoneNumber" />
        <asp:TextBox ID="tbxPhoneNumber" runat="server" />
        <asp:RegularExpressionValidator ID="revPhoneNumberLength" runat="server" ControlToValidate="tbxPhoneNumber" meta:resourcekey="revPhoneNumberLength" ValidationExpression="^.{0,50}$" />
    </div>
    <div class="field inline break">
        <asp:Label ID="lblMobileNumber" runat="server" meta:resourcekey="lblMobileNumber"
            AssociatedControlID="tbxMobileNumber" />
        <asp:TextBox ID="tbxMobileNumber" runat="server" />
        <asp:RegularExpressionValidator ID="revMobileNumberLength" runat="server" ControlToValidate="tbxMobileNumber" meta:resourcekey="revMobileNumberLength"
            ValidationExpression="^.{0,50}$" />
    </div>
    <div class="field inline break">
        <asp:Label ID="lblFaxNumber" runat="server" meta:resourcekey="lblFaxNumber" AssociatedControlID="tbxFaxNumber" />
        <asp:TextBox ID="tbxFaxNumber" runat="server" />
        <asp:RegularExpressionValidator ID="revFaxNumberLength" runat="server" ControlToValidate="tbxFaxNumber" meta:resourcekey="revFaxNumberLength" ValidationExpression="^.{0,50}$" />
    </div>
    <div class="field break">
        <asp:Label ID="lblComments" runat="server" meta:resourcekey="lblComments" />
        <mag:CommentsEditor ID="mceAddress" runat="server" />
    </div>
    <div class="field break">
        <asp:Label ID="lblAdditionalData" runat="server" meta:resourcekey="lblAdditionalData" />
        <mag:AdditionalDataEditor ID="madeAddress" runat="server" />
    </div>
    <div id="bDifferentShippinAddress" runat="server" class="field inline break">
        <asp:Label ID="lblDifferentShippingAddress" runat="server" meta:resourcekey="lblDifferentShippingAddress" AssociatedControlID="cbxDifferentShippingAddress" />
        <asp:CheckBox ID="cbxDifferentShippingAddress" runat="server" AutoPostBack="true" />
    </div>
</div>
