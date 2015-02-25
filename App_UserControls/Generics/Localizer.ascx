<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Localizer.ascx.cs" Inherits="Magelia.WebStore.Admin.App_UserControls.Generics.Localizer" %>
<%@ Register TagPrefix="mag" TagName="Unauthorized" Src="~/App_UserControls/Generics/Unauthorized.ascx" %>
<%@ Register TagPrefix="local" TagName="DatePicker" Src="~/App_UserControls/Generics/DatePicker.ascx" %>
<asp:MultiView ID="mvLocalizer" runat="server">
    <asp:View ID="vLocalizer" runat="server">
        <asp:ValidationSummary ID="mvsEdit" runat="server" HeaderText="<%$ Resources: Global, ErrorMsgText %>" />
        <asp:ValidationSummary ID="mvsInsert" runat="server" HeaderText="<%$ Resources: Global, ErrorMsgText %>" />
        <table class="gridView localizer">
            <thead runat="server" id="header">
                <asp:Repeater runat="server" ID="rptColumns" OnItemCommand="rptColumns_ItemCommand">
                    <HeaderTemplate>
                        <th runat="server" class='<%# this.SortingExpression == "CultureName" ? ((this.SortingDirection==System.Web.UI.WebControls.SortDirection.Ascending)?"sortedAsc":"sortedDesc"): String.Empty %>'>
                            <asp:LinkButton runat="server" CommandArgument="CultureName" CommandName="Sort" Text="Culture" />
                        </th>
                    </HeaderTemplate>
                    <FooterTemplate>
                        <mag:FeaturePanel runat="server" Level="Edit" Feature="content.localizations" Tag="Th">
                            <asp:Literal runat="server" Text='<%$ resources:global, Action %>' />
                        </mag:FeaturePanel>
                    </FooterTemplate>
                    <ItemTemplate>
                        <th runat="server" class='<%# this.SortingExpression == ((Magelia.WebStore.Admin.App_UserControls.Generics.LocalizableField)Container.DataItem).PropertyName ? ((this.SortingDirection==System.Web.UI.WebControls.SortDirection.Ascending)?"sortedAsc":"sortedDesc"): String.Empty %>'>
                            <asp:LinkButton runat="server" Text='<%# Eval("HeaderText") %>' CommandName="Sort"
                                CommandArgument='<%# Eval("PropertyName") %>' />
                        </th>
                    </ItemTemplate>
                </asp:Repeater>
            </thead>
            <tbody>
                <asp:ListView ID="lvLocalizations" runat="server" DataKeyNames="CultureId" OnItemCreated="lvLocalizations_ItemCreated"
                    OnItemInserting="lvLocalizations_ItemInserting" OnItemDeleting="lvLocalizations_ItemDeleting"
                    OnItemEditing="lvLocalizations_ItemEditing" OnItemDataBound="lvLocalizations_ItemDataBound"
                    OnItemCanceling="lvLocalizations_ItemCanceling" OnItemUpdating="lvLocalizations_ItemUpdating"
                    OnSorting="lvLocalizations_Sorting">
                    <InsertItemTemplate>
                        <tr>
                            <td>
                                <asp:DropDownList ID="ddlCultures" runat="server" DataTextField="Name" DataValueField="CultureId" />
                            </td>
                            <asp:Repeater ID="rptItemInsert" runat="server" OnItemDataBound="rptItemInsert_ItemDataBound">
                                <ItemTemplate>
                                    <td>
                                        <asp:MultiView runat="server" ID="mvValue" ActiveViewIndex="0">
                                            <asp:View runat="server">
                                                <asp:TextBox ID="tbxStringLocalizedValue" runat="server" />
                                                <asp:RequiredFieldValidator ID="rfvStringLocalizedValue" runat="server" ValidationGroup='<%# this.InsertValidationGroup %>'
                                                    ControlToValidate="tbxStringLocalizedValue" />
                                                <asp:RegularExpressionValidator ID="revStringLocalizedValue" runat="server" ControlToValidate="tbxStringLocalizedValue"
                                                    ValidationGroup='<%# this.InsertValidationGroup %>' />
                                            </asp:View>
                                            <asp:View runat="server">
                                                <asp:CheckBox ID="cbBooleanLocalizedValue" runat="server" />
                                            </asp:View>
                                            <asp:View runat="server">
                                                <asp:DropDownList ID="ddlNullableBooleanLocalizedValue" runat="server">
                                                    <asp:ListItem Text="" Value="" Selected="True" />
                                                    <asp:ListItem Text="Yes" Value="True" meta:resourceKey="ddlNullableBooleanLocalizedValueYes" />
                                                    <asp:ListItem Text="No" Value="False" meta:resourceKey="ddlNullableBooleanLocalizedValueNo"/>
                                                </asp:DropDownList>
                                            </asp:View>
                                            <asp:View runat="server">
                                                <local:DatePicker runat="server" ID="dpDateTimeLocalizedValue" />
                                                <asp:RequiredFieldValidator ID="rfvDateTimeLocalizedValue" runat="server" ValidationGroup='<%# this.InsertValidationGroup %>'
                                                    ControlToValidate="dpDateTimeLocalizedValue" />
                                            </asp:View>
                                            <asp:View runat="server">
                                                <asp:TextBox runat="server" ID="tbxDecimalLocalizedValue" />
                                                <asp:RequiredFieldValidator ID="rfvDecimalLocalizedValue" runat="server" ValidationGroup='<%# this.InsertValidationGroup %>'
                                                    ControlToValidate="tbxDecimalLocalizedValue" />
                                                <asp:CompareValidator ID="cvDecimalLocalizedValue" runat="server" ValidationGroup='<%# this.InsertValidationGroup %>'
                                                    ControlToValidate="tbxDecimalLocalizedValue" Type="Double" Operator="DataTypeCheck" />
                                            </asp:View>
                                            <asp:View runat="server">
                                                <asp:TextBox runat="server" ID="tbxIntegerLocalizedValue" />
                                                <asp:RequiredFieldValidator ID="rfvIntegerLocalizedValue" runat="server" ValidationGroup='<%# this.InsertValidationGroup %>'
                                                    ControlToValidate="tbxIntegerLocalizedValue" />
                                                <asp:CompareValidator ID="cvIntegerLocalizedValue" runat="server" ValidationGroup='<%# this.InsertValidationGroup %>'
                                                    ControlToValidate="tbxIntegerLocalizedValue" Type="Integer" Operator="DataTypeCheck" />
                                            </asp:View>
                                        </asp:MultiView>
                                    </td>
                                </ItemTemplate>
                            </asp:Repeater>
                            <td>
                                <ul>
                                    <li>
                                        <asp:ImageButton runat="server" ID="imgBtnInsert" CommandName="Insert" SkinID="Add"
                                            ToolTip='<%$ resources:global,Add %>' ValidationGroup='<%# this.InsertValidationGroup %>' />
                                    </li>
                                </ul>
                            </td>
                        </tr>
                    </InsertItemTemplate>
                    <EditItemTemplate>
                        <tr>
                            <td>
                                <asp:DropDownList ID="ddlCultures" runat="server" DataTextField="Name" DataValueField="CultureId" />
                            </td>
                            <asp:Repeater ID="rptItemEdit" runat="server" OnItemDataBound="rptItemEdit_ItemDataBound">
                                <ItemTemplate>
                                    <td>
                                        <asp:MultiView runat="server" ID="mvValue" ActiveViewIndex="0">
                                            <asp:View runat="server">
                                                <asp:TextBox ID="tbxStringLocalizedValue" runat="server" />
                                                <asp:RequiredFieldValidator ID="rfvStringLocalizedValue" runat="server" ValidationGroup='<%# this.EditValidationGroup %>'
                                                    ControlToValidate="tbxStringLocalizedValue" />
                                                <asp:RegularExpressionValidator ID="revStringLocalizedValue" runat="server" ControlToValidate="tbxStringLocalizedValue"
                                                    ValidationGroup='<%# this.EditValidationGroup %>' />
                                            </asp:View>
                                            <asp:View runat="server">
                                                <asp:CheckBox ID="cbBooleanLocalizedValue" runat="server" />
                                            </asp:View>
                                            <asp:View runat="server">
                                                <asp:DropDownList ID="ddlNullableBooleanLocalizedValue" runat="server">
                                                    <asp:ListItem Text="" Value="" Selected="True" />
                                                    <asp:ListItem Text="Yes" Value="True" />
                                                    <asp:ListItem Text="No" Value="False" />
                                                </asp:DropDownList>
                                            </asp:View>
                                            <asp:View runat="server">
                                                <local:DatePicker runat="server" ID="dpDateTimeLocalizedValue" />
                                                <asp:RequiredFieldValidator ID="rfvDateTimeLocalizedValue" runat="server" ValidationGroup='<%# this.EditValidationGroup %>'
                                                    ControlToValidate="dpDateTimeLocalizedValue" />
                                            </asp:View>
                                            <asp:View runat="server">
                                                <asp:TextBox runat="server" ID="tbxDecimalLocalizedValue" />
                                                <asp:RequiredFieldValidator ID="rfvDecimalLocalizedValue" runat="server" ValidationGroup='<%# this.EditValidationGroup %>'
                                                    ControlToValidate="tbxDecimalLocalizedValue" />
                                                <asp:CompareValidator ID="cvDecimalLocalizedValue" runat="server" ValidationGroup='<%# this.EditValidationGroup %>'
                                                    ControlToValidate="tbxDecimalLocalizedValue" Type="Double" Operator="DataTypeCheck" />
                                            </asp:View>
                                            <asp:View runat="server">
                                                <asp:TextBox runat="server" ID="tbxIntegerLocalizedValue" />
                                                <asp:RequiredFieldValidator ID="rfvIntegerLocalizedValue" runat="server" ValidationGroup='<%# this.EditValidationGroup %>'
                                                    ControlToValidate="tbxIntegerLocalizedValue" />
                                                <asp:CompareValidator ID="cvIntegerLocalizedValue" runat="server" ValidationGroup='<%# this.EditValidationGroup %>'
                                                    ControlToValidate="tbxIntegerLocalizedValue" Type="Integer" Operator="DataTypeCheck" />
                                            </asp:View>
                                        </asp:MultiView>
                                    </td>
                                </ItemTemplate>
                            </asp:Repeater>
                            <td id="tdAction" runat="server">
                                <ul>
                                    <li>
                                        <asp:ImageButton runat="server" CommandName="Update" ToolTip='<%$ resources:global,Save %>' SkinID="Save" ValidationGroup='<%# this.EditValidationGroup %>' />
                                    </li>
                                    <li>
                                        <asp:ImageButton runat="server" CommandName="Cancel" ToolTip='<%$ resources:global,Cancel %>' SkinID="Cancel" />
                                    </li>
                                </ul>
                            </td>
                        </tr>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <tr>
                            <td>
                                <asp:Literal ID="litCulture" runat="server" Text='<%# Eval("CultureName") %>' />
                            </td>
                            <asp:Repeater ID="rptItem" runat="server" OnItemDataBound="rptItem_ItemDataBound">
                                <ItemTemplate>
                                    <td>
                                        <asp:Literal ID="litLocalization" runat="server" />
                                    </td>
                                </ItemTemplate>
                            </asp:Repeater>
                            <td id="tdAction" runat="server">
                                <ul>
                                    <li id="iEdit" runat="server">
                                        <asp:ImageButton runat="server" CommandName="Edit" SkinID="Edit" ToolTip='<%$ resources:global,Edit %>' />
                                    </li>
                                    <li id="iDelete" runat="server">
                                        <asp:ImageButton runat="server" CommandName="Delete" SkinID="Delete" ToolTip='<%$ resources:global,Delete %>' />
                                    </li>
                                </ul>
                            </td>
                        </tr>
                    </ItemTemplate>
                </asp:ListView>
            </tbody>
        </table>
    </asp:View>
    <asp:View ID="vUnauthorized" runat="server">
        <mag:Unauthorized runat="server" />
    </asp:View>
    <asp:View ID="vEmpty" runat="server">
        <p class="bordered">
            <asp:Literal ID="litEmpty" runat="server" meta:resourcekey="litEmpty" />
        </p>
    </asp:View>
</asp:MultiView>
