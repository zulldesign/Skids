<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="AdditionalDataEditor.ascx.cs"
    Inherits="Magelia.WebStore.Admin.App_UserControls.Generics.AdditionalDataEditor" %>
<div class="additionalDataEditor">
    <asp:ValidationSummary ID="mvsInsert" runat="server" HeaderText="<%$ Resources:Global, ErrorMsgText %>" />
    <asp:ValidationSummary ID="mvsEdit" runat="server" HeaderText="<%$ Resources:Global, ErrorMsgText %>" />
    <asp:ListView ID="lvAdditionalData" runat="server" OnItemCanceling="lvAdditionalData_ItemCanceling"
        OnItemDeleting="lvAdditionalData_ItemDeleting" OnItemEditing="lvAdditionalData_ItemEditing"
        OnItemCreated="lvAdditionalData_ItemCreated" OnItemInserting="lvAdditionalData_ItemInserting"
        OnItemUpdating="lvAdditionalData_ItemUpdating" OnSorting="lvAdditionalData_Sorting">
        <EmptyDataTemplate>
            <p class="empty">
                <asp:Literal ID="litNoAddtionalData" runat="server" meta:resourcekey="litNoAddtionalData" />
            </p>
        </EmptyDataTemplate>
        <LayoutTemplate>
            <table class="gridView" border="0" cellpadding="0" cellspacing="0">
                <thead>
                    <tr>
                        <th runat="server">
                            <asp:LinkButton ID="lbtnCode" runat="server" CommandName="Sort" CommandArgument="Code"
                                meta:resourcekey="lbtnCode" />
                        </th>
                        <th runat="server">
                            <asp:LinkButton ID="lbtnValue" runat="server" CommandName="Sort" CommandArgument="Value"
                                meta:resourcekey="lbtnValue" />
                        </th>
                        <th id="thAction" runat="server">
                            <asp:Literal runat="server" Text='<%$ resources:global,Action %>' />
                        </th>
                    </tr>
                </thead>
                <tbody>
                    <asp:PlaceHolder runat="server" ID="itemPlaceHolder" />
                </tbody>
            </table>
        </LayoutTemplate>
        <ItemTemplate>
            <tr>
                <td>
                    <asp:Literal runat="server" Text='<%# Eval("Code") %>' />
                </td>
                <td class="content">
                    <asp:TextBox runat="server" Text='<%# Eval("Value") %>' TextMode="MultiLine" ReadOnly="true" />
                </td>
                <td runat="server" visible='<%# !this.ReadOnly %>'>
                    <ul>
                        <li>
                            <asp:ImageButton runat="server" SkinID="Edit" ToolTip='<%$ resources:global,Edit %>'
                                CommandName="Edit" />
                        </li>
                        <li>
                            <asp:ImageButton runat="server" SkinID="Delete" ToolTip='<%$ resources:global,Delete %>'
                                CommandName="Delete" />
                        </li>
                    </ul>
                </td>
            </tr>
        </ItemTemplate>
        <InsertItemTemplate>
            <tr>
                <td>
                    <asp:TextBox ID="tbxCode" runat="server" />
                    <asp:RequiredFieldValidator ID="rfvCode" runat="server" meta:resourcekey="rfvCode"
                        ControlToValidate="tbxCode" ValidationGroup='<%# this.InsertValidationGroup %>' />
                    <asp:CustomValidator ID="cvInsertCodeIsUnique" runat="server" meta:resourcekey="cvInsertCodeIsUnique"
                        ControlToValidate="tbxCode" ValidationGroup='<%# this.InsertValidationGroup %>'
                        OnServerValidate="cvInsertCodeIsUnique_ServerValidate" />
                </td>
                <td class="content">
                    <asp:TextBox ID="tbxValue" runat="server" TextMode="MultiLine" />
                    <asp:RequiredFieldValidator ID="rfvValue" runat="server" meta:resourcekey="rfvValue"
                        ControlToValidate="tbxValue" ValidationGroup='<%# this.InsertValidationGroup %>' />
                </td>
                <td>
                    <ul>
                        <li>
                            <asp:ImageButton runat="server" SkinID="Add" ToolTip='<%$ resources:global,Add %>'
                                CommandName="Insert" ValidationGroup='<%# this.InsertValidationGroup %>' />
                        </li>
                    </ul>
                </td>
            </tr>
        </InsertItemTemplate>
        <EditItemTemplate>
            <tr>
                <td>
                    <asp:TextBox ID="tbxCode" runat="server" Text='<%# Eval("Code") %>' />
                    <asp:RequiredFieldValidator ID="rfvCode" runat="server" meta:resourcekey="rfvCode"
                        ControlToValidate="tbxCode" ValidationGroup='<%# this.EditValidationGroup %>' />
                    <asp:CustomValidator ID="cvEditCodeIsUnique" runat="server" meta:resourcekey="cvEditCodeIsUnique"
                        ControlToValidate="tbxCode" ValidationGroup='<%# this.EditValidationGroup %>'
                        OnServerValidate="cvEditCodeIsUnique_ServerValidate" />
                </td>
                <td class="content">
                    <asp:TextBox ID="tbxValue" runat="server" TextMode="MultiLine" Text='<%# Eval("Value") %>' />
                    <asp:RequiredFieldValidator ID="rfvValue" runat="server" meta:resourcekey="rfvValue"
                        ControlToValidate="tbxValue" ValidationGroup='<%# this.EditValidationGroup %>' />
                </td>
                <td>
                    <ul>
                        <li>
                            <asp:ImageButton runat="server" SkinID="Save" ToolTip='<%$ resources:global,Save %>'
                                CommandName="Update" ValidationGroup='<%# this.EditValidationGroup %>' />
                        </li>
                        <li>
                            <asp:ImageButton runat="server" SkinID="Cancel" ToolTip='<%$ resources:global,Cancel %>'
                                CommandName="Cancel" />
                        </li>
                    </ul>
                </td>
            </tr>
        </EditItemTemplate>
    </asp:ListView>
</div>
