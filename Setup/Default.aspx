<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Magelia.WebStore.Admin.Setup.Default" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>
        <asp:Literal ID="litSetupTitle" runat="server" meta:resourcekey="litSetupTitle" />
    </title>
    <link rel="stylesheet" href="../App_Themes/New/Contextual.less?color=%23914299" />
    <asp:PlaceHolder runat="server">
        <%: System.Web.Optimization.Styles.Render("~/App_Themes/New/All") %>
    </asp:PlaceHolder>
    <!--[if lt IE 9]><style type="text/css">#fSetupWizard > div.form{border: 1px solid #cccccc;border-top:0;}</style><![endif]-->

    <link id="lFavicon" rel="shortcut icon" type="image/x-icon" runat="server" />
</head>
<body>
    <form runat="server" id="fSetupWizard" clientidmode="Static">
        <div class="form">
            <asp:ScriptManager runat="server" AsyncPostBackTimeout="600">
                <CompositeScript>
                    <Scripts>
                        <asp:ScriptReference Path="~/Scripts/Libraries/html5shiv.js" />
                        <asp:ScriptReference Path="~/Scripts/Libraries/jquery-1.8.3.min.js" />
                        <asp:ScriptReference Path="~/Scripts/Libraries/jquery-ui-1.9.1.custom.min.js" />
                        <asp:ScriptReference Path="~/Scripts/Plugins/jquery.validationhighlighter.js" />
                        <asp:ScriptReference Path="~/Scripts/Plugins/jquery.rounded.js" />
                        <asp:ScriptReference Path="~/Scripts/Plugins/jquery.popin.js" />
                        <asp:ScriptReference Path="~/Scripts/Pages/Setup/Default.aspx.js" />
                    </Scripts>
                </CompositeScript>
            </asp:ScriptManager>
            <script type="text/javascript">
                $(document).ready(
                    function () {
                        $('fieldset.advanceParameters legend').click(
                            function () {
                                var self = $(this);
                                $(this).next('div')
                                       .slideToggle()
                                       .promise()
                                       .done(function () { self.toggleClass('expanded'); });
                            }
                        );
                        $('#<%=this.cbxUseSmtpMachineConfiguration.ClientID%>').change(
                            function () {
                                if ($(this).is(':checked')) {
                                    $('#pnlSmtpSettings').hide();
                                } else {
                                    $('#pnlSmtpSettings').show();
                                }
                            }
                        ).change();
                        $('input[name=rblSmtpAuthenticationMode]').change(
                            function () {
                                var pnlSmtpBasicAuthentication = $('#pnlSmtpBasicAuthentication');
                                if ($(this).val() == '1') {
                                    pnlSmtpBasicAuthentication.show();
                                } else {
                                    pnlSmtpBasicAuthentication.hide();
                                }
                            }
                        ).filter(':checked').change();
                        $('input[name=rblSqlServerMode]').change(
                            function () {
                                $(this).parent().parent().find('div.sqlServerOption').slideUp();
                                $(this).parent().children('div').slideToggle();
                            }
                        ).filter(':checked').change();
                        $('input[name=InstallType]').change(
                            function () {
                                var el = $(this);
                                var parent = el.parent();
                                var container = parent.children('div');
                                var parentIndex = parent.index();
                                if (el.is(':checked')) {
                                    container.show();
                                }
                                else {
                                    container.hide();
                                }
                                parent.parent().children().each(
                                    function (index) {
                                        if (index != parentIndex) {
                                            $(this).children('div').hide();
                                        }
                                    }
                                );
                            }
                        ).filter(':checked').change();
                        $('#showDetail').click(function () {
                            var self = $(this);
                            $('#upnlInstallation').slideToggle(function () {
                                self.hide();
                                $('#hideDetail').show();
                            });
                        });
                        $('#hideDetail').click(function () {
                            var self = $(this);
                            $('#upnlInstallation').slideToggle(function () {
                                self.hide();
                                $('#showDetail').show();
                            });
                        });
                    }
                );
            </script>
            <header>
                <asp:Image runat="server" SkinID="Magelia" AlternateText="Magelia WebStore" />
            </header>
            <asp:MultiView ID="mvGlobal" runat="server" ActiveViewIndex="1" OnActiveViewChanged="mvGlobal_ActiveViewChanged">
                <asp:View runat="server" ID="vAlreadyInstalled">
                    <div class="alreadyInstalled">
                        <asp:Literal runat="server" meta:resourcekey="litAlreadyInstalled" />
                    </div>
                    <div class="buttons">
                        <ul>
                            <li>
                                <asp:HyperLink runat="server" meta:resourceKey="hlBackToAdministrationConsole" NavigateUrl="~/" SkinID="Major" />
                            </li>
                        </ul>
                    </div>
                </asp:View>
                <asp:View runat="server" ID="vEdition">
                    <div class="loader">
                        <p>
                            <asp:Literal runat="server" meta:resourcekey="litLoading" />
                        </p>
                    </div>
                    <p class="breadCrumb">
                        <asp:Literal runat="server" meta:resourceKey="litWizardTitleRoot" />
                        <asp:Literal runat="server" meta:resourceKey="litWizardTitleWelcome" />
                    </p>
                    <div class="step">
                        <div class="content welcome">
                            <div class="block">
                                <h3>
                                    <asp:Literal runat="server" meta:resourceKey="litChooseLicenseTitle" /></h3>
                                <div>
                                    <div class="edition">
                                        <asp:Image runat="server" SkinID="Magelia" AlternateText="Community Edition" />
                                        <h4>
                                            <asp:Literal runat="server" meta:resourceKey="litChooseCommunityTitle" /></h4>
                                        <p>
                                            <asp:Literal ID="litCommunityDescription" runat="server" meta:resourcekey="litCommunityDescription" />
                                        </p>
                                        <p>
                                            <asp:Literal ID="litCommunityFree" runat="server" meta:resourcekey="litCommunityFree" />
                                        </p>
                                        <asp:LinkButton runat="server" ID="lbtnCommunityEdition" OnClick="lbtnCommunityEdition_Click" SkinID="Major" meta:resourceKey="lbtnCommunityEdition" />
                                    </div>
                                    <div class="edition professional">
                                        <h5>
                                            <asp:Literal ID="litPopular" runat="server" meta:resourcekey="litPopular" />
                                        </h5>
                                        <asp:Image runat="server" SkinID="Magelia" AlternateText="Professional Edition" />
                                        <h4>
                                            <asp:Literal runat="server" meta:resourceKey="litChooseProfessionalTitle" /></h4>
                                        <p>
                                            <asp:Literal ID="litProfessionnalDescription" runat="server" meta:resourcekey="litProfessionnalDescription" />
                                        </p>
                                        <p>
                                            <asp:Literal ID="litProfessionnalTrial" runat="server" meta:resourcekey="litProfessionnalTrial" />
                                        </p>
                                        <asp:LinkButton runat="server" ID="lbtnProfessionalEdition" OnClick="lbtnProfessionalEdition_Click" SkinID="Major" meta:resourceKey="lbtnProfessionalEdition" />
                                    </div>
                                    <div class="edition">
                                        <asp:Image runat="server" SkinID="Magelia" AlternateText="Enterprise Edition" />
                                        <h4>
                                            <asp:Literal runat="server" meta:resourceKey="litChooseEnterpriseTitle" /></h4>
                                        <p>
                                            <asp:Literal ID="litEnterpriseDescription" runat="server" meta:resourcekey="litEnterpriseDescription" />
                                        </p>
                                        <asp:HyperLink ID="hlContactUs" runat="server" SkinID="Major" meta:resourceKey="hlContactUs" Target="_blank" />
                                    </div>
                                    <div>
                                        <asp:Literal ID="litStillNotSure" runat="server" meta:resourceKey="litStillNotSure"></asp:Literal>
                                        <asp:HyperLink ID="hlCompareEditions" runat="server" Target="_blank" meta:resourceKey="hlCompareEditions" />
                                    </div>
                                </div>
                            </div>
                            <div class="block">
                                <h3>
                                    <asp:Literal runat="server" meta:resourceKey="litUseExistingLicenseTitle" />
                                </h3>
                                <div class="existingLicense">
                                    <asp:ValidationSummary runat="server" ValidationGroup="vgSendLicense" HeaderText="<%$ Resources:Global, ErrorMsgText %>" />
                                    <p>
                                        <asp:Literal runat="server" meta:resourceKey="litUseExistingLicenseIntro" />
                                    </p>
                                    <div class="field inline">
                                        <asp:Label ID="lblLicenseFile" runat="server" AssociatedControlID="fuLicenseFile" meta:resourceKey="lblLicenseFile" /><asp:FileUpload runat="server" ID="fuLicenseFile" />
                                    </div>
                                    <asp:CustomValidator ID="cvLicenseFile" runat="server" ValidationGroup="vgSendLicense" OnServerValidate="cvLicenseFile_ServerValidate" meta:resourceKey="cvLicenseFile" />
                                    <div class="buttons">
                                        <ul>
                                            <li>
                                                <asp:LinkButton runat="server" meta:resourceKey="lbtnSendLicenseFile" OnClick="lbtnSendLicenseFile_Click" SkinID="Major" ValidationGroup="vgSendLicense" />
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <asp:Panel runat="server" ID="pnlLicenseDetails" Visible="false" EnableViewState="false" SkinID="Popin">
                                <header>
                                    <h4>
                                        <asp:Literal runat="server" ID="litLicenseDetailsThank" meta:resourceKey="litLicenseDetailsThank" />
                                    </h4>
                                </header>
                                <div class="form">
                                    <script type="text/javascript">
                                        $(document).ready(
                                            function () {
                                                $('#<%=pnlLicenseDetails.ClientID %>').popin('open');
                                                $('#<%= lbtnCancelConfirmLicense.ClientID %>').click(
                                                    function (e) {
                                                        e.preventDefault();
                                                        $('#<%=pnlLicenseDetails.ClientID %>').popin('close');
                                                    }
                                                );
                                            }
                                        );
                                    </script>
                                    <mag:LicenseFeatureInformation runat="server" ID="mLicenseFeatureInfo" />
                                    <div class="buttons">
                                        <ul>
                                            <li>
                                                <asp:LinkButton runat="server" ID="lbtnCancelConfirmLicense" meta:resourceKey="lbtnCancelConfirmLicense" SkinID="Minor" />
                                            </li>
                                            <li>
                                                <asp:LinkButton runat="server" ID="lbtnConfirmLicense" OnClick="lbtnConfirmLicense_Click" meta:resourceKey="lbtnConfirmLicense" SkinID="Major" />
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </asp:Panel>
                        </div>
                    </div>
                </asp:View>
                <asp:View ID="vLogin" runat="server">
                    <div class="loader">
                        <p>
                            <asp:Literal runat="server" meta:resourcekey="litLoading" />
                        </p>
                    </div>
                    <p class="breadCrumb">
                        <asp:Literal runat="server" meta:resourceKey="litWizardTitleRoot" />
                        <asp:Literal runat="server" meta:resourceKey="litWizardTitleAccountSettings" />
                    </p>
                    <div class="step">
                        <div class="block help">
                            <h3>
                                <asp:Literal runat="server" meta:resourcekey="litHelp" />
                            </h3>
                            <div>
                                <ul>
                                    <li>
                                        <h6 class="info">
                                            <asp:Literal ID="litWhyDefineAnAccount" runat="server" meta:resourcekey="litWhyDefineAnAccount" />
                                        </h6>
                                        <p>
                                            <asp:Literal ID="litWhyDefineAnAccountText" runat="server" meta:resourcekey="litWhyDefineAnAccountText" />
                                        </p>
                                    </li>
                                    <li>
                                        <h6 class="tip">
                                            <asp:Literal ID="litRetrieveLicense" runat="server" meta:resourcekey="litRetrieveLicense" />
                                        </h6>
                                        <p>
                                            <asp:Literal ID="litRetrieveLicenseText" runat="server" meta:resourcekey="litRetrieveLicenseText" />
                                        </p>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="content">
                            <div class="block">
                                <h3>
                                    <asp:Literal ID="litDefineAccountSettingsTitle" runat="server" meta:resourceKey="litDefineAccountSettingsTitle" />
                                </h3>
                                <div>
                                    <p id="pAccountSettingsErrors" runat="server" class="message error" visible="false">
                                        <asp:Literal ID="litAccountSettingsGenericError" runat="server" meta:resourceKey="litAccountSettingsGenericError" Visible="false" EnableViewState="false" />
                                    </p>
                                    <div class="block createAccount">
                                        <h4>
                                            <asp:Literal ID="litCreateAccountTitle" runat="server" meta:resourceKey="litCreateAccountTitle" />
                                        </h4>
                                        <div>
                                            <asp:Panel runat="server" ID="pnlCreateAccountErrors" CssClass="validation" EnableViewState="false" Visible="false">
                                                <asp:Literal runat="server" meta:resourceKey="litDuplicateEmail" ID="litDuplicateEmail" Visible="false" EnableViewState="false" />
                                                <asp:Literal runat="server" meta:resourceKey="litGenericCreateAccountError" ID="litGenericCreateAccountError" Visible="false" EnableViewState="false" />
                                                <asp:Literal runat="server" meta:resourceKey="litGenericError" ID="litGenericError" Visible="false" EnableViewState="false" />
                                            </asp:Panel>
                                            <asp:ValidationSummary runat="server" ValidationGroup="vgCreateAccount" HeaderText="<%$ Resources:Global, ErrorMsgText %>" />
                                            <div class="field inline">
                                                <asp:Label ID="lblFirstName" runat="server" AssociatedControlID="tbxFirstName" meta:resourceKey="lblFirstName" />
                                                <asp:TextBox runat="server" ID="tbxFirstName" MaxLength="250" />
                                                <asp:RequiredFieldValidator ID="rfvFirstName" runat="server" ControlToValidate="tbxFirstName" meta:resourceKey="rfvFirstName" ValidationGroup="vgCreateAccount" />
                                            </div>
                                            <div class="field inline break">
                                                <asp:Label ID="lblLastName" runat="server" AssociatedControlID="tbxLastName" meta:resourceKey="lblLastName" />
                                                <asp:TextBox runat="server" ID="tbxLastName" MaxLength="250" />
                                                <asp:RequiredFieldValidator ID="rfvLastName" runat="server" ControlToValidate="tbxLastName" meta:resourceKey="rfvLastName" ValidationGroup="vgCreateAccount" />
                                            </div>
                                            <div class="field inline break">
                                                <asp:Label ID="lblCompanyName" runat="server" AssociatedControlID="tbxCompanyName" meta:resourceKey="lblCompanyName" />
                                                <asp:TextBox runat="server" ID="tbxCompanyName" MaxLength="250" />
                                            </div>
                                            <div class="field inline break">
                                                <asp:Label ID="lblNewEmail" runat="server" AssociatedControlID="tbxNewEmail" meta:resourceKey="lblNewEmail" />
                                                <asp:TextBox runat="server" ID="tbxNewEmail" MaxLength="250" />
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tbxNewEmail" meta:resourceKey="rfvNewEmail" ValidationGroup="vgCreateAccount" />
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="tbxNewEmail" meta:resourceKey="revNewEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                                                    ValidationGroup="vgCreateAccount" />
                                            </div>
                                            <div class="field inline break">
                                                <asp:Label ID="lblNewPassword" runat="server" AssociatedControlID="tbxNewPassword" meta:resourceKey="lblNewPassword" />
                                                <asp:TextBox runat="server" ID="tbxNewPassword" TextMode="Password" MaxLength="250" />
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tbxNewPassword" meta:resourceKey="rfvNewPassword" ValidationGroup="vgCreateAccount" />
                                            </div>
                                            <div class="field inline break">
                                                <asp:Label ID="lblConfirmNewPassword" runat="server" AssociatedControlID="tbxConfirmNewPassword" meta:resourceKey="lblConfirmNewPassword" />
                                                <asp:TextBox runat="server" ID="tbxConfirmNewPassword" TextMode="Password" MaxLength="250" />
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="tbxConfirmNewPassword" meta:resourceKey="rfvConfirmNewPassword" ValidationGroup="vgCreateAccount" />
                                                <asp:CompareValidator ID="cvConfirmNewPassword" runat="server" ControlToCompare="tbxNewPassword" ControlToValidate="tbxConfirmNewPassword" meta:resourceKey="cvConfirmNewPassword"
                                                    ValidationGroup="vgCreateAccount" />
                                            </div>
                                            <div class="field inline break">
                                                <asp:Label ID="lblNewsletter" runat="server" AssociatedControlID="cbxNewsletter" meta:resourceKey="lblNewsletter" />
                                                <asp:CheckBox ID="cbxNewsletter" runat="server" Checked="true" />
                                            </div>
                                            <div class="buttons">
                                                <ul>
                                                    <li>
                                                        <asp:LinkButton runat="server" ID="lbtnCreateAccount" OnClick="lbtnCreateAccount_Click" meta:resourceKey="lbtnCreateAccount" SkinID="Major" ValidationGroup="vgCreateAccount" />
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="block login">
                                        <h4>
                                            <asp:Literal runat="server" meta:resourceKey="litLogin" /></h4>
                                        <div>
                                            <asp:ValidationSummary runat="server" ValidationGroup="vgLogin" HeaderText="<%$ Resources:Global, ErrorMsgText %>" />
                                            <asp:Panel runat="server" ID="pnlLoginErrors" CssClass="validation" EnableViewState="false" Visible="false">
                                                <asp:Literal runat="server" meta:resourceKey="litInvalidPassword" ID="litInvalidPassword" Visible="false" EnableViewState="false" />
                                            </asp:Panel>
                                            <p>
                                                <asp:Literal runat="server" meta:resourceKey="litLoginIntro" />
                                            </p>
                                            <div class="field inline">
                                                <asp:Label runat="server" AssociatedControlID="tbxLoginEmail" meta:resourceKey="lblLoginEmail" />
                                                <asp:TextBox runat="server" ID="tbxLoginEmail" MaxLength="250" />
                                                <asp:RequiredFieldValidator runat="server" ControlToValidate="tbxLoginEmail" meta:resourceKey="rfvLoginEmail" ValidationGroup="vgLogin" />
                                                <asp:RegularExpressionValidator runat="server" ControlToValidate="tbxLoginEmail" meta:resourceKey="revLoginEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                                                    ValidationGroup="vgLogin" />
                                            </div>
                                            <div class="field inline break">
                                                <asp:Label runat="server" AssociatedControlID="tbxLoginPassword" meta:resourceKey="lblLoginPassword" />
                                                <asp:TextBox runat="server" ID="tbxLoginPassword" TextMode="Password" MaxLength="250" />
                                                <asp:RequiredFieldValidator runat="server" ControlToValidate="tbxLoginPassword" meta:resourceKey="rfvLoginPassword" ValidationGroup="vgLogin" />
                                            </div>
                                            <div class="buttons">
                                                <ul>
                                                    <li>
                                                        <asp:LinkButton ID="lbtnForgotPassword" runat="server" OnClick="lbtnForgotPassword_Click" SkinID="Minor" meta:resourcekey="lbtnForgotPassword" />
                                                    </li>
                                                    <li>
                                                        <asp:LinkButton ID="lbtnLogin" runat="server" OnClick="lbtnLogin_Click" SkinID="Major" ValidationGroup="vgLogin" meta:resourceKey="lbtnLogin" />
                                                    </li>
                                                </ul>
                                            </div>
                                            <div id="bForgotPassword" runat="server" class="forgotPassword popin">
                                                <header>
                                                    <h4>
                                                        <asp:Literal ID="litForgotPassword" runat="server" meta:resourcekey="litForgotPassword" />
                                                    </h4>
                                                </header>
                                                <asp:UpdatePanel runat="server">
                                                    <ContentTemplate>
                                                        <asp:MultiView ID="mvForgotPassword" runat="server">
                                                            <asp:View ID="vEmail" runat="server">
                                                                <asp:Panel ID="pnlForgotPassword" runat="server" CssClass="form" DefaultButton="lbtnSendNewPassword">
                                                                    <asp:ValidationSummary runat="server" ValidationGroup="vgForgotPassword" HeaderText="<%$ Resources:Global, ErrorMsgText %>" />
                                                                    <div class="field inline">
                                                                        <asp:Label ID="lblForgotPasswordEmail" runat="server" AssociatedControlID="tbxForgotPasswordEmail" meta:resourcekey="lblForgotPasswordEmail" />
                                                                        <asp:TextBox ID="tbxForgotPasswordEmail" runat="server" />
                                                                        <asp:RequiredFieldValidator ID="rfvForgotPasswordEmail" runat="server" ControlToValidate="tbxForgotPasswordEmail" ValidationGroup="vgForgotPassword" meta:resourcekey="rfvForgotPasswordEmail" />
                                                                        <asp:RegularExpressionValidator ID="revForgotPasswordEmailPattern" runat="server" ControlToValidate="tbxForgotPasswordEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                                                                            ValidationGroup="vgForgotPassword"
                                                                            meta:resourceKey="revForgotPasswordEmailPattern" />
                                                                    </div>
                                                                    <div class="buttons">
                                                                        <ul>
                                                                            <li>
                                                                                <asp:LinkButton ID="lbtnSendNewPassword" runat="server" SkinID="Major" OnClick="lbtnSendNewPassword_Click" ValidationGroup="vgForgotPassword" meta:resourcekey="lbtnSendNewPassword" />
                                                                            </li>
                                                                        </ul>
                                                                    </div>
                                                                </asp:Panel>
                                                            </asp:View>
                                                            <asp:View ID="vForgotPasswordSuccess" runat="server">
                                                                <p class="success">
                                                                    <asp:Literal ID="litForgotPasswordSuccess" runat="server" meta:resourcekey="litForgotPasswordSuccess" />
                                                                </p>
                                                            </asp:View>
                                                            <asp:View ID="vForgotPasswordNotSend" runat="server">
                                                                <p class="message error">
                                                                    <asp:Literal ID="litForgotPasswordNotSend" runat="server" meta:resourcekey="litForgotPasswordNotSend" />
                                                                </p>
                                                                <div class="buttons">
                                                                    <ul>
                                                                        <li>
                                                                            <asp:LinkButton ID="lbtnForgotPasswordReviewEmail" runat="server" SkinID="Major" OnClick="lbtnForgotPasswordReviewEmail_Click" meta:resourcekey="lbtnForgotPasswordReviewEmail" />
                                                                        </li>
                                                                    </ul>
                                                                </div>
                                                            </asp:View>
                                                            <asp:View ID="vForgotPasswordError" runat="server">
                                                                <p class="message error">
                                                                    <asp:Literal ID="litForgotPasswordError" runat="server" meta:resourcekey="litForgotPasswordError" />
                                                                </p>
                                                            </asp:View>
                                                        </asp:MultiView>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="buttons">
                                    <ul>
                                        <li>
                                            <asp:LinkButton runat="server" ID="lbtnBackToHome" OnClick="lbtnBackToHome_Click" Text="<%$ resources:global, Back %>" SkinID="Minor" />
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </asp:View>
                <asp:View runat="server" ID="vStoreParameters">
                    <div class="loader">
                        <p>
                            <asp:Literal runat="server" meta:resourcekey="litLoading" />
                        </p>
                    </div>
                    <p class="breadCrumb">
                        <asp:Literal runat="server" meta:resourceKey="litWizardTitleRoot" />
                        <asp:Literal runat="server" meta:resourceKey="litWizardTitleStoreParameters" />
                    </p>
                    <div class="step">
                        <div class="block help">
                            <h3>
                                <asp:Literal runat="server" meta:resourcekey="litHelp" /></h3>
                            <div>
                                <ul>
                                    <li>
                                        <h6 class="info">
                                            <asp:Literal ID="litSampleData" runat="server" meta:resourcekey="litSampleData" />
                                        </h6>
                                        <p>
                                            <asp:Literal ID="litSampleDataText" runat="server" meta:resourcekey="litSampleDataText" />
                                        </p>
                                    </li>
                                    <li>
                                        <h6 class="warning">
                                            <asp:Literal ID="litNavigationInfo" runat="server" meta:resourcekey="litNavigationInfo" />
                                        </h6>
                                        <p>
                                            <asp:Literal ID="litNavigationInfoText" runat="server" meta:resourcekey="litNavigationInfoText" />
                                        </p>
                                    </li>
                                    <li>
                                        <h6 class="info">
                                            <asp:Literal ID="litInstallInfo" runat="server" meta:resourcekey="litInstallInfo" />
                                        </h6>
                                        <p>
                                            <asp:Literal ID="litBasicConfigText" runat="server" meta:resourcekey="litBasicConfigText" />
                                        </p>
                                        <p>
                                            <asp:Literal ID="litDemoStoreText" runat="server" meta:resourcekey="litDemoStoreText" />
                                        </p>
                                        <p>
                                            <asp:Literal ID="litBlankInstallText" runat="server" meta:resourcekey="litBlankInstallText" />
                                        </p>
                                    </li>
                                    <li>
                                        <h6 class="info">
                                            <asp:Literal ID="litStoreParametersAdvancedParameters" runat="server" meta:resourcekey="litStoreParametersAdvancedParameters" />
                                        </h6>
                                        <p>
                                            <asp:Literal ID="litStoreParametersAdvancedParametersText" runat="server" meta:resourcekey="litStoreParametersAdvancedParametersText" />
                                        </p>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="content">
                            <div class="block">
                                <h3>
                                    <asp:Literal ID="litStoreParametersTitle" runat="server" meta:resourceKey="litStoreParametersTitle" />
                                </h3>
                                <div>
                                    <asp:ValidationSummary runat="server" ValidationGroup="vgStoreParameters" HeaderText="<%$ Resources:Global, ErrorMsgText %>" />
                                    <div class="field inline">
                                        <asp:Label runat="server" AssociatedControlID="tbxSellerName" meta:resourceKey="lblSellerName" />
                                        <asp:TextBox runat="server" ID="tbxSellerName" MaxLength="50" />
                                        <asp:RequiredFieldValidator runat="server" ControlToValidate="tbxSellerName" meta:resourceKey="rfvSellerName" ValidationGroup="vgStoreParameters" />
                                    </div>
                                    <div class="field inline break">
                                        <asp:Label runat="server" AssociatedControlID="tbxStoreName" meta:resourceKey="lblStoreName" />
                                        <asp:TextBox runat="server" ID="tbxStoreName" MaxLength="50" />
                                        <asp:RequiredFieldValidator runat="server" ControlToValidate="tbxStoreName" meta:resourceKey="rfvStoreName" ValidationGroup="vgStoreParameters" />
                                    </div>
                                    <div class="field inline break termsAndConditions">
                                        <asp:CheckBox runat="server" ID="cbxTermsAndConditions" />
                                        <span>
                                            <asp:Label ID="lblTermsAndConditions" runat="server" AssociatedControlID="cbxTermsAndConditions">
                                                <asp:Literal ID="litTermsAndConditions" runat="server" meta:resourcekey="litTermsAndConditions" />
                                            </asp:Label>
                                            <asp:HyperLink ID="hlTermsAndConditions" runat="server" Target="_blank" meta:resourcekey="hlTermsAndConditions" />
                                        </span>
                                        <asp:CustomValidator ID="cvTermsAndConditions" runat="server" OnServerValidate="cvTermsAndConditions_ServerValidate" ValidationGroup="vgStoreParameters" meta:resourceKey="cvTermsAndConditions" />
                                    </div>
                                    <div class="field inline break break-after">
                                        <asp:CheckBox runat="server" ID="cbxProvideNavigationInformation" />
                                        <asp:Label ID="lblProvideNavigationInformation" runat="server" AssociatedControlID="cbxProvideNavigationInformation" meta:resourceKey="lblProvideNavigationInformation" />
                                    </div>
                                    <div class="block">
                                        <h3>
                                            <asp:Literal ID="litInstallType" runat="server" meta:resourceKey="litInstallType" />
                                        </h3>
                                        <div class="installType">
                                            <div class="field inline break-after">
                                                <asp:RadioButton ID="rbtnBlank" runat="server" GroupName="InstallType" />
                                                <asp:Label ID="lblBlank" runat="server" AssociatedControlID="rbtnBlank" meta:resourceKey="lblBlank" />
                                            </div>
                                            <div class="field inline break-after">
                                                <asp:RadioButton ID="rbtnBasicConfig" runat="server" GroupName="InstallType"/>
                                                <asp:Label ID="lblBasicConfiguration" runat="server" AssociatedControlID="rbtnBasicConfig" meta:resourceKey="lblBasicConfiguration" />
                                                <div>
                                                    <div class="field inline break break-after">
                                                        <asp:Label ID="lblStoreDefaultCountry" runat="server" AssociatedControlID="ddlCountries" meta:resourcekey="lblStoreDefaultCountry" />
                                                        <asp:DropDownList ID="ddlCountries" runat="server" AppendDataBoundItems="true" DataValueField="CountryId" DataTextField="Name" AutoPostBack="true" OnSelectedIndexChanged="ddlCountries_SelectedIndexChanged">
                                                            <asp:ListItem />
                                                        </asp:DropDownList>
                                                        <asp:CustomValidator ID="cvCountryRequired" runat="server" ControlToValidate="ddlCountries" ValidateEmptyText="true" OnServerValidate="cvCountryRequired_ServerValidate"
                                                            ValidationGroup="vgStoreParameters"
                                                            meta:resourcekey="cvCountryRequired" />
                                                    </div>
                                                    <asp:Panel runat="server" ID="pnlCultures" Visible="false" CssClass="field inline break-after">
                                                        <asp:Label ID="lblCultures" runat="server" AssociatedControlID="ddlCultures" meta:resourcekey="lblCultures" />
                                                        <asp:DropDownList ID="ddlCultures" runat="server" DataValueField="CultureId" DataTextField="Name" />
                                                    </asp:Panel>
                                                    <p>
                                                        <asp:Literal ID="litTaxIndications" runat="server" meta:resourcekey="litTaxIndications" />
                                                    </p>
                                                    <div class="field inline">
                                                        <asp:Label ID="lblRegion" runat="server" AssociatedControlID="ddlRegions" meta:resourcekey="lblRegion" />
                                                        <asp:DropDownList ID="ddlRegions" runat="server" DataValueField="RegionId" DataTextField="Name" />
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="field inline break">
                                                <asp:RadioButton ID="rbtnDemoStore" runat="server" GroupName="InstallType" Checked="true" />
                                                <asp:Label ID="lblInstallStarterSite" runat="server" AssociatedControlID="rbtnDemoStore" meta:resourceKey="lblInstallStarterSite" />
                                                <div class="field inline break">
                                                    <asp:Label ID="lblDataSampleChoice" runat="server" AssociatedControlID="ddlDataSampleChoice" meta:resourceKey="lblDataSampleChoice" />
                                                    <asp:DropDownList runat="server" ID="ddlDataSampleChoice" />
                                                </div>
                                                <div class="field inline break">
                                                    <asp:CheckBox runat="server" ID="cbxInstallSampleOrders" />
                                                    <asp:Label ID="lblInstallSampleOrders" runat="server" AssociatedControlID="cbxInstallSampleOrders" meta:resourceKey="lblInstallSampleOrders" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <fieldset class="advanceParameters">
                                        <legend>
                                            <asp:Literal ID="litAdvanceStoreParameters" runat="server" meta:resourceKey="litAdvanceStoreParameters" /></legend>
                                        <div>
                                            <asp:UpdatePanel runat="server" UpdateMode="Conditional">
                                                <ContentTemplate>
                                                    <mag:SwapList runat="server" ID="slCultures" DataTextField="DisplayName" DataValueField="LCID" meta:resourcekey="slCultures" />
                                                </ContentTemplate>
                                            </asp:UpdatePanel>
                                        </div>
                                    </fieldset>
                                    <div class="buttons">
                                        <ul>
                                            <li>
                                                <asp:LinkButton runat="server" ID="lbtnBackToLogin" OnClick="lbtnBackToLogin_Click" Text="<%$ resources:global, Back %>" SkinID="Minor" />
                                            </li>
                                            <li>
                                                <asp:LinkButton runat="server" ID="lbtnGoToStoreAdministrator" OnClick="lbtnGoToStoreAdministrator_Click" meta:resourceKey="lbtnGoToStoreAdministrator"
                                                    SkinID="Major" ValidationGroup="vgStoreParameters" />
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </asp:View>
                <asp:View runat="server" ID="vStoreAdministrator">
                    <div class="loader">
                        <p>
                            <asp:Literal runat="server" meta:resourcekey="litLoading" />
                        </p>
                    </div>
                    <p class="breadCrumb">
                        <asp:Literal runat="server" meta:resourceKey="litWizardTitleRoot" />
                        <asp:Literal runat="server" meta:resourceKey="litWizardTitleStoreAdministrator" />
                    </p>
                    <div class="step">
                        <div class="block help">
                            <h3>
                                <asp:Literal runat="server" meta:resourcekey="litHelp" /></h3>
                            <div>
                                <ul>
                                    <li>
                                        <h6 class="tip">
                                            <asp:Literal ID="litWhoIsAdmin" runat="server" meta:resourcekey="litWhoIsAdmin" />
                                        </h6>
                                        <p>
                                            <asp:Literal ID="litWhoIsAdminText" runat="server" meta:resourcekey="litWhoIsAdminText" />
                                        </p>
                                    </li>
                                    <li>
                                        <h6 class="tip">
                                            <asp:Literal ID="litDontForget" runat="server" meta:resourcekey="litDontForget" />
                                        </h6>
                                        <p>
                                            <asp:Literal ID="litDontForgetText" runat="server" meta:resourcekey="litDontForgetText" />
                                        </p>
                                    </li>
                                    <li>
                                        <h6 class="tip">
                                            <asp:Literal ID="litSmtpNextScreen" runat="server" meta:resourcekey="litSmtpNextScreen" />
                                        </h6>
                                        <p>
                                            <asp:Literal ID="litSmtpNextScreenText" runat="server" meta:resourcekey="litSmtpNextScreenText" />
                                        </p>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="content">
                            <div class="block">
                                <h3>
                                    <asp:Literal runat="server" meta:resourceKey="litStoreAdministratorTitle" /></h3>
                                <div>
                                    <asp:ValidationSummary runat="server" ValidationGroup="vgStoreAdministrator" HeaderText="<%$ Resources:Global, ErrorMsgText %>" />
                                    <div class="field inline">
                                        <asp:Label runat="server" AssociatedControlID="tbxAdministratorUserName" meta:resourceKey="lblAdministratorUserName" />
                                        <asp:TextBox runat="server" ID="tbxAdministratorUserName" MaxLength="50" Text="admin" />
                                        <asp:RequiredFieldValidator ID="rfvAdministratorUserName" runat="server" ControlToValidate="tbxAdministratorUserName" meta:resourceKey="rfvAdministratorUserName" ValidationGroup="vgStoreAdministrator" />
                                        <asp:RegularExpressionValidator ID="revAdministratorUserNameLength" runat="server" ControlToValidate="tbxAdministratorUserName" meta:resourceKey="revAdministratorUserNameLength" ValidationGroup="vgStoreAdministrator" />
                                    </div>
                                    <div class="field inline break">
                                        <asp:Label runat="server" AssociatedControlID="tbxAdministratorEmail" meta:resourceKey="lblAdministratorEmail" />
                                        <asp:TextBox runat="server" ID="tbxAdministratorEmail" MaxLength="50" />
                                        <asp:RequiredFieldValidator runat="server" ControlToValidate="tbxAdministratorEmail" meta:resourceKey="rfvAdministratorEmail" ValidationGroup="vgStoreAdministrator" />
                                        <asp:RegularExpressionValidator runat="server" ControlToValidate="tbxAdministratorEmail" meta:resourceKey="revAdministratorEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="vgStoreAdministrator" />
                                    </div>
                                    <div class="field inline break">
                                        <asp:Label runat="server" AssociatedControlID="tbxAdministratorPassword" meta:resourceKey="lblAdministratorPassword" />
                                        <asp:TextBox runat="server" ID="tbxAdministratorPassword" TextMode="Password" MaxLength="250" />
                                        <asp:RequiredFieldValidator runat="server" ControlToValidate="tbxAdministratorPassword" meta:resourceKey="rfvAdministratorPassword" ValidationGroup="vgStoreAdministrator" />
                                        <asp:RegularExpressionValidator ID="revAdministratorPasswordLength" runat="server" ControlToValidate="tbxAdministratorPassword" ValidationGroup="vgStoreAdministrator" />
                                    </div>
                                    <div class="field inline break">
                                        <asp:Label runat="server" AssociatedControlID="tbxConfirmAdministratorPassword" meta:resourceKey="lblConfirmAdministratorPassword" />
                                        <asp:TextBox runat="server" ID="tbxConfirmAdministratorPassword" TextMode="Password" MaxLength="250" />
                                        <asp:RequiredFieldValidator runat="server" ControlToValidate="tbxConfirmAdministratorPassword" meta:resourceKey="rfvConfirmAdministratorPassword" ValidationGroup="vgStoreAdministrator" />
                                        <asp:CompareValidator runat="server" ControlToCompare="tbxAdministratorPassword" ControlToValidate="tbxConfirmAdministratorPassword" meta:resourceKey="cvConfirmAdministratorPassword"
                                            ValidationGroup="vgStoreAdministrator" />
                                    </div>
                                    <div class="buttons">
                                        <ul>
                                            <li>
                                                <asp:LinkButton runat="server" ID="lbtnBackToStoreParameters" OnClick="lbtnBackToStoreParameters_Click" Text="<%$ resources:global, Back %>" SkinID="Minor" />
                                            </li>
                                            <li>
                                                <asp:LinkButton runat="server" ID="lbtnGoToTechnicalSettings" OnClick="lbtnGoToTechnicalSettings_Click" meta:resourceKey="lbtnGoToTechnicalSettings" SkinID="Major"
                                                    ValidationGroup="vgStoreAdministrator" />
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </asp:View>
                <asp:View runat="server" ID="vTechnicalSettings">
                    <div class="loader">
                        <p>
                            <asp:Literal runat="server" meta:resourcekey="litLoading" />
                        </p>
                    </div>
                    <p class="breadCrumb">
                        <asp:Literal runat="server" meta:resourceKey="litWizardTitleRoot" />

                        <asp:Literal runat="server" meta:resourceKey="litWizardTitleTechnicalSettings" />
                    </p>
                    <div class="step">
                        <div class="block help">
                            <h3>
                                <asp:Literal runat="server" meta:resourcekey="litHelp" /></h3>
                            <div>
                                <ul>
                                    <li>
                                        <h6 class="warning">
                                            <asp:Literal ID="litSqlWarning" runat="server" meta:resourcekey="litSqlWarning" />
                                        </h6>
                                        <p>
                                            <asp:Literal ID="litSqlWarningText" runat="server" meta:resourcekey="litSqlWarningText" />
                                        </p>
                                    </li>
                                    <li>
                                        <h6 class="tip">
                                            <asp:Literal ID="litSqlExpress" runat="server" meta:resourcekey="litSqlExpress" />
                                        </h6>
                                        <p>
                                            <asp:Literal ID="litSqlExpressText" runat="server" meta:resourcekey="litSqlExpressText" />
                                        </p>
                                    </li>
                                    <li>
                                        <h6 class="tip">
                                            <asp:Literal runat="server" meta:resourcekey="litDatabaseAdministrationCredentials" />
                                        </h6>
                                        <p>
                                            <asp:Literal runat="server" meta:resourcekey="litDatabaseAdministrationCredentialsText" />
                                        </p>
                                    </li>
                                    <li>
                                        <h6 class="tip">
                                            <asp:Literal runat="server" meta:resourcekey="litDatabaseAccessCredentialsHelp" />
                                        </h6>
                                        <p>
                                            <asp:Literal runat="server" meta:resourcekey="litDatabaseAccessCredentialsHelpText" ID="litDatabaseAccessCredentialsHelpText" />
                                        </p>
                                    </li>
                                    <li>
                                        <h6 class="tip">
                                            <asp:Literal runat="server" meta:resourcekey="litTechnicalSettingsAdvancedParameters" />
                                        </h6>
                                        <p>
                                            <asp:Literal runat="server" meta:resourcekey="litTechnicalSettingsAdvancedParametersText" />
                                        </p>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="content">
                            <div class="block">
                                <h3>
                                    <asp:Literal runat="server" meta:resourceKey="litTechnicalSettingsTitle" /></h3>
                                <div>
                                    <fieldset>
                                        <legend>
                                            <asp:Literal runat="server" meta:resourceKey="litSqlServerSettingsTitle" />
                                        </legend>
                                        <asp:ValidationSummary runat="server" ValidationGroup="vgTechnicalSettings" HeaderText="<%$ Resources:Global, ErrorMsgText %>" />
                                        <p id="pSuccess" class="success" runat="server" visible="false" enableviewstate="false">
                                            <asp:Literal ID="litSuccess" runat="server" />
                                        </p>
                                        <p id="pFailure" class="message error" runat="server" visible="false" enableviewstate="false">
                                            <asp:Literal ID="litFailure" runat="server" />
                                        </p>
                                        <h3>
                                            <asp:Literal ID="litSqlServerAdministration" runat="server" meta:resourcekey="litSqlServerAdministration" />
                                        </h3>
                                        <p>
                                            <asp:Literal runat="server" ID="litSqlServerName" meta:resourceKey="litSqlServerName" />
                                        </p>
                                        <div class="field inline break-after">
                                            <asp:Label ID="lblSqlServerName" runat="server" AssociatedControlID="tbSqlServerName" meta:resourcekey="lblSqlServerName" />
                                            <asp:TextBox ID="tbSqlServerName" runat="server" Text=".\sqlexpress" />
                                            <asp:RequiredFieldValidator ID="rfvSqlServerName" runat="server" ControlToValidate="tbSqlServerName" ValidationGroup="vgTechnicalSettings" meta:resourcekey="rfvSqlServerName" />
                                        </div>
                                        <h3>
                                            <asp:Literal ID="litUseSqlExpress" runat="server" meta:resourcekey="litUseSqlExpress" />
                                        </h3>
                                        <div class="field inline break break-after">
                                            <asp:RadioButtonList ID="rblUseSqlExpress" runat="server" OnSelectedIndexChanged="rblUseSqlExpress_SelectedIndexChanged" AutoPostBack="True">
                                                <asp:ListItem meta:resourcekey="rblliUseSqlExpress" Value="True" Selected="True" />
                                                <asp:ListItem meta:resourcekey="rblliManuallyConfigureSqlServer" Value="False" />
                                            </asp:RadioButtonList>
                                        </div>
                                        <asp:PlaceHolder runat="server" ID="phSqlServerSettings" Visible="false">
                                            <div class="block">
                                                <h3>
                                                    <asp:Literal ID="litExistingOrNewDatabase" runat="server" meta:resourcekey="litExistingOrNewDatabase" />
                                                </h3>
                                                <div class="content">
                                                    <div class="field inline">
                                                        <asp:RadioButtonList ID="rblExistingOrNewDatabase" runat="server" OnSelectedIndexChanged="ExistingOrNewDatabase_SelectedIndexChanged" AutoPostBack="True">
                                                            <asp:ListItem meta:resourcekey="rblliNewDatabase" Value="NewDatabase" Selected="True" />
                                                            <asp:ListItem meta:resourcekey="rblliExistingEmptyDatabase" Value="ExistingEmptyDatabase" />
                                                            <asp:ListItem meta:resourcekey="rblliExistingDatabase" Value="ExistingDatabase" Enabled="false" />
                                                        </asp:RadioButtonList>
                                                        <asp:RequiredFieldValidator ID="rfvExistingOrNewDatabase" runat="server" ControlToValidate="rblExistingOrNewDatabase" ValidationGroup="vgTechnicalSettings"
                                                            meta:resourcekey="rfvExistingOrNewDatabase" />
                                                    </div>
                                                    <div class="field inline break break-after">
                                                        <asp:Label ID="lblDatabaseName" runat="server" AssociatedControlID="tbxDatabaseName" meta:resourcekey="lblDatabaseName" />
                                                        <asp:TextBox ID="tbxDatabaseName" runat="server" Text="Magelia_WebStore" />
                                                        <asp:RequiredFieldValidator ID="rfvDatabaseName" runat="server" ControlToValidate="tbxDatabaseName" ValidationGroup="vgTechnicalSettings" meta:resourceKey="rfvDatabaseName" />
                                                    </div>
                                                    <asp:Panel ID="pnlDatabaseAdminCred" CssClass="block" runat="server">
                                                        <h3>
                                                            <asp:Literal ID="litDatabaseAdminCred" runat="server" meta:resourcekey="litDatabaseAdminCred" />
                                                        </h3>
                                                        <div class="content">
                                                            <div class="field inline break-after">
                                                                <asp:RadioButtonList ID="rblDatabaseAdminCred" runat="server" OnSelectedIndexChanged="rblDatabaseAdminCred_SelectedIndexChanged" AutoPostBack="True">
                                                                    <asp:ListItem meta:resourcekey="rblliWindowsAuthMethod" Value="Windows" />
                                                                    <asp:ListItem meta:resourcekey="rblliSqlServerAccountMethod" Value="SQL" Selected="True" />
                                                                </asp:RadioButtonList>
                                                                <asp:RequiredFieldValidator ID="rfvDatabaseAdminCred" runat="server" ControlToValidate="rblDatabaseAdminCred" ValidationGroup="vgTechnicalSettings" meta:resourcekey="rfvDatabaseAdminCred" />
                                                            </div>
                                                            <asp:Panel ID="pnlDatabaseAdminCredSqlServerAccount" runat="server">
                                                                <div class="field inline">
                                                                    <asp:Label ID="lblAdminCredUsername" runat="server" AssociatedControlID="tbAdminCredUsername" meta:resourcekey="lblAdminCredUsername" />
                                                                    <asp:TextBox ID="tbAdminCredUsername" runat="server" Text="sa" />
                                                                </div>
                                                                <div class="field inline break">
                                                                    <asp:Label ID="lblAdminCredPassword" runat="server" AssociatedControlID="tbAdminCredPassword" meta:resourcekey="lblAdminCredPassword" />
                                                                    <asp:TextBox ID="tbAdminCredPassword" runat="server" TextMode="Password" />
                                                                    <asp:RequiredFieldValidator ID="rfvAdminCredUsername" runat="server" ControlToValidate="tbAdminCredUsername" ValidationGroup="vgTechnicalSettings" meta:resourcekey="rfvUsernameCredRequired" />
                                                                    <asp:RequiredFieldValidator ID="rfvAdminCredPassword" runat="server" ControlToValidate="tbAdminCredPassword" ValidationGroup="vgTechnicalSettings" meta:resourcekey="rfvPasswordCredRequired" />
                                                                </div>
                                                            </asp:Panel>
                                                            <div class="buttons">
                                                                <ul>
                                                                    <li>
                                                                        <asp:LinkButton ID="bnTestAdminDatabaseConnection" runat="server" meta:resourcekey="bnTestDatabaseConnection" OnClick="TestAdminDatabaseConnection_Click"
                                                                            SkinID="Minor" ValidationGroup="vgTechnicalSettings" />
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </asp:Panel>
                                                </div>
                                            </div>
                                            <div class="block">
                                                <h3>
                                                    <asp:Literal ID="litDatabaseAccessCredentials" runat="server" meta:resourcekey="litDatabaseAccessCredentials" />
                                                </h3>
                                                <div class="content">
                                                    <p>
                                                        <asp:Literal runat="server" meta:resourceKey="litWebStoreAccountExplanation" />
                                                    </p>
                                                    <div class="field inline break-after">
                                                        <asp:RadioButtonList ID="rblDatabaseAccessCred" runat="server" OnSelectedIndexChanged="rblDatabaseAccessCred_SelectedIndexChanged" AutoPostBack="True">
                                                            <asp:ListItem meta:resourcekey="rblliWindowsAuthMethod" Value="Windows" />
                                                            <asp:ListItem meta:resourcekey="rblliSqlServerAccountMethod" Value="SQL" />
                                                        </asp:RadioButtonList>
                                                        <asp:RequiredFieldValidator ID="rfvDatabaseAccessCred" runat="server" ControlToValidate="rblDatabaseAccessCred" ValidationGroup="vgTechnicalSettings" meta:resourcekey="rfvDatabaseAccessCred" />
                                                    </div>
                                                    <asp:Panel ID="pnlDatabaseAccessCredSqlServerAccount" runat="server" Visible="false">
                                                        <div class="field inline">
                                                            <asp:Label ID="lblAccessCredUsername" runat="server" AssociatedControlID="tbAccessCredUsername" meta:resourcekey="lblAccessCredUsername" />
                                                            <asp:TextBox ID="tbAccessCredUsername" runat="server" />
                                                        </div>
                                                        <div class="field inline breal">
                                                            <asp:Label ID="lblAccessCredPassword" runat="server" AssociatedControlID="tbAccessCredPassword" meta:resourcekey="lblAccessCredPassword" />
                                                            <asp:TextBox ID="tbAccessCredPassword" runat="server" TextMode="Password" />
                                                            <asp:RequiredFieldValidator ID="rfvAccessCredUsername" runat="server" ControlToValidate="tbAccessCredUsername" ValidationGroup="vgTechnicalSettings" meta:resourcekey="rfvUsernameCredRequired" />
                                                            <asp:RequiredFieldValidator ID="rfvAccessCredPassword" runat="server" ControlToValidate="tbAccessCredPassword" ValidationGroup="vgTechnicalSettings" meta:resourcekey="rfvPasswordCredRequired" />
                                                        </div>
                                                    </asp:Panel>
                                                    <div class="buttons">
                                                        <ul>
                                                            <li>
                                                                <asp:LinkButton ID="bnTestDatabaseConnection" runat="server" meta:resourcekey="bnTestDatabaseConnection" OnClick="TestDatabaseConnection_Click" SkinID="Minor"
                                                                    ValidationGroup="vgTechnicalSettings" />
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </asp:PlaceHolder>
                                    </fieldset>
                                    <fieldset>
                                        <legend>
                                            <asp:Literal runat="server" meta:resourceKey="litWebServicesAccessPolicy" />
                                        </legend>
                                        <div class="field inline break-after">
                                            <asp:CheckBox ID="cbAllowRemoteConnection" runat="server" meta:resourcekey="cbAllowRemoteConnection" />
                                        </div>
                                    </fieldset>
                                    <fieldset class="advanceParameters">
                                        <legend>
                                            <asp:Literal runat="server" meta:resourceKey="litTechnicalSettingsAdvanceParameters" /></legend>
                                        <div>
                                            <div class="inline">
                                                <asp:CheckBox runat="server" TextAlign="Right" meta:resourceKey="cbxUseSmtpMachineConfiguration" ID="cbxUseSmtpMachineConfiguration" Checked="true" />
                                            </div>
                                            <div id="pnlSmtpSettings">
                                                <div class="field inline">
                                                    <asp:Label runat="server" meta:resourceKey="lblSmtpEmailSender" AssociatedControlID="tbxSmtpEmailSender" />
                                                    <asp:TextBox runat="server" ID="tbxSmtpEmailSender" />
                                                </div>
                                                <div class="field inline break">
                                                    <asp:Label runat="server" meta:resourceKey="lblSmtpServer" AssociatedControlID="tbxSmtpServer" />
                                                    <asp:TextBox runat="server" ID="tbxSmtpServer" />
                                                    <asp:CustomValidator ID="cvSmtpServerRequired" runat="server" ValidateEmptyText="true" ControlToValidate="tbxSmtpServer" OnServerValidate="cvSmtpServerRequired_ServerValidate"
                                                        meta:resourcekey="cvSmtpServerRequired" ValidationGroup="vgTechnicalSettings" />
                                                </div>
                                                <div class="field inline break">
                                                    <asp:Label runat="server" meta:resourceKey="lblSmtpPort" AssociatedControlID="tbxSmtpPort" />
                                                    <asp:TextBox runat="server" ID="tbxSmtpPort" Text="25" />
                                                    <asp:CompareValidator runat="server" ControlToValidate="tbxSmtpPort" ValidationGroup="vgTechnicalSettings" Type="Integer" Operator="DataTypeCheck" meta:resourceKey="cvSmtpPort" />
                                                </div>
                                                <div class="field inline break">
                                                    <asp:Label ID="lblSmtpUseSsl" runat="server" meta:resourceKey="lblSmtpUseSsl" AssociatedControlID="cbxSmtpUseSsl" />
                                                    <asp:CheckBox runat="server" ID="cbxSmtpUseSsl" />
                                                </div>
                                                <div class="field inline break break-after">
                                                    <asp:Label runat="server" meta:resourceKey="lblSmtpAuthenticationMode" AssociatedControlID="rblSmtpAuthenticationMode" />
                                                    <asp:RadioButtonList runat="server" ID="rblSmtpAuthenticationMode" RepeatDirection="Horizontal">
                                                        <asp:ListItem Value="0" meta:resourceKey="liSmtpNoneAuthentication" Selected="True" />
                                                        <asp:ListItem Value="1" meta:resourceKey="liSmtpBasicAuthentication" />
                                                    </asp:RadioButtonList>
                                                </div>
                                                <div id="pnlSmtpBasicAuthentication">
                                                    <div class="field inline">
                                                        <asp:Label runat="server" meta:resourceKey="lblSmtpBasicAuthenticationUserName" AssociatedControlID="tbxSmtpBasicAuthenticationUserName" />
                                                        <asp:TextBox runat="server" ID="tbxSmtpBasicAuthenticationUserName" />
                                                    </div>
                                                    <div class="field inline break">
                                                        <asp:Label runat="server" meta:resourceKey="lblSmtpBasicAuthenticationPassword" AssociatedControlID="tbxSmtpBasicAuthenticationPassword" />
                                                        <asp:TextBox runat="server" ID="tbxSmtpBasicAuthenticationPassword" TextMode="Password" />
                                                    </div>
                                                </div>
                                            </div>
                                            <asp:UpdatePanel runat="server">
                                                <ContentTemplate>
                                                    <div class="inline">
                                                        <asp:CheckBox runat="server" TextAlign="Right" meta:resourceKey="cbxSpecifyCollation" ID="cbxSpecifyCollation" Checked="true" AutoPostBack="true" OnCheckedChanged="cbxUseInstanceCollation_CheckedChanged" />
                                                    </div>
                                                    <asp:Panel runat="server" ID="pnlCollation" Visible="true">
                                                        <div class="field inline break">
                                                            <asp:Label ID="lblCollationName" runat="server" meta:resourceKey="lblCollationName" AssociatedControlID="tbxCollationName" />
                                                            <asp:TextBox runat="server" ID="tbxCollationName" />
                                                            <asp:RequiredFieldValidator ID="rfvCollationName" runat="server" ControlToValidate="tbxCollationName" meta:resourceKey="rfvCollationName" ValidationGroup="vgTechnicalSettings" />
                                                        </div>
                                                    </asp:Panel>
                                                </ContentTemplate>
                                            </asp:UpdatePanel>
                                        </div>
                                    </fieldset>
                                    <div class="buttons">
                                        <ul>
                                            <li>
                                                <asp:LinkButton runat="server" ID="lbtnBackToStoreAdministrator" OnClick="lbtnBackToStoreAdministrator_Click" Text="<%$ resources:global, Back %>" SkinID="Minor" />
                                            </li>
                                            <li>
                                                <asp:LinkButton runat="server" ID="lbtnInstall" OnClick="lbtnInstall_Click" meta:resourceKey="lbtnInstall" SkinID="Major" ValidationGroup="vgTechnicalSettings" />
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </asp:View>
                <asp:View runat="server" ID="vInstallationProgress">
                    <p class="breadCrumb">
                        <asp:Literal runat="server" meta:resourceKey="litWizardTitleRoot" />
                        <asp:Literal runat="server" meta:resourceKey="litWizardTitleSetupStatus" />
                    </p>
                    <div class="step">
                        <div class="content install">
                            <div class="block">
                                <h3>
                                    <asp:Literal ID="litSetupStatusTitle" runat="server" meta:resourcekey="litSetupStatusTitle" /></h3>
                                <div>
                                    <asp:Panel runat="server" CssClass="summary" meta:resourceKey="pnlConfigurationSummary">
                                        <asp:Panel runat="server" ID="pnlSummaryDatabase">
                                            <strong>
                                                <asp:Literal runat="server" meta:resourcekey="litSqlServer" />
                                            </strong><span>
                                                <asp:Literal runat="server" ID="litSqlServer" />
                                            </span><strong>
                                                <asp:Literal runat="server" meta:resourcekey="litSqlUseExistingDatabase" />
                                            </strong><span>
                                                <asp:Literal runat="server" ID="litSqlUseExistingDatabase" />
                                            </span><strong>
                                                <asp:Literal runat="server" meta:resourcekey="litSqlDatabase" />
                                            </strong><span>
                                                <asp:Literal runat="server" ID="litSqlDatabase" />
                                            </span>
                                        </asp:Panel>
                                        <asp:Panel runat="server" ID="pnlSummaryNewDatabase">

                                            <strong>
                                                <asp:Literal runat="server" meta:resourcekey="litSellerName" />
                                            </strong><span>
                                                <asp:Literal runat="server" ID="litSellerName" />
                                            </span><strong>
                                                <asp:Literal runat="server" meta:resourcekey="litStoreName" />
                                            </strong><span>
                                                <asp:Literal runat="server" ID="litStoreName" /></span>
                                            <strong>
                                                <asp:Literal runat="server" meta:resourcekey="litInstallConfiguration" /></strong><span>
                                                    <asp:Literal runat="server" ID="litInstallConfiguration" /></span><strong><asp:Literal runat="server" meta:resourcekey="litAdministratorUsername" />
                                                    </strong><span>
                                                        <asp:Literal runat="server" ID="litAdministratorUsername" /></span><strong>
                                                            <asp:Literal runat="server" meta:resourcekey="litAdministratorEmail" />
                                                        </strong><span>
                                                            <asp:Literal runat="server" ID="litAdministratorEmail" /></span>
                                        </asp:Panel>
                                    </asp:Panel>
                                    <div class="loading">
                                        <asp:UpdatePanel runat="server" ID="upnlInstallationDetail" UpdateMode="Always">
                                            <Triggers>
                                                <asp:PostBackTrigger ControlID="lbtnBackToTechnicalSettings" />
                                            </Triggers>
                                            <ContentTemplate>
                                                <asp:Panel runat="server" meta:resourceKey="pnlDetail" CssClass="detail">
                                                    <asp:MultiView runat="server" ID="mvPostStepAction" ActiveViewIndex="0">
                                                        <asp:View runat="server">
                                                            <asp:Label runat="server" ID="lblPleaseWait" meta:resourceKey="lblPleaseWait" />
                                                            <br />
                                                            <asp:Label runat="server" ID="lblProgressText" meta:resourceKey="lblProgressText" />
                                                            <div class="progressBar"></div>
                                                        </asp:View>
                                                        <asp:View runat="server">
                                                            <p>
                                                                <asp:Literal ID="litSetupStatusDescription" runat="server" meta:resourcekey="litSetupStatusDescription" />
                                                            </p>
                                                        </asp:View>
                                                        <asp:View runat="server">
                                                            <p class="message error">
                                                                <asp:Label runat="server" ID="lblMessage" />
                                                            </p>
                                                            <asp:PlaceHolder runat="server" ID="phMessageDetail" Visible="false">
                                                                <blockquote class="message error">
                                                                    <asp:Literal runat="server" ID="litErrorDetail" Mode="Encode" />
                                                                </blockquote>
                                                            </asp:PlaceHolder>
                                                            <asp:Label runat="server" ID="lblProgressTextDuringMessage" meta:resourceKey="lblProgressText" />
                                                            <div class="progressBar progressStop"></div>
                                                            <div class="buttons">
                                                                <ul>
                                                                    <asp:PlaceHolder runat="server" ID="phBackToTechnicalSettings" Visible="false">
                                                                        <li>
                                                                            <asp:LinkButton runat="server" ID="lbtnBackToTechnicalSettings" OnClick="lbtnBackToTechnicalSettings_Click" Text="<%$ resources:global, Back %>" SkinID="Minor" />
                                                                        </li>
                                                                    </asp:PlaceHolder>
                                                                    <li>
                                                                        <asp:LinkButton runat="server" ID="lbtnRetry" OnClick="lbtnRetry_click" meta:resourcekey="lbtnRetry" SkinID="Major" />
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </asp:View>
                                                    </asp:MultiView>
                                                    <asp:LinkButton runat="server" ID="lbtnAutoNextStep" ClientIDMode="Static" OnClick="lbtnNextStep_Click" Text="Auto" CssClass="hidden" />
                                                </asp:Panel>
                                            </ContentTemplate>
                                        </asp:UpdatePanel>
                                    </div>
                                    <div class="detail">
                                        <p>
                                            <asp:UpdatePanel ID="upnlContactUsHelp" runat="server" ClientIDMode="Static" UpdateMode="Always" RenderMode="Inline">
                                                <ContentTemplate>
                                                    <asp:PlaceHolder ID="phContactUsHelp" runat="server" Visible="false">
                                                        <asp:HyperLink ID="hlContactUsHelp" runat="server" meta:resourceKey="hlContactUsHelp" Target="_blank" />
                                                        - 
                                                    </asp:PlaceHolder>
                                                </ContentTemplate>
                                            </asp:UpdatePanel>
                                            <a href="#" id="hideDetail" style="display: none;">
                                                <asp:Literal runat="server" meta:resourceKey="litHideDetail" /></a>
                                            <a href="#" id="showDetail">
                                                <asp:Literal runat="server" meta:resourceKey="litShowDetail" /></a>
                                        </p>
                                        <asp:UpdatePanel ID="upnlInstallation" runat="server" ClientIDMode="Static" UpdateMode="Always" style="display: none;">
                                            <ContentTemplate>
                                                <asp:GridView ID="gvSetupStatus" runat="server" AutoGenerateColumns="false" AllowPaging="false" CssClass="gridView">
                                                    <Columns>
                                                        <asp:TemplateField meta:resourcekey="tfStatus">
                                                            <ItemTemplate>
                                                                <asp:MultiView ActiveViewIndex='<%# Eval("Status") %>' ID="Status" runat="server">
                                                                    <asp:View runat="server">
                                                                        <asp:Image runat="server" SkinID="Pending" />
                                                                    </asp:View>
                                                                    <asp:View runat="server">
                                                                        <asp:Image runat="server" SkinID="Loading" />
                                                                    </asp:View>
                                                                    <asp:View runat="server">
                                                                        <asp:Image runat="server" SkinID="Success" />
                                                                    </asp:View>
                                                                    <asp:View runat="server">
                                                                        <asp:Image runat="server" SkinID="Warning" />
                                                                    </asp:View>
                                                                    <asp:View runat="server">
                                                                        <asp:Image runat="server" SkinID="Error" />
                                                                    </asp:View>
                                                                </asp:MultiView>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                    </Columns>
                                                    <Columns>
                                                        <asp:BoundField DataField="Code" meta:resourcekey="bfCode" />
                                                    </Columns>
                                                    <Columns>
                                                        <asp:TemplateField meta:resourcekey="bfMessage">
                                                            <ItemTemplate>
                                                                <div class="report">
                                                                    <pre><%#String.Join("\r\n", ((List<String>)Eval("Messages")).ToArray()) %></pre>
                                                                </div>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                    </Columns>
                                                </asp:GridView>
                                            </ContentTemplate>
                                        </asp:UpdatePanel>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </asp:View>
            </asp:MultiView>
        </div>
        <div class="footer">
            <table>
                <tbody>
                    <tr>
                        <td>
                            <asp:HyperLink runat="server" Target="_blank" NavigateUrl="http://www.magelia.org">
                                <asp:Image runat="server" SkinID="Magelia" AlternateText="Magelia WebStore" /></asp:HyperLink></td>
                        <td>&copy; Magelia 2014</td>
                        <td>
                            <asp:HyperLink ID="hlLicense" meta:resourcekey="hlLicense" runat="server" Target="_blank" />
                            |
        <asp:Literal ID="litVersion" runat="server" /></td>
                    </tr>
                </tbody>
            </table>
        </div>
    </form>
</body>
</html>
