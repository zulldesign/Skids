<%@ Page Title="" Language="C#" MasterPageFile="~/App_Masters/DefaultLayout.Master"
    AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="Magelia.WebStore.Admin.Products.Attributes.Edit" %>

<asp:Content ContentPlaceHolderID="cphBarTitle" runat="server">
    <asp:Literal ID="litAttribute" runat="server" meta:resourcekey="litAttribute" />
</asp:Content>
<asp:Content ContentPlaceHolderID="cphBarContent" runat="server">
    <ul>
        <li>
            <asp:HyperLink runat="server" Text='<%$ resources:global, Cancel %>' NavigateUrl="~/Products/Attributes/List.aspx"
                SkinID="Minor" />
        </li>
        <li id="iSave" runat="server">
            <asp:LinkButton ID="lbtnSave" runat="server" Text='<%$ resources:global, Save %>'
                OnClick="lbtnSave_Click" SkinID="Major" ValidationGroup="vgAttribute" />
        </li>
    </ul>
</asp:Content>
<asp:Content ContentPlaceHolderID="cphBody" runat="server">
    <asp:ValidationSummary runat="server" ValidationGroup="vgAttribute" HeaderText='<%$ Resources: Global, ErrorMsgText %>' />
    <asp:CustomValidator ID="cvListValue" runat="server" ValidationGroup="vgAttribute"
        OnServerValidate="cvListValue_ServerValidate" meta:resourcekey="cvListValue" />
    <div class="form">
        <fieldset>
            <legend>
                <asp:Literal runat="server" Text='<%$ resources:global, Properties %>' />
            </legend>
            <div class="field">
                <asp:Label ID="lblCode" runat="server" meta:resourcekey="lblCode" AssociatedControlID="tbxCode" />
                <asp:TextBox ID="tbxCode" runat="server" />
                <asp:RequiredFieldValidator ID="rfvCode" runat="server" ControlToValidate="tbxCode"
                    ValidationGroup="vgAttribute" meta:resourcekey="rfvCode" />
                <asp:RegularExpressionValidator ID="revCodeLength" runat="server" ControlToValidate="tbxCode"
                    ValidationGroup="vgAttribute" meta:resourcekey="revCodeLength" ValidationExpression="^.{0,50}$" />
                <asp:CustomValidator ID="cvCodeIsUnique" runat="server" ValidationGroup="vgAttribute"
                    ControlToValidate="tbxCode" OnServerValidate="cvCodeIsUnique_ServerValidate"
                    meta:resourcekey="cvCodeIsUnique" />
            </div>
            <div class="field">
                <asp:Label ID="lblType" runat="server" meta:resourcekey="lblType" AssociatedControlID="ddlTypes" />
                <mag:DropDownList ID="ddlTypes" runat="server" AppendDataBoundItems="true" DataTextField="Code" GroupByTextField="TypeText" GroupByValueField="TypeText"
                    AutoPostBack="true" OnSelectedIndexChanged="ddlTypes_SelectedIndexChanged" DataValueField="ProductAttributeTypeId">
                    <asp:ListItem />
                </mag:DropDownList>
                <asp:RequiredFieldValidator ID="rfvType" runat="server" ControlToValidate="ddlTypes"
                    ValidationGroup="vgAttribute" meta:resourcekey="rfvType" />
            </div>
        </fieldset>
        <fieldset>
            <legend>
                <asp:Literal runat="server" Text='<%$ resources:global, Localizations %>' />
            </legend>
            <mag:Localizer ID="mlAttribute" runat="server">
                <LocalizableFields>
                    <mag:LocalizableField PropertyName="Name" Editor="SingleLineString" meta:resourcekey="mlfName" />
                    <mag:LocalizableField PropertyName="Description" Editor="MultiLineString" meta:resourcekey="mlfDescription"
                        Required="false" />
                </LocalizableFields>
            </mag:Localizer>
        </fieldset>
        <fieldset id="fsValues" runat="server" visible="false">
            <legend>
                <asp:Literal ID="litValues" runat="server" meta:resourcekey="litValues" />
            </legend>
            <asp:ValidationSummary runat="server" ValidationGroup="vgLocalizedValueInsert" HeaderText='<%$ Resources: Global, ErrorMsgText %>' />
            <asp:ValidationSummary runat="server" ValidationGroup="vgLocalizedValueEdit" HeaderText='<%$ Resources: Global, ErrorMsgText %>' />
            <asp:ListView ID="lvValues" runat="server" OnLayoutCreated="lvValues_LayoutCreated"
                OnItemInserting="lvValues_ItemInserting" OnItemCreated="lvValues_ItemCreated"
                OnItemUpdating="lvValues_ItemUpdating" OnItemEditing="lvValues_ItemEditing" OnItemCanceling="lvValues_ItemCanceling"
                OnItemDeleting="lvValues_ItemDeleting" OnItemDataBound="lvValues_ItemDataBound"
                OnSorting="lvValues_Sorting" InsertItemPosition="FirstItem" DataKeyNames="ProductListValueId">
                <LayoutTemplate>
                    <table class="gridView" border="0" cellpadding="0" cellspacing="0">
                        <thead>
                            <tr>
                                <th runat="server" id="thCode">
                                    <asp:LinkButton ID="lbtnValueCode" runat="server" meta:resourcekey="lbtnValueCode" CommandName="Sort"
                                        CommandArgument="Code" />
                                </th>
                                <asp:Repeater ID="rptCultures" runat="server" OnItemCommand="rptCultures_ItemCommand">
                                    <ItemTemplate>
                                        <th runat="server" id="thCulture">
                                            <asp:LinkButton ID="lbtnCultureSort" runat="server" CommandName="Sort" CommandArgument='<%# Eval("CultureId") %>'
                                                Text='<%# Eval("Name") %>' />
                                        </th>
                                    </ItemTemplate>
                                </asp:Repeater>
                                <th id="thActions" runat="server">
                                    <asp:Literal runat="server" Text='<%$ resources:global, Action %>' />
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
                            <asp:Literal ID="litCode" runat="server" Text='<%# Eval("Code") %>' />
                        </td>
                        <asp:Repeater ID="rptLocalizations" runat="server">
                            <ItemTemplate>
                                <td>
                                    <asp:Literal runat="server" Text='<%# Eval("Value") %>' />
                                </td>
                            </ItemTemplate>
                        </asp:Repeater>
                        <td id="tdActions" runat="server">
                            <ul>
                                <li>
                                    <asp:ImageButton runat="server" SkinID="Edit" ToolTip='<%$ resources:global,Edit %>'
                                        CommandName="Edit" />
                                </li>
                                <mag:FeaturePanel runat="server" Tag="Li" Level="Edit">
                                    <asp:ImageButton runat="server" SkinID="Delete" ToolTip='<%$ resources:global,Delete %>'
                                        CommandName="Delete" />
                                </mag:FeaturePanel>
                            </ul>
                        </td>
                    </tr>
                </ItemTemplate>
                <EditItemTemplate>
                    <tr>
                        <td>
                            <asp:TextBox ID="tbxCode" runat="server" Text='<%# Eval("Code") %>' ReadOnly='<%# !this.CanEdit %>' />
                            <asp:RequiredFieldValidator ID="rfvCodeEdit" runat="server" ValidationGroup="vgLocalizedValueEdit"
                                ControlToValidate="tbxCode" meta:resourcekey="rfvCodeEdit" />
                            <asp:RegularExpressionValidator ID="revCodeLengthEdit" runat="server" ValidationGroup="vgLocalizedValueEdit"
                                ControlToValidate="tbxCode" ValidationExpression="^.{0,50}$" meta:resourcekey="revCodeLengthEdit" />
                            <asp:CustomValidator ID="cvCodeEditIsUnique" runat="server" ControlToValidate="tbxCode"
                                ValidationGroup="vgLocalizedValueEdit" OnServerValidate="cvCodeEditIsUnique_ServerValidate"
                                meta:resourcekey="cvCodeEditIsUnique" />
                        </td>
                        <asp:Repeater ID="rptLocalizations" runat="server" OnItemDataBound="rptLocalizations_ItemDataBound">
                            <ItemTemplate>
                                <td>
                                    <asp:TextBox ID="tbxValue" runat="server" />
                                    <asp:CustomValidator ID="cvValueRequiredIfCantCreateAndDelete" runat="server" ControlToValidate="tbxValue"
                                        ValidationGroup="vgLocalizedValueEdit" OnServerValidate="cvValueRequiredIfCantCreateAndDelete_ServerValidate"
                                        meta:resourcekey="cvValueRequiredIfCantCreateAndDelete" ValidateEmptyText="true" />
                                </td>
                            </ItemTemplate>
                        </asp:Repeater>
                        <td id="tdActions" runat="server">
                            <ul>
                                <li>
                                    <asp:ImageButton runat="server" SkinID="Save" ToolTip='<%$ resources:global,Save %>' CommandName="Update" ValidationGroup="vgLocalizedValueEdit" />
                                </li>
                                <li>
                                    <asp:ImageButton runat="server" SkinID="Cancel" ToolTip='<%$ resources:global,Cancel %>' CommandName="Cancel" />
                                </li>
                            </ul>
                        </td>
                    </tr>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <tr>
                        <td>
                            <asp:TextBox ID="tbxCode" runat="server" />
                            <asp:RequiredFieldValidator ID="rfvCodeInsert" runat="server" ValidationGroup="vgLocalizedValueInsert"
                                ControlToValidate="tbxCode" meta:resourcekey="rfvCodeInsert" />
                            <asp:RegularExpressionValidator ID="revCodeLengthInsert" runat="server" ValidationGroup="vgLocalizedValueInsert"
                                ControlToValidate="tbxCode" ValidationExpression="^.{0,50}$" meta:resourcekey="revCodeLengthInsert" />
                            <asp:CustomValidator ID="cvCodeInsertIsUnique" runat="server" ValidationGroup="vgLocalizedValueInsert"
                                meta:resourcekey="cvCodeInsertIsUnique" ControlToValidate="tbxCode" OnServerValidate="cvCodeInsertIsUnique_ServerValidate" />
                        </td>
                        <asp:Repeater ID="rptLocalizations" runat="server">
                            <ItemTemplate>
                                <td>
                                    <asp:TextBox ID="tbxValue" runat="server" ReadOnly='<%# !this.CanCreateAndDeleteLocalizations %>' />
                                </td>
                            </ItemTemplate>
                        </asp:Repeater>
                        <td id="tdActions" runat="server">
                            <ul>
                                <li>
                                    <asp:ImageButton runat="server" SkinID="Add" ToolTip='<%$ resources:global,Add %>'
                                        CommandName="Insert" ValidationGroup="vgLocalizedValueInsert" />
                                </li>
                            </ul>
                        </td>
                    </tr>
                </InsertItemTemplate>
            </asp:ListView>
        </fieldset>
    </div>
</asp:Content>
