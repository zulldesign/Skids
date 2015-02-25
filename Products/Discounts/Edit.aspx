<%@ Page Title="" Language="C#" MasterPageFile="~/App_Masters/DefaultLayout.Master" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="Magelia.WebStore.Admin.Products.Discounts.Edit" %>

<asp:Content ContentPlaceHolderID="cphBarTitle" runat="server">
    <asp:Literal ID="litDiscount" runat="server" meta:resourcekey="litDiscount" />
</asp:Content>
<asp:Content ContentPlaceHolderID="cphBarContent" runat="server">
    <ul>
        <li>
            <asp:HyperLink runat="server" Text='<%$ resources:global, Cancel %>' NavigateUrl="~/Products/Discounts/List.aspx" SkinID="Minor" />
        </li>
        <li id="iSave" runat="server">
            <asp:LinkButton ID="lbtnSave" runat="server" Text='<%$ resources:global, Save %>' SkinID="Major" ValidationGroup="vgDiscount" OnClick="lbtnSave_Click" />
        </li>
    </ul>
</asp:Content>
<asp:Content ContentPlaceHolderID="cphBody" runat="server">
    <asp:ScriptManagerProxy ID="smpDiscounts" runat="server">
        <Scripts>
            <asp:ScriptReference Path="~/Scripts/Libraries/array.extensions.js" />
            <asp:ScriptReference Path="~/Scripts/Plugins/jquery.tmpl.min.js" />
            <asp:ScriptReference Path="~/Scripts/Plugins/jquery.caret.1.02.min.js" />
            <asp:ScriptReference Path="~/Scripts/Components/Discount/Discount.js" />
            <asp:ScriptReference Path="~/Scripts/Components/Discount/Discount.Editor.js" />
            <asp:ScriptReference Path="~/Scripts/Components/Discount/Actions/Discount.Actions.js" />
            <asp:ScriptReference Path="~/Scripts/Components/Discount/Conditions/Discount.Conditions.js" />
        </Scripts>
    </asp:ScriptManagerProxy>
    <asp:ValidationSummary runat="server" ValidationGroup="vgDiscount" HeaderText='<%$ Resources: Global, ErrorMsgText %>' />
    <asp:ValidationSummary runat="server" ValidationGroup="vgDiscountModel" HeaderText='<%$ Resources: Global, ErrorMsgText %>' />
    <asp:ValidationSummary runat="server" ValidationGroup="vgTag" HeaderText='<%$ Resources: Global, ErrorMsgText %>' />
    <mag:TabStrip ID="mtsDiscount" runat="server" MultiViewID="mvDiscount" ValidationGroup="vgDiscount">
        <TabItems>
            <mag:TabItem meta:resourcekey="mtiGeneral" />
            <mag:TabItem meta:resourcekey="mtiConditions" />
            <mag:TabItem meta:resourcekey="mtiActions" />
            <mag:TabItem meta:resourceKey="mtiContentItems" Text='<%$ resources:global, ContentItems %>' />
        </TabItems>
    </mag:TabStrip>
    <div class="form">
        <asp:MultiView ID="mvDiscount" runat="server" ActiveViewIndex="0">
            <asp:View runat="server">
                <script type="text/javascript">
                    Magelia.WebStore.HelpManager.Instance.setSubPath('general');
                </script>
                <fieldset>
                    <legend>
                        <asp:Literal runat="server" Text='<%$ resources:global, Properties %>' />
                    </legend>
                    <div class="field">
                        <asp:Label ID="lblCode" runat="server" meta:resourcekey="lblCode" AssociatedControlID="tbxCode" />
                        <asp:TextBox ID="tbxCode" runat="server" />
                        <asp:RequiredFieldValidator ID="rfvCode" runat="server" meta:resourcekey="rfvCode" ControlToValidate="tbxCode" ValidationGroup="vgDiscount" />
                        <asp:RegularExpressionValidator ID="revCodeLength" runat="server" meta:resourcekey="revCodeLength" ControlToValidate="tbxCode" ValidationGroup="vgDiscount" ValidationExpression="^.{0,50}$" />
                        <asp:CustomValidator ID="cvCodeIsUnique" runat="server" ControlToValidate="tbxCode" ValidationGroup="vgDiscount" meta:resourcekey="cvCodeIsUnique" OnServerValidate="cvCodeIsUnique_ServerValidate" />
                    </div>
                    <div class="field">
                        <asp:Label ID="lblExternalCode" runat="server" meta:resourcekey="lblExternalCode" AssociatedControlID="tbxExternalCode" />
                        <asp:TextBox ID="tbxExternalCode" runat="server" />
                        <asp:RegularExpressionValidator ID="revExternalCodeLength" runat="server" meta:resourcekey="revExternalCodeLength" ControlToValidate="tbxExternalCode" ValidationGroup="vgDiscount" ValidationExpression="^.{0,50}$" />
                    </div>
                    <div class="field">
                        <asp:Label ID="lblPriority" runat="server" meta:resourcekey="lblPriority" AssociatedControlID="ddlPriority" />
                        <asp:DropDownList ID="ddlPriority" runat="server">
                            <asp:ListItem Value="0" meta:resourcekey="liLow" />
                            <asp:ListItem Value="100" meta:resourcekey="liMedium" />
                            <asp:ListItem Value="1000" meta:resourcekey="liHigh" />
                        </asp:DropDownList>
                    </div>
                    <div class="field">
                        <asp:Label ID="lblIsActive" runat="server" meta:resourcekey="lblIsActive" AssociatedControlID="cbxIsActive" />
                        <asp:CheckBox ID="cbxIsActive" runat="server" Checked="true" />
                    </div>
                    <asp:UpdatePanel runat="server">
                        <ContentTemplate>
                            <div class="field inline break">
                                <asp:Label ID="lblStartDate" runat="server" meta:resourcekey="lblStartDate" AssociatedControlID="mdtpStartDate" />
                                <mag:DateTimePicker ID="mdtpStartDate" runat="server" />
                            </div>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                    <asp:UpdatePanel runat="server">
                        <ContentTemplate>
                            <div class="field inline break">
                                <asp:Label ID="lblEndDate" runat="server" meta:resourcekey="lblEndDate" AssociatedControlID="mdtpEndDate" />
                                <mag:DateTimePicker ID="mdtpEndDate" runat="server" />
                                <asp:CustomValidator ID="cvEndDateGreaterThanStartDate" runat="server" meta:resourcekey="cvEndDateGreaterThanStartDate" ControlToValidate="mdtpEndDate" ValidationGroup="vgDiscount" OnServerValidate="cvEndDateGreaterThanStartDate_ServerValidate" />
                            </div>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </fieldset>
                <fieldset>
                    <legend>
                        <asp:Literal runat="server" Text='<%$ resources:global, Localizations %>' />
                    </legend>
                    <mag:Localizer ID="mlDiscount" runat="server">
                        <localizablefields>
                            <mag:LocalizableField PropertyName="Name" MaxLength="50" Required="true" meta:resourcekey="mlfName" />
                            <mag:LocalizableField PropertyName="Description" Required="false" meta:resourcekey="mlfDescription" Editor="MultiLineString" />
                        </localizablefields>
                    </mag:Localizer>
                </fieldset>
                <fieldset>
                    <legend>
                        <asp:Literal ID="litTags" runat="server" meta:resourcekey="litTags" />
                    </legend>
                    <div class="field inline break-after newTag">
                        <asp:Label ID="lblNewTag" runat="server" meta:resourcekey="lblNewTag" AssociatedControlID="tbxTag" />
                        <asp:TextBox ID="tbxTag" runat="server" />
                        <asp:RequiredFieldValidator ID="rfvTag" runat="server" meta:resourcekey="rfvTag" ControlToValidate="tbxTag" ValidationGroup="vgTag" />
                        <asp:RegularExpressionValidator ID="revTag" runat="server" meta:resourcekey="revTag" ControlToValidate="tbxTag" ValidationGroup="vgTag" ValidationExpression="^.{0,50}$" />
                        <asp:CustomValidator ID="cvTagIsUnique" runat="server" ControlToValidate="tbxTag" ValidationGroup="vgTag" meta:resourcekey="cvTagIsUnique" OnServerValidate="cvTagIsUnique_ServerValidate" />
                        <asp:ImageButton ID="imgbtnTag" runat="server" SkinID="Add" ToolTip='<%$ resources:global,Add %>' OnClick="imgbtnTag_Click" ValidationGroup="vgTag" />
                    </div>
                    <mag:SwapList ID="mslTags" runat="server" meta:resourcekey="mslTags" DataTextField="Tag" DataValueField="DiscountTagId" />
                </fieldset>
                <fieldset id="fsStores" runat="server">
                    <legend>
                        <asp:Literal ID="litStores" runat="server" meta:resourcekey="litStores" />
                    </legend>
                    <asp:UpdatePanel runat="server">
                        <ContentTemplate>
                            <mag:swaplist id="mslStores" runat="server" datatextfield="Code" datavaluefield="StoreId" meta:resourcekey="mslStores" />
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </fieldset>
            </asp:View>
            <asp:View runat="server">
                <script type="text/javascript">
                    Magelia.WebStore.HelpManager.Instance.setSubPath('conditions');
                    $(document).ready(
                        function () {
                            var editor = new Magelia.WebStore.Discount.Editor(
                                {
                                    container: '#bConditions',
                                    hiddenField: '#<%= this.hfDiscount.ClientID %>',
                                    showConditions: true,
                                    showActions: false,
                                    culture: <%= System.Threading.Thread.CurrentThread.CurrentCulture.LCID %>,
                                    canEdit : <%= this.CanEdit.ToString().ToLowerInvariant() %>,
                                    templatesPath: '<%= this.ResolveUrl("~/Scripts/Services/Discount/Templates.ashx") %>'
                                }
                            );
                            editor.run();
                        }
                    );
                </script>
                <div id="bConditions">
                </div>
            </asp:View>
            <asp:View runat="server">
                <script type="text/javascript">
                    Magelia.WebStore.HelpManager.Instance.setSubPath('actions');
                    $(document).ready(
                        function () {
                            var editor = new Magelia.WebStore.Discount.Editor(
                                {
                                    container: '#bActions',
                                    hiddenField: '#<%= this.hfDiscount.ClientID %>',
                                    showConditions: false,
                                    showActions: true,
                                    culture: <%= System.Threading.Thread.CurrentThread.CurrentCulture.LCID %>,
                                    canEdit : <%= this.CanEdit.ToString().ToLowerInvariant() %>,
                                    templatesPath: '<%= this.ResolveUrl("~/Scripts/Services/Discount/Templates.ashx") %>'
                                }
                            );
                            editor.run();
                        }
                    );
                </script>
                <div id="bActions">
                </div>
            </asp:View>
            <asp:View runat="server">
                <mag:AssociatedContentItems ID="mAssociatedContentItems" runat="server" ValidationGroup="vgDiscount" />
            </asp:View>
        </asp:MultiView>
    </div>
    <asp:HiddenField ID="hfDiscount" runat="server" />
    <asp:CustomValidator ID="cvPrecondition" runat="server" meta:resourcekey="cvPrecondition" ValidationGroup="vgDiscountModel" OnServerValidate="cvPrecondition_ServerValidate" />
    <asp:CustomValidator ID="cvAction" runat="server" meta:resourcekey="cvAction" ValidationGroup="vgDiscountModel" OnServerValidate="cvAction_ServerValidate" />
</asp:Content>
