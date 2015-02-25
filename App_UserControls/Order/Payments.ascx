<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Payments.ascx.cs" Inherits="Magelia.WebStore.Admin.App_UserControls.Order.PaymentsUserControl" %>
<div class="payments form">
    <fieldset>
        <legend>
            <asp:Literal runat="server" meta:resourcekey="litPayments" />
        </legend>
        <asp:ValidationSummary runat="server" ValidationGroup="vgPaymentAdd" HeaderText='<%$ Resources: Global, ErrorMsgText %>' />
        <asp:ValidationSummary runat="server" ValidationGroup="vgPaymentEdit" HeaderText='<%$ Resources: Global, ErrorMsgText %>' />
        <table border="0" class="gridView">
            <thead>
                <tr id="rowHeaderPayments" runat="server">
                    <th runat="server">
                        <asp:LinkButton ID="lbtnCreationDate" runat="server" CommandName="Sort" CommandArgument="CreationDate" meta:resourcekey="lbtnCreationDate" OnCommand="lbtnSort_Command" />
                    </th>
                    <th runat="server">
                        <asp:LinkButton runat="server" ID="lbtnStatus" CommandName="Sort" CommandArgument="Status" meta:resourceKey="lbtnStatus" OnCommand="lbtnSort_Command" />
                    </th>
                    <th runat="server">
                        <asp:LinkButton ID="lbtnPaymentMode" runat="server" CommandName="Sort" CommandArgument="PaymentMode" meta:resourcekey="lbtnPaymentMode" OnCommand="lbtnSort_Command" />
                    </th>
                    <th runat="server">
                        <asp:LinkButton ID="lbtnAmount" runat="server" CommandName="Sort" CommandArgument="Amount" meta:resourcekey="lbtnAmount" OnCommand="lbtnSort_Command" />
                    </th>
                    <th runat="server">
                        <asp:LinkButton ID="lbtnTransactionCode" runat="server" CommandName="Sort" CommandArgument="TransactionCode" meta:resourcekey="lbtnTransactionCode" OnCommand="lbtnSort_Command" />
                    </th>
                    <th runat="server">
                        <asp:LinkButton ID="lbtnAuthorizationCode" runat="server" CommandName="Sort" CommandArgument="AuthorizationCode" meta:resourcekey="lbtnAuthorizationCode" OnCommand="lbtnSort_Command" />
                    </th>
                    <th runat="server">
                        <asp:Literal ID="litAdditionalData" runat="server" meta:resourcekey="litAdditionalData" />
                    </th>
                    <th id="thAction" runat="server">
                        <asp:Literal runat="server" Text='<%$ resources:global, Action %>' />
                    </th>
                </tr>
            </thead>
            <tbody>
                <asp:PlaceHolder runat="server" ID="phInsertPayment">
                    <tr>
                        <td>
                            <mag:dateTimePicker runat="server" id="dtpPaymentCreationDate" />
                            <asp:RequiredFieldValidator runat="server" ID="rfvPaymentCreationDate" ValidationGroup="vgPaymentAdd" ControlToValidate="dtpPaymentCreationDate" meta:resourceKey="rfvPaymentCreationDate" />
                        </td>
                        <td>
                            <asp:DropDownList runat="server" ID="ddlPaymentStatus" DataTextField="Value" DataValueField="Key" />
                            <asp:RequiredFieldValidator runat="server" ID="rfvPaymentStatus" ValidationGroup="vgPaymentAdd" ControlToValidate="ddlPaymentStatus" meta:resourceKey="rfvPaymentStatus" />
                        </td>
                        <td>
                            <asp:DropDownList runat="server" ID="ddlPaymentModes" DataTextField="Value" DataValueField="Key" />
                        </td>
                        <td class="paymentAmount">
                            <asp:TextBox runat="server" ID="tbxPaymentAmount" MaxLength="12" />
                            <asp:CompareValidator runat="server" ID="cvPaymentAmount" Type="Double" Operator="DataTypeCheck" ValidationGroup="vgPaymentAdd" ControlToValidate="tbxPaymentAmount" meta:resourceKey="cvPaymentAmount" />
                            <asp:RequiredFieldValidator runat="server" ID="rfAddPaymentAmount" ValidationGroup="vgPaymentAdd" ControlToValidate="tbxPaymentAmount" meta:resourceKey="rfvPaymentAmount" />
                            <asp:DropDownList runat="server" ID="ddlPaymentCurrency" DataTextField="Value" DataValueField="Key" />
                            <asp:RequiredFieldValidator runat="server" ID="rfvPaymentCurrency" ValidationGroup="vgPaymentAdd" ControlToValidate="ddlPaymentCurrency" meta:resourceKey="rfvPaymentCurrency" />
                        </td>
                        <td>
                            <asp:TextBox runat="server" ID="tbxPaymentTransactionCode" />
                        </td>
                        <td>
                            <asp:TextBox runat="server" ID="tbxPaymentAuthorizationCode" />
                        </td>
                        <td>
                            <asp:LinkButton ID="lbtnAdditionalData" runat="server" CssClass="button edit" ToolTip='<%$ resources:global,Edit %>' meta:resourcekey="lbtnAdditionalData" OnClick="lbtnAdditionalData_Click" />
                            <asp:Panel ID="pnlAdditionalData" runat="server" CssClass="popin additionalData">
                                <header>
                                    <h4>
                                        <asp:Literal ID="litAdditionalDataPopinHeader" runat="server" meta:resourcekey="litAdditionalDataPopinHeader" />
                                    </h4>
                                </header>
                                <div>
                                    <asp:UpdatePanel runat="server" ChildrenAsTriggers="true" UpdateMode="Conditional">
                                        <ContentTemplate>
                                            <mag:AdditionalDataEditor runat="server" />
                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                </div>
                            </asp:Panel>
                        </td>
                        <td>
                            <ul>
                                <li>
                                    <asp:ImageButton ID="imgbtnAddPayment" runat="server" SkinID="Add" ToolTip='<%$ resources:global,Add %>' ValidationGroup="vgPaymentAdd" OnClick="imgbtnAddPayment_Click" />
                                </li>
                            </ul>
                        </td>
                    </tr>
                </asp:PlaceHolder>
                <asp:ListView ID="lvPayments" runat="server" DataKeyNames="PaymentId"
                    OnItemDeleting="lvPayments_ItemDeleting" OnItemEditing="lvPayments_ItemEditing" OnItemUpdating="lvPayments_ItemUpdating"
                    OnItemCanceling="lvPayments_ItemCanceling" OnSorting="lvPayments_Sorting" OnItemDataBound="lvPayments_ItemDataBound">
                    <ItemTemplate>
                        <tr>
                            <td>
                                <asp:Literal runat="server" Text='<%# ((PaymentViewModel)Container.DataItem).CreationDate.ToUserTimeZoneString() %>' />
                            </td>
                            <td>
                                <asp:Literal runat="server" Text='<%# this.FormatStatus(((PaymentViewModel)Container.DataItem).PaymentStatusId) %>' />
                            </td>
                            <td>
                                <asp:Literal runat="server" Text='<%# this.FormatPaymentMode(((PaymentViewModel)Container.DataItem).PaymentModeId) %>' />
                            </td>
                            <td class="numeric">
                                <asp:Literal runat="server" Text='<%# this.FormatCurrency(((PaymentViewModel)Container.DataItem).Amount, ((PaymentViewModel)Container.DataItem).CurrencyId) %>' />
                            </td>
                            <td>
                                <asp:Literal runat="server" Text='<%# ((PaymentViewModel)Container.DataItem).TransactionCode %>' />
                            </td>
                            <td>
                                <asp:Literal runat="server" Text='<%# ((PaymentViewModel)Container.DataItem).AuthorizationCode %>' />
                            </td>
                            <td>
                                <asp:LinkButton ID="lbtnAdditionalData" runat="server" CssClass="button view" ToolTip='<%$ resources:global,Edit %>'
                                    meta:resourcekey="lbtnAdditionalData" OnClick="lbtnAdditionalData_Click" />
                                <asp:Panel ID="pnlAdditionalData" runat="server" CssClass="popin additionalData">
                                    <header>
                                        <h4>
                                            <asp:Literal ID="litAdditionalDataPopinHeader" runat="server" meta:resourcekey="litAdditionalDataPopinHeader" />
                                        </h4>
                                    </header>
                                    <div>
                                        <asp:UpdatePanel runat="server" ChildrenAsTriggers="true" UpdateMode="Conditional">
                                            <ContentTemplate>
                                                <mag:AdditionalDataEditor runat="server" />
                                            </ContentTemplate>
                                        </asp:UpdatePanel>
                                    </div>
                                </asp:Panel>
                            </td>
                            <asp:PlaceHolder runat="server" Visible="<%# !this.ReadOnly %>">
                                <td>
                                    <ul>
                                        <li>
                                            <asp:ImageButton runat="server" SkinID="Edit" ToolTip='<%$ resources:global,Edit %>' CommandName="Edit" />
                                        </li>
                                        <li>
                                            <asp:ImageButton runat="server" SkinID="Delete" ToolTip='<%$ resources:global,Delete %>' CommandName="Delete" />
                                        </li>
                                    </ul>
                                </td>
                            </asp:PlaceHolder>
                        </tr>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <tr>
                            <td>
                                <mag:dateTimePicker runat="server" id="dtpPaymentCreationDate" />
                                <asp:RequiredFieldValidator runat="server" ID="rfvPaymentCreationDate" ValidationGroup="vgPaymentEdit" ControlToValidate="dtpPaymentCreationDate" meta:resourceKey="rfvPaymentCreationDate" />
                            </td>
                            <td>
                                <asp:DropDownList runat="server" ID="ddlPaymentStatus" DataTextField="Value" DataValueField="Key" />
                                <asp:RequiredFieldValidator runat="server" ID="rfvPaymentStatus" ValidationGroup="vgPaymentEdit" ControlToValidate="ddlPaymentStatus" meta:resourceKey="rfvPaymentStatus" />
                            </td>
                            <td>
                                <asp:DropDownList runat="server" ID="ddlPaymentModes" DataTextField="Value" DataValueField="Key" />
                            </td>
                            <td class="paymentAmount">
                                <asp:TextBox runat="server" ID="tbxPaymentAmount" MaxLength="12" />
                                <asp:CompareValidator runat="server" ID="cvPaymentAmount" Type="Double" Operator="DataTypeCheck" ValidationGroup="vgPaymentEdit" ControlToValidate="tbxPaymentAmount" meta:resourceKey="cvPaymentAmount" />
                                <asp:RequiredFieldValidator runat="server" ID="rfAddPaymentAmount" ValidationGroup="vgPaymentEdit" ControlToValidate="tbxPaymentAmount" meta:resourceKey="rfvPaymentAmount" />
                                <asp:DropDownList runat="server" ID="ddlPaymentCurrency" DataTextField="Value" DataValueField="Key" />
                                <asp:RequiredFieldValidator runat="server" ID="rfvPaymentCurrency" ValidationGroup="vgPaymentEdit" ControlToValidate="ddlPaymentCurrency" meta:resourceKey="rfvPaymentCurrency" />
                            </td>
                            <td>
                                <asp:TextBox runat="server" ID="tbxPaymentTransactionCode" />
                            </td>
                            <td>
                                <asp:TextBox runat="server" ID="tbxPaymentAuthorizationCode" />
                            </td>
                            <td>
                                <asp:LinkButton ID="lbtnAdditionalData" runat="server" CssClass="button edit" ToolTip='<%$ resources:global,Edit %>'
                                    meta:resourcekey="lbtnAdditionalData" OnClick="lbtnAdditionalData_Click" />
                                <asp:Panel ID="pnlAdditionalData" runat="server" CssClass="popin additionalData">
                                    <header>
                                        <h4>
                                            <asp:Literal ID="litAdditionalDataPopinHeader" runat="server" meta:resourcekey="litAdditionalDataPopinHeader" />
                                        </h4>
                                    </header>
                                    <div>
                                        <asp:UpdatePanel runat="server" ChildrenAsTriggers="true" UpdateMode="Conditional">
                                            <ContentTemplate>
                                                <mag:AdditionalDataEditor id="madecommon" runat="server" />
                                            </ContentTemplate>
                                        </asp:UpdatePanel>
                                    </div>
                                </asp:Panel>
                            </td>
                            <td Visible="<%# !this.ReadOnly %>">
                                <ul>
                                    <li>
                                        <asp:ImageButton runat="server" CommandName="Update" ToolTip='<%$ resources:global,Save %>' SkinID="Save" ValidationGroup="vgPaymentEdit" />
                                    </li>
                                    <li>
                                        <asp:ImageButton runat="server" CommandName="Cancel" ToolTip='<%$ resources:global,Cancel %>' SkinID="Cancel" />
                                    </li>
                                </ul>
                            </td>
                        </tr>
                    </EditItemTemplate>
                </asp:ListView>
            </tbody>
        </table>
    </fieldset>
</div>
