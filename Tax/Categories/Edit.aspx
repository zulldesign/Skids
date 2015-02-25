<%@ Page Title="" Language="C#" MasterPageFile="~/App_Masters/DefaultLayout.Master" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="Magelia.WebStore.Admin.Tax.Categories.Edit" %>

<asp:Content ContentPlaceHolderID="cphBarTitle" runat="server">
    <asp:Literal ID="litTaxCategory" runat="server" meta:resourcekey="litTaxCategory" />
</asp:Content>
<asp:Content ContentPlaceHolderID="cphBarContent" runat="server">
    <ul>
        <li>
            <asp:HyperLink runat="server" SkinID="Minor" NavigateUrl="~/Tax/Categories/List.aspx" Text='<%$ resources:global, Cancel %>' />
        </li>
        <li id="iSave" runat="server">
            <asp:LinkButton ID="lbnSave" runat="server" OnClick="lbnSave_Click" ValidationGroup="vgTaxCategory" Text='<%$ resources:global, Save %>' SkinID="Major" />
        </li>
    </ul>
</asp:Content>
<asp:Content ContentPlaceHolderID="cphBody" runat="server">
    <script type="text/javascript">
        $(document).ready(
            function () {
                var taxTypes = $.parseJSON('<%=this.SerializedTaxTypes%>');
                $('#<%=this.tbxTaxType.ClientID%>').combobox(
                    {
                        valueGetter: 'Code',
                        labelGetter: 'Code',
                        webServiceMethodName: function (value, callBack) {
                            var matches = new Array();
                            for (var i = 0 ; i < taxTypes.length ; i++) {
                                var taxType = taxTypes[i];
                                if (taxType.Code.indexOf(value) >= 0) {
                                    matches.push(taxType);
                                }
                            }
                            callBack(matches);
                        }
                    }
                );
            }
        );
    </script>
    <asp:ValidationSummary runat="server" ValidationGroup="vgTaxCategory" HeaderText="<%$ Resources: Global, ErrorMsgText %>" />
    <mag:TabStrip runat="server" ValidationGroup="vgTaxCategory" MultiViewID="mvGlobal">
        <TabItems>
            <mag:TabItem meta:resourceKey="mtiGeneral" Text='<%$ resources:global, General %>' />
        </TabItems>
    </mag:TabStrip>
    <div class="form">
        <asp:MultiView ID="mvGlobal" runat="server" ActiveViewIndex="0">
            <asp:View runat="server">
                <fieldset>
                    <legend>
                        <asp:Literal runat="server" Text='<%$ resources:Global, Properties %>' />
                    </legend>
                    <div class="field">
                        <asp:Label ID="lblTaxType" runat="server" AssociatedControlID="tbxTaxType" meta:resourcekey="lblTaxType" />
                        <asp:TextBox ID="tbxTaxType" runat="server" />
                        <asp:RequiredFieldValidator ID="rfvTaxTypes" runat="server" ControlToValidate="tbxTaxType" ValidationGroup="vgTaxCategory" meta:resourcekey="rfvTaxTypes" />
                        <asp:RegularExpressionValidator ID="revTaxTypeLength" runat="server" ControlToValidate="tbxTaxType" ValidationExpression="^.{0,50}$" ValidationGroup="vgTaxCategory" meta:resourcekey="revTaxTypeLength" />
                    </div>
                    <div class="field">
                        <asp:Label ID="lblCode" runat="server" AssociatedControlID="tbxCode" meta:resourcekey="lblCode" />
                        <asp:TextBox ID="tbxCode" runat="server" />
                        <asp:RequiredFieldValidator ID="rfvCode" runat="server" ControlToValidate="tbxCode" ValidationGroup="vgTaxCategory" meta:resourcekey="rfvCode" />
                        <asp:RegularExpressionValidator ID="revCodeLength" runat="server" ControlToValidate="tbxCode" ValidationGroup="vgTaxCategory" ValidationExpression="^.{0,50}$" meta:resourcekey="revCodeLength" />
                        <asp:CustomValidator ID="cvCodeIsUnique" runat="server" ValidationGroup="vgTaxCategory" ControlToValidate="tbxCode" OnServerValidate="cvCodeIsUnique_ServerValidate" meta:resourcekey="cvCodeIsUnique" />
                    </div>
                </fieldset>
                <fieldset>
                    <legend>
                        <asp:Literal runat="server" Text='<%$ resources:global, Localizations %>' />
                    </legend>
                    <mag:Localizer ID="mlTaxCategory" runat="server">
                        <localizablefields>
                            <mag:LocalizableField PropertyName="Name" Editor="SingleLineString" meta:resourcekey="mlfName" />
                        </localizablefields>
                    </mag:Localizer>
                </fieldset>
                <fieldset>
                    <legend>
                        <asp:Literal runat="server" meta:resourceKey="litAdditionalData" />
                    </legend>
                    <mag:AdditionalDataEditor runat="server" id="adeAdditionalData" />
                </fieldset>
            </asp:View>
        </asp:MultiView>
    </div>
</asp:Content>
