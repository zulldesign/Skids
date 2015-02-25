<%@ Page Title="" Language="C#" MasterPageFile="~/App_Masters/DefaultLayout.Master" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="Magelia.WebStore.Admin.Customers.Edit" %>

<asp:Content ContentPlaceHolderID="cphBarTitle" runat="server">
    <asp:Literal ID="litCustomer" runat="server" meta:resourcekey="litCustomer" />
</asp:Content>
<asp:Content ContentPlaceHolderID="cphBarContent" runat="server">
    <ul>
        <li>
            <asp:HyperLink runat="server" NavigateUrl="~/Customers/List.aspx" Text='<%$ resources:global,Cancel %>' SkinID="Minor" />
        </li>
        <mag:FeaturePanel runat="server" Tag="Li" Level="Edit">
            <asp:LinkButton ID="lbtnSave" runat="server" Text='<%$ resources:global,Save %>' SkinID="Major" ValidationGroup="vgCustomer" OnClick="lbtnSave_Click" />
        </mag:FeaturePanel>
    </ul>
</asp:Content>
<asp:Content ContentPlaceHolderID="cphBody" runat="server">
    <asp:ValidationSummary runat="server" HeaderText="<%$ Resources:Global, ErrorMsgText %>" ValidationGroup="vgCustomer" />
    <asp:ValidationSummary runat="server" HeaderText="<%$ Resources:Global, ErrorMsgText %>" ValidationGroup="vgAddress" />
    <mag:TabStrip runat="server" ValidationGroup="vgCustomer" MultiViewID="mvCustomer">
        <TabItems>
            <mag:TabItem meta:resourcekey="mtiCustomerInfo" />
        </TabItems>
    </mag:TabStrip>
    <div class="form">
        <asp:MultiView ID="mvCustomer" runat="server" ActiveViewIndex="0">
            <asp:View runat="server">
                <fieldset>
                    <legend>
                        <asp:Literal ID="litAccount" runat="server" meta:resourcekey="litAccount" />
                    </legend>
                    <div class="field">
                        <asp:Label ID="lblUserName" runat="server" meta:resourcekey="lblUserName" AssociatedControlID="tbxUserName" />
                        <asp:TextBox ID="tbxUserName" runat="server" ReadOnly="true" />
                    </div>
                    <div class="field">
                        <asp:Label ID="lblFirstName" runat="server" meta:resourcekey="lblFirstName" AssociatedControlID="tbxFirstName" />
                        <asp:TextBox ID="tbxFirstName" runat="server" />
                        <asp:RequiredFieldValidator ID="rfvFirstName" runat="server" meta:resourcekey="rfvFirstName" ControlToValidate="tbxFirstName" ValidationGroup="vgCustomer" />
                        <asp:RegularExpressionValidator ID="cvFirstNameLength" runat="server" ValidationExpression="^.{0,50}$" ValidationGroup="vgCustomer" ControlToValidate="tbxFirstName" meta:resourcekey="cvFirstNameLength" />
                    </div>
                    <div class="field">
                        <asp:Label ID="lblMiddleName" runat="server" meta:resourcekey="lblMiddleName" AssociatedControlID="tbxMiddleName" />
                        <asp:TextBox ID="tbxMiddleName" runat="server" />
                        <asp:RegularExpressionValidator ID="revMiddleNameLength" runat="server" ValidationExpression="^.{0,50}$" ValidationGroup="vgCustomer" ControlToValidate="tbxMiddleName" meta:resourcekey="revMiddleNameLength" />
                    </div>
                    <div class="field">
                        <asp:Label ID="lblLastName" runat="server" meta:resourcekey="lblLastName" AssociatedControlID="tbxLastName" />
                        <asp:TextBox ID="tbxLastName" runat="server" />
                        <asp:RequiredFieldValidator ID="rfvLastName" runat="server" meta:resourcekey="rfvLastName" ControlToValidate="tbxLastName" ValidationGroup="vgCustomer" />
                        <asp:RegularExpressionValidator ID="revLastNameLength" runat="server" ValidationExpression="^.{0,50}$" ValidationGroup="vgCustomer" ControlToValidate="tbxLastName" meta:resourcekey="revLastNameLength" />
                    </div>
                    <div class="field">
                        <asp:Label ID="lblEmail" runat="server" meta:resourcekey="lblEmail" AssociatedControlID="tbxEmail" />
                        <asp:TextBox ID="tbxEmail" runat="server" MaxLength="200" />
                        <asp:RequiredFieldValidator ID="rfvEmail" runat="server" meta:resourcekey="rfvEmail" ControlToValidate="tbxEmail" ValidationGroup="vgCustomer" />
                        <asp:RegularExpressionValidator ID="revEmailLength" runat="server" ValidationExpression="^.{0,200}$" ValidationGroup="vgCustomer" ControlToValidate="tbxEmail" meta:resourcekey="revEmailLength" />
                        <asp:RegularExpressionValidator ID="revEmailPatern" runat="server" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="vgCustomer" ControlToValidate="tbxEmail" meta:resourcekey="revEmailPatern" />
                    </div>
                    <div class="field">
                        <asp:Label ID="lblIsApproved" runat="server" meta:resourcekey="lblIsApproved" AssociatedControlID="cbxIsApproved" />
                        <asp:CheckBox ID="cbxIsApproved" runat="server" />
                    </div>
                    <div class="field">
                        <asp:Label ID="lblIsLockedOut" runat="server" meta:resourcekey="lblIsLockedOut" AssociatedControlID="cbxIsLockedOut" />
                        <asp:CheckBox ID="cbxIsLockedOut" runat="server" />
                    </div>
                </fieldset>
                <fieldset>
                    <legend>
                        <asp:Literal ID="litAddresses" runat="server" meta:resourcekey="litAddresses" />
                        <asp:DropDownList ID="ddlAddresses" runat="server" AppendDataBoundItems="false" AutoPostBack="true" ValidationGroup="vgAddress" CausesValidation="true" DataValueField="AddressId" DataTextField="Name" OnSelectedIndexChanged="ddlAddresses_SelectedIndexChanged" />
                    </legend>
                    <asp:MultiView ID="mvAddress" runat="server" ActiveViewIndex="0">
                        <asp:View ID="vSelectAddress" runat="server">
                            <p>
                                <asp:Literal ID="litSelectAddress" runat="server" meta:resourcekey="litSelectAddress" />
                            </p>
                        </asp:View>
                        <asp:View ID="vAddress" runat="server">
                            <div class="field inline">
                                <asp:Label ID="lblAddressName" runat="server" AssociatedControlID="tbxAddressName" meta:resourcekey="lblAddressName" />
                                <asp:TextBox ID="tbxAddressName" runat="server" />
                                <asp:RequiredFieldValidator ID="rfvAddressName" runat="server" meta:resourcekey="rfvAddressName" ControlToValidate="tbxAddressName" ValidationGroup="vgAddress" />
                                <asp:RegularExpressionValidator ID="revAddressNameLength" runat="server" ValidationExpression="^.{0,50}$" ValidationGroup="vgAddress" ControlToValidate="tbxAddressName" meta:resourcekey="cvFirstNameLength" />
                                <asp:CustomValidator ID="cvAddressNameIsUnique" runat="server" meta:resourcekey="cvAddressNameIsUnique" ControlToValidate="tbxAddressName" ValidationGroup="vgAddress" OnServerValidate="cvAddressNameIsUnique_ServerValidate" />
                            </div>
                            <div class="field inline break">
                                <asp:Label ID="lblAddressEmail" runat="server" AssociatedControlID="tbxAddressEmail" meta:resourcekey="lblAddressEmail" />
                                <asp:TextBox ID="tbxAddressEmail" runat="server" />
                                <asp:RegularExpressionValidator ID="revAddressEmailPatern" runat="server" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="vgAddress" ControlToValidate="tbxAddressEmail"
                                    meta:resourcekey="revAddressEmailPatern" />
                            </div>
                            <div class="field inline break">
                                <asp:Label ID="lblAddressCompany" runat="server" AssociatedControlID="tbxAddressCompany" meta:resourcekey="lblAddressCompany" />
                                <asp:TextBox ID="tbxAddressCompany" runat="server" />
                                <asp:RegularExpressionValidator ID="revAddressCompanyLength" runat="server" ValidationExpression="^.{0,50}$" ValidationGroup="vgAddress" ControlToValidate="tbxAddressCompany" meta:resourcekey="revAddressCompanyLength" />
                            </div>
                            <div class="field inline break">
                                <asp:Label ID="lblAddressFirstName" runat="server" AssociatedControlID="tbxAddressFirstName" meta:resourcekey="lblAddressFirstName" />
                                <asp:TextBox ID="tbxAddressFirstName" runat="server" />
                                <asp:RequiredFieldValidator ID="rfvAddressFirstName" runat="server" meta:resourcekey="rfvAddressFirstName" ControlToValidate="tbxAddressFirstName" ValidationGroup="vgAddress" />
                                <asp:RegularExpressionValidator ID="revAddressFirstNameLength" runat="server" ValidationExpression="^.{0,50}$" ValidationGroup="vgAddress" ControlToValidate="tbxAddressFirstName" meta:resourcekey="revAddressFirstNameLength" />
                            </div>
                            <div class="field inline break">
                                <asp:Label ID="lblAddressMiddleName" runat="server" AssociatedControlID="tbxAddressMiddleName" meta:resourcekey="lblAddressMiddleName" />
                                <asp:TextBox ID="tbxAddressMiddleName" runat="server" />
                                <asp:RegularExpressionValidator ID="revAddressMiddleNameLength" runat="server" ValidationExpression="^.{0,50}$" ValidationGroup="vgAddress" ControlToValidate="tbxAddressMiddleName" meta:resourcekey="revAddressMiddleNameLength" />
                            </div>
                            <div class="field inline break">
                                <asp:Label ID="lblAddressLastName" runat="server" AssociatedControlID="tbxAddressLastName" meta:resourcekey="lblAddressLastName" />
                                <asp:TextBox ID="tbxAddressLastName" runat="server" />
                                <asp:RequiredFieldValidator ID="rvfAddressLastName" runat="server" meta:resourcekey="rvfAddressLastName" ControlToValidate="tbxAddressLastName" ValidationGroup="vgAddress" />
                                <asp:RegularExpressionValidator ID="revAddressLastNameLength" runat="server" ValidationExpression="^.{0,50}$" ValidationGroup="vgAddress" ControlToValidate="tbxAddressLastName" meta:resourcekey="revAddressLastNameLength" />
                            </div>
                            <div class="field inline break">
                                <asp:Label ID="lblAddressLine1" runat="server" AssociatedControlID="tbxAddressLine1" meta:resourcekey="lblAddressLine1" />
                                <asp:TextBox ID="tbxAddressLine1" runat="server" />
                                <asp:RequiredFieldValidator ID="rfvAddressLine1Length" runat="server" meta:resourcekey="rfvAddressLine1Length" ControlToValidate="tbxAddressLine1" ValidationGroup="vgAddress" />
                                <asp:RegularExpressionValidator ID="revAddressLine1Length" runat="server" ValidationExpression="^.{0,50}$" ValidationGroup="vgAddress" ControlToValidate="tbxAddressLine1" meta:resourcekey="revAddressLine1Length" />
                            </div>
                            <div class="field inline break">
                                <asp:Label ID="lblAddressLine2" runat="server" AssociatedControlID="tbxAddressLine2" meta:resourcekey="lblAddressLine2" />
                                <asp:TextBox ID="tbxAddressLine2" runat="server" />
                                <asp:RegularExpressionValidator ID="revAddressLine2Length" runat="server" ValidationExpression="^.{0,50}$" ValidationGroup="vgAddress" ControlToValidate="tbxAddressLine2" meta:resourcekey="revAddressLine2Length" />
                            </div>
                            <div class="field inline break">
                                <asp:Label ID="lblAddressLine3" runat="server" AssociatedControlID="tbxAddressLine3" meta:resourcekey="lblAddressLine3" />
                                <asp:TextBox ID="tbxAddressLine3" runat="server" />
                                <asp:RegularExpressionValidator ID="revAddressLine3Length" runat="server" ValidationExpression="^.{0,50}$" ValidationGroup="vgAddress" ControlToValidate="tbxAddressLine3" meta:resourcekey="revAddressLine3Length" />
                            </div>
                            <div class="field inline break">
                                <asp:Label ID="lblAddressFloor" runat="server" AssociatedControlID="tbxAddressFloor" meta:resourcekey="lblAddressFloor" />
                                <asp:TextBox ID="tbxAddressFloor" runat="server" />
                                <asp:RegularExpressionValidator ID="revAddressFloorLength" runat="server" ValidationExpression="^.{0,50}$" ValidationGroup="vgAddress" ControlToValidate="tbxAddressFloor" meta:resourcekey="revAddressFloorLength" />
                            </div>
                            <div class="field inline break">
                                <asp:Label ID="lblAddressDigiCode" runat="server" AssociatedControlID="tbxAddressDigiCode" meta:resourcekey="lblAddressDigiCode" />
                                <asp:TextBox ID="tbxAddressDigiCode" runat="server" />
                                <asp:RegularExpressionValidator ID="revAddressDigiCodeLength" runat="server" ValidationExpression="^.{0,50}$" ValidationGroup="vgAddress" ControlToValidate="tbxAddressDigiCode" meta:resourcekey="revAddressDigiCodeLength" />
                            </div>
                            <div class="field inline break">
                                <asp:Label ID="lblAddressZipCode" runat="server" AssociatedControlID="tbxAddressZipCode" meta:resourcekey="lblAddressZipCode" />
                                <asp:TextBox ID="tbxAddressZipCode" runat="server" />
                                <asp:RegularExpressionValidator ID="revAddressZipCodeLength" runat="server" ValidationExpression="^.{0,20}$" ValidationGroup="vgAddress" ControlToValidate="tbxAddressZipCode" meta:resourcekey="revAddressZipCodeLength" />
                            </div>
                            <div class="field inline break">
                                <asp:Label ID="lblAddressCity" runat="server" AssociatedControlID="tbxAddressCity" meta:resourcekey="lblAddressCity" />
                                <asp:TextBox ID="tbxAddressCity" runat="server" />
                                <asp:RequiredFieldValidator ID="rfvAddressCity" runat="server" ValidationGroup="vgAddress" ControlToValidate="tbxAddressCity" meta:resourcekey="rfvAddressCity" />
                                <asp:RegularExpressionValidator ID="revAddressCityLength" runat="server" ValidationExpression="^.{0,50}$" ValidationGroup="vgAddress" ControlToValidate="tbxAddressCity" meta:resourcekey="revAddressCityLength" />
                            </div>
                            <div class="field inline break">
                                <asp:Label ID="lblAddressCountry" runat="server" AssociatedControlID="ddlAddressCountries" meta:resourcekey="lblAddressCountry" />
                                <asp:DropDownList ID="ddlAddressCountries" runat="server" DataValueField="CountryId" DataTextField="Name" AutoPostBack="true" OnSelectedIndexChanged="ddlAddressCountries_SelectedIndexChanged" />
                            </div>
                            <div id="bAddressRegion" runat="server" visible="false" class="field inline break">
                                <asp:Label ID="lblAddressRegion" runat="server" AssociatedControlID="ddlAddressRegions" meta:resourcekey="lblAddressRegion" />
                                <asp:DropDownList ID="ddlAddressRegions" runat="server" DataValueField="RegionId" DataTextField="Name" />
                            </div>
                            <div class="field inline break">
                                <asp:Label ID="lblAddressPhoneNumber" runat="server" AssociatedControlID="tbxAddressPhoneNumber" meta:resourcekey="lblAddressPhoneNumber" />
                                <asp:TextBox ID="tbxAddressPhoneNumber" runat="server" />
                                <asp:RegularExpressionValidator ID="revAddressPhoneNumberLength" runat="server" ValidationExpression="^.{0,50}$" ValidationGroup="vgAddress" ControlToValidate="tbxAddressPhoneNumber" meta:resourcekey="revAddressPhoneNumberLength" />
                            </div>
                            <div class="field inline break">
                                <asp:Label ID="lblAddressMobileNumber" runat="server" AssociatedControlID="tbxAddressMobileNumber" meta:resourcekey="lblAddressMobileNumber" />
                                <asp:TextBox ID="tbxAddressMobileNumber" runat="server" />
                                <asp:RegularExpressionValidator ID="revAddressMobileNumberLength" runat="server" ValidationExpression="^.{0,50}$" ValidationGroup="vgAddress" ControlToValidate="tbxAddressMobileNumber" meta:resourcekey="revAddressMobileNumberLength" />
                            </div>
                            <div class="field inline break">
                                <asp:Label ID="lblAddressFaxNumber" runat="server" AssociatedControlID="tbxAddressFaxNumber" meta:resourcekey="lblAddressFaxNumber" />
                                <asp:TextBox ID="tbxAddressFaxNumber" runat="server" />
                                <asp:RegularExpressionValidator ID="revAddressFaxNumber" runat="server" ValidationExpression="^.{0,50}$" ValidationGroup="vgAddress" ControlToValidate="tbxAddressFaxNumber" meta:resourcekey="revAddressFaxNumber" />
                            </div>
                            <div class="field inline break">
                                <asp:Label ID="lblAddressComments" runat="server" meta:resourcekey="lblAddressComments" />
                                <mag:CommentsEditor ID="mceAddress" runat="server" />
                            </div>
                            <div class="field inline break">
                                <asp:Label ID="lblAddressAdditionalData" runat="server" meta:resourcekey="lblAddressAdditionalData" />
                                <mag:AdditionalDataEditor ID="madeAddress" runat="server" />
                            </div>
                            <mag:FeaturePanel runat="server" Tag="Div" CssClass="buttons" Level="Edit">
                                <ul>
                                    <li>
                                        <asp:LinkButton ID="lbtnAddressCancel" runat="server" Text='<%$ resources:global,Cancel %>' SkinID="Minor" OnClick="lbtnCancel_Click" />
                                    </li>
                                    <li id="liAddressDelete" runat="server">
                                        <asp:LinkButton ID="lbtnAddressDelete" runat="server" Text='<%$ resources:global,Delete %>' SkinID="Minor" OnClick="lbtnAddressDelete_Click" OnClientClick='<%$ Resources:global, ClientClickConfirmDeletion %>' />
                                    </li>
                                </ul>
                            </mag:FeaturePanel>
                        </asp:View>
                    </asp:MultiView>
                </fieldset>
                <fieldset id="fsSegments" runat="server">
                    <legend>
                        <asp:Literal ID="litSegments" runat="server" meta:resourcekey="litSegments" />
                    </legend>
                    <mag:SwapList ID="mslSegments" runat="server" meta:resourcekey="mslSegments" DataTextField="Code" DataValueField="SegmentId" />
                </fieldset>
            </asp:View>
        </asp:MultiView>
    </div>
</asp:Content>
