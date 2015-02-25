<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CommentsEditor.ascx.cs" Inherits="Magelia.WebStore.Admin.App_UserControls.Generics.CommentsEditor" %>
<div class="commentsEditor">
    <asp:ValidationSummary ID="mvsInsert" runat="server" HeaderText="<%$ Resources:Global, ErrorMsgText %>" />
    <asp:ValidationSummary ID="mvsEdit" runat="server" HeaderText="<%$ Resources:Global, ErrorMsgText %>" />
    <asp:ListView ID="lvComments" runat="server" OnSorting="lvComments_Sorting" OnItemUpdating="lvComments_ItemUpdating" OnItemInserting="lvComments_ItemInserting" OnItemEditing="lvComments_ItemEditing" OnItemDeleting="lvComments_ItemDeleting"
        OnItemCanceling="lvComments_ItemCanceling" OnItemCreated="lvComments_ItemCreated">
        <EmptyDataTemplate>
            <p class="empty">
                <asp:Literal ID="litNoComments" runat="server" meta:resourcekey="litNoComments" />
            </p>
        </EmptyDataTemplate>
        <LayoutTemplate>
            <table class="gridView">
                <thead>
                    <tr>
                        <th runat="server">
                            <asp:LinkButton ID="lbtnSortByCreationDate" runat="server" CommandName="Sort" CommandArgument="CreationDate" meta:resourcekey="lbtnSortByCreationDate" />
                        </th>
                        <th runat="server">
                            <asp:LinkButton ID="lbtnSortByUserName" runat="server" CommandName="Sort" CommandArgument="UserName" meta:resourcekey="lbtnSortByUserName" />
                        </th>
                        <th runat="server">
                            <asp:LinkButton ID="lbtnSortByContent" runat="server" CommandName="Sort" CommandArgument="Content" meta:resourcekey="lbtnSortByContent" />
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
        <InsertItemTemplate>
            <tr>
                <td>
                </td>
                <td>
                    <asp:Literal ID="litUserName" runat="server" />
                </td>
                <td class="content">
                    <asp:TextBox ID="tbxContent" runat="server" TextMode="MultiLine" />
                    <asp:RequiredFieldValidator ID="rfvContent" runat="server" ValidationGroup='<%# this.InsertValidationGroup %>' ControlToValidate="tbxContent" meta:resourcekey="rfvContent" />
                </td>
                <td>
                    <ul>
                        <li>
                            <asp:ImageButton runat="server" SkinID="Add" ToolTip='<%$ resources:global,Add %>' CommandName="Insert" ValidationGroup='<%# this.InsertValidationGroup %>' />
                        </li>
                    </ul>
                </td>
            </tr>
        </InsertItemTemplate>
        <EditItemTemplate>
            <tr>
                <td class="numeric">
                    <asp:Literal runat="server" Text='<%# (Container.DataItem as Magelia.WebStore.Data.Entities.Comment).CreationDate.ToUserTimeZoneString() %>' />
                </td>
                <td>
                    <asp:Literal ID="litUserName" runat="server" Text='<%# Eval("UserName") %>' />
                </td>
                <td class="content">
                    <asp:TextBox ID="tbxContent" runat="server" Text='<%# Eval("Content") %>' TextMode="MultiLine" />
                    <asp:RequiredFieldValidator ID="rfvContent" runat="server" ValidationGroup='<%# this.EditValidationGroup %>' ControlToValidate="tbxContent" meta:resourcekey="rfvContent" />
                </td>
                <td>
                    <ul>
                        <li>
                            <asp:ImageButton runat="server" SkinID="Save" ToolTip='<%$ resources:global,Save %>' CommandName="Update" ValidationGroup='<%# this.EditValidationGroup %>' />
                        </li>
                        <li>
                            <asp:ImageButton runat="server" SkinID="Cancel" ToolTip='<%$ resources:global,Cancel %>' CommandName="Cancel" />
                        </li>
                    </ul>
                </td>
            </tr>
        </EditItemTemplate>
        <ItemTemplate>
            <tr>
                <td class="numeric">
                    <asp:Literal runat="server" Text='<%# (Container.DataItem as Magelia.WebStore.Data.Entities.Comment).CreationDate.ToUserTimeZoneString() %>' />
                </td>
                <td>
                    <asp:Literal runat="server" Text='<%# Eval("UserName") %>' />
                </td>
                <td class="content">
                    <asp:Literal runat="server" Text='<%# this.Server.HtmlEncode(((Container.DataItem as Magelia.WebStore.Data.Entities.Comment).Content ?? String.Empty)).Replace(Environment.NewLine, "<br/>") %>' />
                </td>
                <td runat="server" visible='<%# !this.ReadOnly %>'>
                    <ul>
                        <li>
                            <asp:ImageButton runat="server" SkinID="Edit" ToolTip='<%$ resources:global,Edit %>' CommandName="Edit" />
                        </li>
                        <li>
                            <asp:ImageButton runat="server" SkinID="Delete" ToolTip='<%$ resources:global,Delete %>' CommandName="Delete" />
                        </li>
                    </ul>
                </td>
            </tr>
        </ItemTemplate>
    </asp:ListView>
</div>
