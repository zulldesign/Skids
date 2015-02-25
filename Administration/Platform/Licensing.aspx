<%@ Page Title="" Language="C#" MasterPageFile="~/App_Masters/DefaultLayout.Master" AutoEventWireup="true" CodeBehind="Licensing.aspx.cs" Inherits="Magelia.WebStore.Admin.Administration.Platform.Licensing" %>

<asp:Content ContentPlaceHolderID="cphBarTitle" runat="server">
    <asp:Literal runat="server" meta:resourcekey="litLicensing" />
</asp:Content>
<asp:Content ContentPlaceHolderID="cphBarContent" runat="server">
</asp:Content>
<asp:Content ContentPlaceHolderID="cphBody" runat="server">
    <mag:TabStrip runat="server" MultiViewID="mvLicensing">
        <TabItems>
            <mag:TabItem meta:resourceKey="mtiLicenseInformation" />
            <mag:TabItem meta:resourceKey="mtiRenewLicense" />
        </TabItems>
    </mag:TabStrip>
    <div class="form">
        <asp:MultiView ID="mvLicensing" runat="server" ActiveViewIndex="0">
            <asp:View runat="server">
                <fieldset>
                    <legend>
                        <asp:Literal runat="server" meta:resourceKey="litLicense" /></legend>
                    <mag:DynamicControl ID="dcLicenseGeneralInfo" runat="server" />
                    <mag:LicenseFeatureInformation runat="server" ID="mLicenseFeatureInfo" />
                </fieldset>
            </asp:View>
            <asp:View runat="server">
                <asp:Panel runat="server" ID="pnlTemporaryLicense" meta:resourceKey="pnlTemporaryLicense" Visible="false">
                    <p>
                        <asp:Literal runat="server" meta:resourceKey="litActivateIntro" />
                    </p>
                    <p>
                        <asp:Literal runat="server" meta:resourceKey="litActivateDescription" />
                    </p>
                    <div class="buttons">
                        <ul>
                            <li>
                                <asp:LinkButton runat="server" SkinID="Major" ID="lbtnActivate" OnClick="lbtnActivate_click" meta:resourceKey="lbtnActivate" />
                            </li>
                        </ul>
                    </div>
                </asp:Panel>
                <fieldset>
                    <legend>
                        <asp:Literal runat="server" meta:resourceKey="litPurchaseOrRenew" /></legend>
                    <p>
                        <asp:Literal runat="server" meta:resourceKey="litPurchaseIntro" />
                    </p>
                    <div class="buttons">
                        <ul>
                            <li>
                                <asp:LinkButton runat="server" SkinID="Major" ID="lbtnRedirectToStore" OnClick="lbtnRedirectToStore_click" meta:resourceKey="lbtnRedirectToStore" />
                            </li>
                        </ul>
                    </div>
                </fieldset>
                <fieldset>
                    <legend>
                        <asp:Literal runat="server" meta:resourceKey="litSubmitLicenseFile" /></legend>
                    <asp:ValidationSummary runat="server" ValidationGroup="vgSendLicense" HeaderText="<%$ Resources:Global, ErrorMsgText %>" />
                    <p>
                        <asp:Literal runat="server" meta:resourceKey="litSubmitLicenseFileIntro" />
                    </p>
                    <div class="field inline">
                        <asp:Label runat="server" AssociatedControlID="fuLicenseFile" meta:resourceKey="lblLicenseFile" />
                        <asp:FileUpload runat="server" ID="fuLicenseFile" />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="fuLicenseFile" meta:resourceKey="rfvLicenseFile" ValidationGroup="vgSendLicense" />
                        <asp:CustomValidator ID="cvLicenseFile" runat="server" ValidationGroup="vgSendLicense" OnServerValidate="cvLicenseFile_ServerValidate" meta:resourceKey="cvLicenseFile" />
                    </div>
                    <div class="buttons">
                        <ul>
                            <li>
                                <asp:LinkButton runat="server" meta:resourceKey="lbtnSendLicenseFile" OnClick="lbtnSendLicenseFile_Click" SkinID="Minor" ValidationGroup="vgSendLicense" />
                            </li>
                        </ul>
                    </div>
                    <asp:Panel runat="server" ID="pnlLicenseDetails" Visible="false" EnableViewState="false" SkinID="Popin">
                        <script type="text/javascript">
                            $(function () {
                                $('#<%=pnlLicenseDetails.ClientID %>').popin('open');
                            });
                        </script>
                        <header>
                            <h4>
                                <asp:Literal runat="server" ID="litLicenseDetailsThank" meta:resourceKey="litLicenseDetailsThank" />
                            </h4>
                        </header>
                        <div>
                            <mag:LicenseFeatureInformation runat="server" ID="mSubmittedLicenseFeatureInfo" />
                            <div class="buttons">
                                <ul>
                                    <li>
                                        <asp:LinkButton runat="server" ID="lbtnConfirmLicense" OnClick="lbtnConfirmLicense_Click" meta:resourceKey="lbtnConfirmLicense" SkinID="Major" />
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </asp:Panel>
                </fieldset>
            </asp:View>
        </asp:MultiView>
    </div>
</asp:Content>
