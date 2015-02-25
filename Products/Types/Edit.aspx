<%@ Page Title="" Language="C#" MasterPageFile="~/App_Masters/DefaultLayout.Master"
    AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="Magelia.WebStore.Admin.Products.Types.Edit" %>

<asp:Content ContentPlaceHolderID="cphBarTitle" runat="server">
    <asp:Literal ID="litType" runat="server" meta:resourcekey="litType" />
</asp:Content>
<asp:Content ContentPlaceHolderID="cphBarContent" runat="server">
    <ul>
        <li>
            <asp:HyperLink runat="server" NavigateUrl="~/Products/Types/List.aspx" Text='<%$ resources:global, Cancel %>'
                SkinID="Minor" />
        </li>
        <li id="iSave" runat="server">
            <asp:LinkButton ID="lbtnSave" runat="server" Text='<%$ resources:global, Save %>'
                SkinID="Major" ValidationGroup="vgType" OnClick="lbtnSave_Click" />
        </li>
    </ul>
</asp:Content>
<asp:Content ContentPlaceHolderID="cphBody" runat="server">
    <asp:ValidationSummary runat="server" ValidationGroup="vgType" HeaderText='<%$ Resources: Global, ErrorMsgText %>' />
    <div class="form">
        <fieldset>
            <legend>
                <asp:Literal runat="server" Text='<%$ resources:global, Properties %>' />
            </legend>
            <div class="field">
                <asp:Label ID="lblCode" runat="server" meta:resourcekey="lblCode" AssociatedControlID="tbxCode" />
                <asp:TextBox ID="tbxCode" runat="server" />
                <asp:RequiredFieldValidator ID="rfvCode" runat="server" ControlToValidate="tbxCode"
                    ValidationGroup="vgType" meta:resourcekey="rfvCode" />
                <asp:RegularExpressionValidator ID="revCodeLength" runat="server" ControlToValidate="tbxCode"
                    ValidationGroup="vgType" meta:resourcekey="revCodeLength" ValidationExpression="^.{0,50}$" />
                <asp:CustomValidator ID="cvCodeIsUnique" runat="server" ValidationGroup="vgType"
                    ControlToValidate="tbxCode" OnServerValidate="cvCodeIsUnique_ServerValidate"
                    meta:resourcekey="cvCodeIsUnique" />
            </div>
            <div class="field">
                <asp:Label ID="lblProductKind" runat="server" meta:resourcekey="lblProductKind" AssociatedControlID="ddlProductKinds" />
                <asp:DropDownList ID="ddlProductKinds" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlProductKinds_SelectedIndexChanged">
                    <asp:ListItem />
                    <asp:ListItem Value="0" meta:resourcekey="liStandard" />
                    <asp:ListItem Value="1" meta:resourcekey="liVariable" />
                    <asp:ListItem Value="3" meta:resourcekey="liBundle" />
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="rfvProductKind" runat="server" ControlToValidate="ddlProductKinds"
                    meta:resourcekey="rfvProductKind" ValidationGroup="vgType" />
            </div>
            <div class="field">
                <asp:Label runat="server" meta:resourcekey="lblIsVirtual" AssociatedControlID="ddlIsVirtual" />
                <asp:DropDownList ID="ddlIsVirtual" runat="server">
                    <asp:ListItem />
                    <asp:ListItem Value="False" meta:resourcekey="liPhysical" />
                    <asp:ListItem Value="True" meta:resourcekey="liVirtual" />
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="rfvIsVirtual" runat="server" ControlToValidate="ddlIsVirtual" meta:resourcekey="rfvIsVirtual" ValidationGroup="vgType" />
            </div>
            <div class="field">
                <asp:Label runat="server" meta:resourcekey="lblIsManaged" AssociatedControlID="ddlIsManaged" />
                <asp:DropDownList ID="ddlIsManaged" runat="server">
                    <asp:ListItem />
                    <asp:ListItem Value="False" meta:resourcekey="liUnmanaged" />
                    <asp:ListItem Value="True" meta:resourcekey="liManaged" />
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="rfvIsManaged" runat="server" ControlToValidate="ddlIsManaged" meta:resourcekey="rfvIsManaged" ValidationGroup="vgType" />
            </div>
        </fieldset>
        <fieldset>
            <legend>
                <asp:Literal runat="server" Text='<%$ resources:global, Localizations %>' /></legend>
            <mag:Localizer ID="mlProductType" runat="server">
                <localizablefields>
                    <mag:LocalizableField PropertyName="Name" MaxLength="50" meta:resourcekey="mlfName" />
                </localizablefields>
            </mag:Localizer>
        </fieldset>
        <fieldset>
            <legend>
                <asp:Literal ID="litAttributes" runat="server" meta:resourcekey="litAttributes" />
            </legend>
            <asp:ValidationSummary runat="server" ValidationGroup="vgAttributeInsert" HeaderText='<%$ Resources: Global, ErrorMsgText %>' />
            <asp:ListView ID="lvAttributes" runat="server" InsertItemPosition="FirstItem" DataKeyNames="ProductAttributeProductTypeId"
                OnSorting="lvAttributes_Sorting" OnItemCreated="lvAttributes_ItemCreated" OnItemInserting="lvAttributes_ItemInserting"
                OnItemCanceling="lvAttributes_ItemCanceling" OnItemDataBound="lvAttributes_ItemDataBound"
                OnItemDeleting="lvAttributes_ItemDeleting" OnItemUpdating="lvAttributes_ItemUpdating"
                OnItemEditing="lvAttributes_ItemEditing">
                <LayoutTemplate>
                    <table class="gridView">
                        <thead>
                            <tr>
                                <th runat="server">
                                    <asp:LinkButton ID="lbtnAttribute" runat="server" CommandName="Sort" CommandArgument="Attribute"
                                        meta:resourcekey="lbtnAttribute" />
                                </th>
                                <th runat="server">
                                    <asp:LinkButton ID="lbtnName" runat="server" CommandName="Sort" CommandArgument="Name"
                                        meta:resourcekey="lbtnName" />
                                </th>
                                <th runat="server">
                                    <asp:LinkButton ID="lbtnType" runat="server" CommandName="Sort" CommandArgument="Type"
                                        meta:resourcekey="lbtnType" />
                                </th>
                                <th runat="server" id="tdIsVariableAttribute">
                                    <asp:LinkButton ID="lbtnIsVariableAttribute" runat="server" CommandName="Sort" CommandArgument="IsVariableAttribute" meta:resourcekey="lbtnIsVariableAttribute" />
                                </th>
                                <th runat="server">
                                    <asp:LinkButton ID="lbtnRequired" runat="server" CommandName="Sort" CommandArgument="Required" meta:resourcekey="lbtnRequired" />
                                </th>
                                <th runat="server">
                                    <asp:LinkButton ID="lbtnShowInProductList" runat="server" CommandName="Sort" CommandArgument="ShowInProductList"
                                        meta:resourcekey="lbtnShowInProductList" />
                                </th>
                                <th runat="server">
                                    <asp:LinkButton ID="lbtnShowInProductDetail" runat="server" CommandName="Sort" CommandArgument="ShowInProductDetail"
                                        meta:resourcekey="lbtnShowInProductDetail" />
                                </th>
                                <th runat="server">
                                    <asp:LinkButton ID="lbtnAllowFilter" runat="server" CommandName="Sort" CommandArgument="AllowFilter"
                                        meta:resourcekey="lbtnAllowFilter" />
                                </th>
                                <th runat="server">
                                    <asp:LinkButton ID="lbtnAllowSelection" runat="server" CommandName="Sort" CommandArgument="AllowSelection"
                                        meta:resourcekey="lbtnAllowSelection" />
                                </th>
                                <th runat="server">
                                    <asp:LinkButton ID="lbtnOrder" runat="server" CommandName="Sort" CommandArgument="Order"
                                        meta:resourcekey="lbtnOrder" />
                                </th>
                                <th id="thAction" runat="server">
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
                            <asp:Literal runat="server" Text='<%# Eval("Attribute") %>' />
                        </td>
                        <td>
                            <asp:Literal runat="server" Text='<%# Eval("Name") %>' />
                        </td>
                        <td>
                            <asp:Literal runat="server" Text='<%# Eval("Type") %>' />
                        </td>
                        <td runat="server" id="tdIsVariableAttribute">
                            <asp:CheckBox runat="server" Enabled="false" Checked='<%# Eval("IsVariableAttribute") %>' />
                        </td>
                        <td>
                            <asp:CheckBox runat="server" Enabled="false" Checked='<%# Eval("Required") %>' />
                        </td>
                        <td>
                            <asp:CheckBox runat="server" Enabled="false" Checked='<%# Eval("ShowInProductList") %>' />
                        </td>
                        <td>
                            <asp:CheckBox runat="server" Enabled="false" Checked='<%# Eval("ShowInProductDetail") %>' />
                        </td>
                        <td>
                            <asp:CheckBox runat="server" Enabled="false" Checked='<%# Eval("AllowFilter") %>' />
                        </td>
                        <td>
                            <asp:CheckBox runat="server" Enabled="false" Checked='<%# Eval("AllowSelection") %>' />
                        </td>
                        <td class="numeric">
                            <asp:DropDownList ID="ddlOrders" CssClass="autoSize" runat="server" AutoPostBack="true" Enabled='<%# this.CanEdit %>'
                                OnSelectedIndexChanged="ddlOrders_SelectedIndexChanged" />
                        </td>
                        <td id="tdAction" runat="server">
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
                <EditItemTemplate>
                    <tr>
                        <td>
                            <asp:DropDownList ID="ddlAttributes" runat="server" AutoPostBack="true" DataTextField="Code"
                                DataValueField="ProductAttributeId" OnSelectedIndexChanged="ddlAttributes_SelectedIndexChanged" />
                        </td>
                        <td>
                            <asp:Literal ID="litName" runat="server" Text='<%# Eval("Name") %>' />
                        </td>
                        <td>
                            <asp:Literal ID="litType" runat="server" Text='<%# Eval("Type") %>' />
                        </td>
                        <td runat="server" id="tdIsVariableAttribute">
                            <asp:CheckBox ID="cbxIsVariableAttribute" runat="server" Checked='<%# Eval("IsVariableAttribute") %>' />
                        </td>
                        <td>
                            <asp:CheckBox ID="cbxRequired" runat="server" Checked='<%# Eval("Required") %>' />
                        </td>
                        <td>
                            <asp:CheckBox ID="cbxShowInProductList" runat="server" Checked='<%# Eval("ShowInProductList") %>' />
                        </td>
                        <td>
                            <asp:CheckBox ID="cbxShowInProductDetail" runat="server" Checked='<%# Eval("ShowInProductDetail") %>' />
                        </td>
                        <td>
                            <asp:CheckBox ID="cbxAllowFilter" runat="server" Checked='<%# Eval("AllowFilter") %>' />
                        </td>
                        <td>
                            <asp:CheckBox ID="cbxAllowSelection" runat="server" Checked='<%# Eval("AllowSelection") %>' />
                        </td>
                        <td class="numeric">
                            <asp:DropDownList ID="ddlOrders" runat="server" CssClass="autoSize" />
                        </td>
                        <td id="tdAction" runat="server">
                            <ul>
                                <li>
                                    <asp:ImageButton runat="server" CommandName="Update" ToolTip='<%$ resources:global,Save %>' SkinID="Save" ValidationGroup="vgAttributeEdit" />
                                </li>
                                <li>
                                    <asp:ImageButton runat="server" CommandName="Cancel" ToolTip='<%$ resources:global,Cancel %>' SkinID="Cancel" />
                                </li>
                            </ul>
                        </td>
                    </tr>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <tr>
                        <td>
                            <asp:DropDownList ID="ddlAttributes" runat="server" AutoPostBack="true" DataTextField="Code"
                                DataValueField="ProductAttributeId" OnSelectedIndexChanged="ddlAttributes_SelectedIndexChanged" />
                            <asp:RequiredFieldValidator ID="rfvAttribute" runat="server" ValidationGroup="vgAttributeInsert"
                                meta:resourcekey="rfvAttribute" ControlToValidate="ddlAttributes" />
                        </td>
                        <td>
                            <asp:Literal ID="litName" runat="server" />
                        </td>
                        <td>
                            <asp:Literal ID="litType" runat="server" />
                        </td>
                        <td runat="server" id="tdIsVariableAttribute">
                            <asp:CheckBox ID="cbxIsVariableAttribute" runat="server" />
                        </td>
                        <td>
                            <asp:CheckBox ID="cbxRequired" runat="server" />
                        </td>
                        <td>
                            <asp:CheckBox ID="cbxShowInProductList" runat="server" />
                        </td>
                        <td>
                            <asp:CheckBox ID="cbxShowInProductDetail" runat="server" />
                        </td>
                        <td>
                            <asp:CheckBox ID="cbxAllowFilter" runat="server" />
                        </td>
                        <td>
                            <asp:CheckBox ID="cbxAllowSelection" runat="server" />
                        </td>
                        <td class="numeric">
                            <asp:DropDownList ID="ddlOrders" runat="server" CssClass="autoSize" />
                        </td>
                        <td>
                            <ul>
                                <li>
                                    <asp:ImageButton runat="server" CommandName="Insert" SkinID="Add" ToolTip='<%$ resources:global,Add %>'
                                        ValidationGroup="vgAttributeInsert" />
                                </li>
                            </ul>
                        </td>
                    </tr>
                </InsertItemTemplate>
            </asp:ListView>
        </fieldset>
        <fieldset>
            <legend>
                <asp:Literal runat="server" meta:resourcekey="litDefaultTaxCategories" />
            </legend>
            <mag:SwapList ID="mslDefaultTaxCategories" runat="server" meta:resourcekey="mslDefaultTaxCategories" DataTextField="Code" DataValueField="TaxCategoryId" />
        </fieldset>
    </div>
</asp:Content>
