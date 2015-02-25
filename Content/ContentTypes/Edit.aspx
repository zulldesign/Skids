<%@ Page Title="" Language="C#" MasterPageFile="~/App_Masters/DefaultLayout.Master" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="Magelia.WebStore.Admin.Content.ContentTypes.Edit" %>

<asp:Content ContentPlaceHolderID="cphBarTitle" runat="server">
    <asp:Literal ID="litContentType" runat="server" meta:resourcekey="litContentType" />
</asp:Content>
<asp:Content ContentPlaceHolderID="cphBarContent" runat="server">
    <ul>
        <li id="iSave" runat="server">
            <asp:LinkButton ID="lbtnSave" runat="server" Text='<%$ resources:global, Save %>' SkinID="Major" OnClick="lbtnSave_Click" ValidationGroup="vgContentType" />
        </li>
    </ul>
</asp:Content>
<asp:Content ContentPlaceHolderID="cphBody" runat="server">
    <script type="text/javascript">

        $(function () {

            var ddlAttributeTypes = $('#<%= ddlAttributeTypes.ClientID %>')

            var resetNewAttributeRow = function () {
                var cbxAttributeIsCollection = $('#<%=cbxAttributeIsCollection.ClientID%>');
                var cbxAttributeIsLocalizable = $('#<%=cbxAttributeIsLocalizable.ClientID%>');
                var optGroupType = ddlAttributeTypes.find("option:selected").parent().attr('data-value');
                if (!optGroupType) {
                    cbxAttributeIsCollection.attr('disabled', 'disabled');
                    cbxAttributeIsLocalizable.attr('disabled', 'disabled');
                } else if (optGroupType == 'BaseType') {
                    cbxAttributeIsCollection.prop('checked', false);
                    cbxAttributeIsCollection.attr('disabled', 'disabled');
                    cbxAttributeIsLocalizable.removeAttr('disabled');
                } else {
                    cbxAttributeIsCollection.removeAttr('disabled');
                    cbxAttributeIsLocalizable.removeAttr('disabled');
                    cbxAttributeIsLocalizable.prop('checked', false);
                    if (ddlAttributeTypes.val().toLowerCase().indexOf('Magelia.WebStore.Data.Entities.File'.toLowerCase()) != 0) {
                        cbxAttributeIsLocalizable.attr('disabled', 'disabled');
                    }
                }
            };


            ddlAttributeTypes.change(resetNewAttributeRow);
            resetNewAttributeRow();

            var hideNoHtmlOptions = function (cb) {
                if (cb.is(':checked')) {
                    $(cb).closest('fieldset').find('#noHtmlOptions').hide();
                } else {
                    $(cb).closest('fieldset').find('#noHtmlOptions').show();
                }
            }
            $('.isHtmlOption input').live('change', function () {
                hideNoHtmlOptions($(this));
            });
            $('.isHtmlOption input').each(function () { hideNoHtmlOptions($(this)) });
        });
    </script>
    <style type="text/css">
        .requiredAttributeFeature {
            display: none;
        }
    </style>
    <asp:ValidationSummary runat="server" HeaderText="<%$ Resources:Global, ErrorMsgText %>" ValidationGroup="vgContentType" />
    <asp:CustomValidator runat="server" ID="cvMinAttributeCount" OnServerValidate="cvMinAttributeCount_ServerValidate" meta:resourceKey="cvMinAttributeCount" ValidationGroup="vgContentType" />
    <div class="form contentTypes">
        <fieldset>
            <legend>
                <asp:Literal runat="server" Text='<%$ resources:global, Properties %>' />
            </legend>
            <div class="field inline">
                <asp:Label ID="lblCode" runat="server" meta:resourcekey="lblCode" AssociatedControlID="tbxCode" />
                <asp:TextBox ID="tbxCode" runat="server" MaxLength="50" />
                <asp:RequiredFieldValidator ID="rfvCode" runat="server" ControlToValidate="tbxCode" ValidationGroup="vgContentType" meta:resourcekey="rfvCode" />
                <asp:RegularExpressionValidator ID="revCodeLength" runat="server" ControlToValidate="tbxCode" ValidationExpression="^[a-zA-Z_]{1}[a-zA-Z0-9_]{0,49}$" ValidationGroup="vgContentType" meta:resourcekey="revCodeLength" />
                <asp:CustomValidator ID="cvCodeIsUnique" runat="server" ValidationGroup="vgContentType" ControlToValidate="tbxCode" OnServerValidate="cvCodeIsUnique_ServerValidate" meta:resourcekey="cvCodeIsUnique" />
                <asp:CustomValidator ID="cvCodeNamingConvention" runat="server" ValidationGroup="vgContentType" ControlToValidate="tbxCode" OnServerValidate="cvCodeNamingConvention_ServerValidate" meta:resourcekey="cvCodeNamingConvention" />
            </div>
        </fieldset>
        <fieldset>
            <legend>
                <asp:Literal runat="server" meta:resourcekey="litLocalizations" />
            </legend>
            <mag:localizer id="mlContentType" runat="server">
                <localizablefields>
                    <mag:LocalizableField PropertyName="Name" Editor="SingleLineString" meta:resourcekey="mlfName" MaxLength="50" />
                    <mag:LocalizableField PropertyName="Description" Editor="MultiLineString" meta:resourcekey="mlfDescription" Required="false" />
                </localizablefields>
            </mag:localizer>
        </fieldset>
        <fieldset>
            <legend>
                <asp:Literal runat="server" meta:resourcekey="litAssociations" />
            </legend>
            <p>
                <asp:Literal runat="server" meta:resourcekey="litAssociationsIntro" />
            </p>
            <asp:ListView runat="server" ID="lvAssociations">
                <LayoutTemplate>
                    <ul class="associations">
                        <asp:PlaceHolder ID="itemPlaceHolder" runat="server" />
                    </ul>
                </LayoutTemplate>
                <ItemTemplate>
                    <li>
                        <strong>
                            <asp:Literal runat="server" Text='<%# ((IGrouping<String, Magelia.WebStore.Admin.Content.ContentTypes.Edit.ConnectableTypeViewModel>)Container.DataItem).Key %>' /></strong>
                        <asp:ListView runat="server" ID="lvSubAssociations" DataKeyNames="TypeName" DataSource="<%#Container.DataItem%>">
                            <LayoutTemplate>
                                <ul class="subAssociations">
                                    <asp:PlaceHolder ID="itemPlaceHolder" runat="server" />
                                </ul>
                            </LayoutTemplate>
                            <ItemTemplate>
                                <li>
                                    <asp:CheckBox ID="cbIsAssociation" Enabled='<%# this.CanEdit %>' runat="server" Text='<%#Eval("DisplayName")%>' Checked='<%#Eval("IsAssociation")%>' />
                                </li>
                            </ItemTemplate>
                        </asp:ListView>
                    </li>
                </ItemTemplate>
            </asp:ListView>
        </fieldset>
        <fieldset>
            <legend>
                <asp:Literal runat="server" meta:resourcekey="litAttributes" />
            </legend>
            <asp:ValidationSummary runat="server" ValidationGroup="vgAttributeInsert" HeaderText='<%$ Resources: Global, ErrorMsgText %>' />
            <asp:ValidationSummary runat="server" ValidationGroup="vgAttributeEdit" HeaderText='<%$ Resources: Global, ErrorMsgText %>' />
            <table border="0" class="gridView">
                <thead>
                    <tr id="rowHeaderAttributes" runat="server">
                        <th runat="server">
                            <asp:LinkButton ID="lbtnCode" runat="server" CommandName="Sort" CommandArgument="Code" meta:resourcekey="lbtnCode" OnCommand="lbtnSort_Command" />
                        </th>
                        <th runat="server">
                            <asp:LinkButton ID="lbtnType" runat="server" CommandName="Sort" CommandArgument="TypeDisplayName" meta:resourcekey="lbtnType" OnCommand="lbtnSort_Command" />
                        </th>
                        <th runat="server">
                            <asp:LinkButton ID="lbtnName" runat="server" CommandName="Sort" CommandArgument="Name" meta:resourcekey="lbtnName" OnCommand="lbtnSort_Command" />
                        </th>
                        <th runat="server" class="requiredAttributeFeature">
                            <asp:LinkButton ID="lbtnIsRequired" runat="server" CommandName="Sort" CommandArgument="IsRequired" meta:resourcekey="lbtnIsRequired" OnCommand="lbtnSort_Command" />
                        </th>
                        <th runat="server">
                            <asp:LinkButton ID="lbtnIsLocalizable" runat="server" CommandName="Sort" CommandArgument="IsLocalizable" meta:resourcekey="lbtnIsLocalizable" OnCommand="lbtnSort_Command" />
                        </th>
                        <th runat="server" visible="false">
                            <asp:LinkButton ID="lbtnIsCollection" runat="server" CommandName="Sort" CommandArgument="IsCollection" meta:resourcekey="lbtnIsCollection" OnCommand="lbtnSort_Command" />
                        </th>
                        <th runat="server">
                            <asp:LinkButton ID="lbtnOrder" runat="server" CommandName="Sort" CommandArgument="Order" meta:resourcekey="lbtnOrder" OnCommand="lbtnSort_Command" />
                        </th>
                        <th id="thAction" runat="server">
                            <asp:Literal runat="server" Text='<%$ resources:global, Action %>' />
                        </th>
                    </tr>
                </thead>
                <tbody>
                    <mag:FeaturePanel runat="server" Tag="Tr" Level="Edit">
                        <td>
                            <asp:TextBox ID="tbxAttributeCode" runat="server" MaxLength="50" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="tbxAttributeCode" ValidationGroup="vgAttributeInsert" meta:resourceKey="rfvAttributeCode" />
                            <asp:RegularExpressionValidator runat="server" ControlToValidate="tbxAttributeCode" ValidationExpression="^[a-zA-Z_]{1}[a-zA-Z0-9_]{0,49}$" ValidationGroup="vgAttributeInsert" meta:resourcekey="revAttributeCodeLength" />
                            <asp:CustomValidator runat="server" ValidationGroup="vgAttributeInsert" ControlToValidate="tbxAttributeCode" OnServerValidate="cvAttributeCodeIsUnique_ServerValidate" meta:resourcekey="cvAttributeCodeIsUnique" />
                            <asp:CustomValidator runat="server" ValidationGroup="vgAttributeInsert" ControlToValidate="tbxAttributeCode" OnServerValidate="cvAttributeCodeNamingConvention_ServerValidate" meta:resourcekey="cvAttributeCodeNamingConvention" />
                        </td>
                        <td>
                            <div>
                                <mag:DropDownList runat="server" ID="ddlAttributeTypes" GroupByValueField="CategoryCode" GroupByTextField="Category" DataTextField="DisplayName" DataValueField="TypeName" OnSelectedIndexChanged="ddlAttributeTypes_SelectedIndexChanged"
                                    AutoPostBack="true" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="ddlAttributeTypes" ValidationGroup="vgAttributeInsert" meta:resourceKey="rfvAttributeType" InitialValue="" />
                            </div>
                            <asp:UpdatePanel runat="server">
                                <ContentTemplate>
                                    <asp:MultiView runat="server" ID="mvOptions">
                                        <asp:View runat="server" ID="vStringOptions">
                                            <fieldset>
                                                <legend>
                                                    <asp:Literal runat="server" meta:resourceKey="litTypeOptions" /></legend>
                                                <div class="field inline break-after isHtmlOption">
                                                    <asp:Label runat="server" meta:resourceKey="lblStringTypeIsHtml" AssociatedControlID="cbStringTypeIsHtml" />
                                                    <asp:CheckBox runat="server" ID="cbStringTypeIsHtml" />
                                                </div>
                                                <div id="noHtmlOptions">
                                                    <div class="field inline">
                                                        <asp:Label runat="server" meta:resourceKey="lblStringTypeMaxLength" AssociatedControlID="tbxStringTypeMaxLength" />
                                                        <asp:TextBox runat="server" ID="tbxStringTypeMaxLength" MaxLength="10" CssClass="numeric" />
                                                        <asp:CompareValidator runat="server" ControlToValidate="tbxStringTypeMaxLength" Type="Integer" ValidationGroup="vgAttributeInsert" Operator="DataTypeCheck" meta:resourceKey="cvStringTypeMaxLength" />
                                                    </div>
                                                    <div class="field inline break">
                                                        <asp:Label runat="server" meta:resourceKey="lblStringTypeRegularExpression" AssociatedControlID="tbxStringTypeRegularExpression" />
                                                        <asp:TextBox runat="server" ID="tbxStringTypeRegularExpression" />
                                                    </div>
                                                </div>
                                            </fieldset>
                                        </asp:View>
                                    </asp:MultiView>
                                </ContentTemplate>
                                <Triggers>
                                    <asp:AsyncPostBackTrigger ControlID="ddlAttributeTypes" />
                                </Triggers>
                            </asp:UpdatePanel>
                        </td>
                        <td>
                            <mag:Localizer ID="mlAttributeName" runat="server" ShowHeader="false">
                                <localizablefields>
                                    <mag:LocalizableField PropertyName="Name" Editor="SingleLineString" MaxLength="50" />
                                </localizablefields>
                            </mag:Localizer>
                        </td>
                        <td class="requiredAttributeFeature">
                            <asp:CheckBox ID="cbxAttributeIsRequired" runat="server" />
                        </td>
                        <td>
                            <asp:CheckBox ID="cbxAttributeIsLocalizable" runat="server" />
                        </td>
                        <td runat="server" visible="false">
                            <asp:CheckBox ID="cbxAttributeIsCollection" runat="server" />
                        </td>
                        <td class="numeric">
                            <asp:DropDownList ID="ddlAttributeOrders" runat="server" CssClass="autoSize" />
                        </td>
                        <td>
                            <ul>
                                <li>
                                    <asp:ImageButton runat="server" SkinID="Add" ToolTip='<%$ resources:global,Add %>' ValidationGroup="vgAttributeInsert" OnClick="imgbtnAddAttribute_Click" />
                                </li>
                            </ul>
                        </td>
                    </mag:FeaturePanel>
                    <asp:ListView ID="lvAttributes" runat="server" DataKeyNames="AttributeId" OnItemCanceling="lvAttributes_ItemCanceling" OnItemDataBound="lvAttributes_ItemDataBound" OnItemEditing="lvAttributes_ItemEditing"
                        OnItemDeleting="lvAttributes_ItemDeleting" OnItemUpdating="lvAttributes_ItemUpdating" OnSorting="lvAttributes_Sorting">
                        <ItemTemplate>
                            <tr>
                                <td>
                                    <asp:Literal runat="server" Text='<%# Eval("Code") %>' />
                                </td>
                                <td>
                                    <span title='<%# Eval("TypeCategoryCode") %>'>
                                        <asp:Literal runat="server" Text='<%# Eval("TypeDisplayName") %>' /></span>
                                </td>
                                <td>
                                    <asp:Literal runat="server" Text='<%# Eval("Name") %>' />
                                </td>
                                <td class="requiredAttributeFeature">
                                    <asp:CheckBox runat="server" Enabled="false" Checked='<%# Eval("IsRequired") %>' />
                                </td>
                                <td>
                                    <asp:CheckBox runat="server" Enabled="false" Checked='<%# Eval("IsLocalizable") %>' />
                                </td>
                                <td runat="server" visible="false">
                                    <asp:CheckBox runat="server" Enabled="false" Checked='<%# Eval("IsCollection") %>' />
                                </td>
                                <td class="numeric">
                                    <asp:DropDownList ID="ddlAttributeOrders" CssClass="autoSize" runat="server" Enabled='<%# this.CanEdit %>' AutoPostBack="true" OnSelectedIndexChanged="ddlAttributeOrders_SelectedIndexChanged" />
                                </td>
                                <mag:FeaturePanel runat="server" Tag="Td" Level="Edit">
                                    <ul>
                                        <li>
                                            <asp:ImageButton runat="server" SkinID="Edit" ToolTip='<%$ resources:global,Edit %>' CommandName="Edit" />
                                        </li>
                                        <li>
                                            <asp:ImageButton runat="server" SkinID="Delete" ToolTip='<%$ resources:global,Delete %>' CommandName="Delete" />
                                        </li>
                                    </ul>
                                </mag:FeaturePanel>
                            </tr>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <tr>
                                <td>
                                    <asp:TextBox ID="tbxAttributeCode" runat="server" MaxLength="50" Text='<%# Eval("Code") %>' Enabled="false" />
                                </td>
                                <td>
                                    <div>
                                        <mag:DropDownList runat="server" ID="ddlAttributeTypes" GroupByTextField="Category" DataTextField="DisplayName" DataValueField="TypeName" Enabled="false" />
                                    </div>
                                    <asp:MultiView runat="server" ID="mvOptions">
                                        <asp:View runat="server" ID="vStringOptions">
                                            <fieldset>
                                                <legend>
                                                    <asp:Literal runat="server" meta:resourceKey="litTypeOptions" /></legend>
                                                <div class="field inline break-after isHtmlOption">
                                                    <asp:Label runat="server" meta:resourceKey="lblStringTypeIsHtml" AssociatedControlID="cbStringTypeIsHtml" />
                                                    <asp:CheckBox runat="server" ID="cbStringTypeIsHtml" />
                                                </div>
                                                <div id="noHtmlOptions">
                                                    <div class="field inline ">
                                                        <asp:Label runat="server" meta:resourceKey="lblStringTypeMaxLength" AssociatedControlID="tbxStringTypeMaxLength" />
                                                        <asp:TextBox runat="server" ID="tbxStringTypeMaxLength" MaxLength="10" type="number" />
                                                        <asp:CompareValidator runat="server" ControlToValidate="tbxStringTypeMaxLength" Type="Integer" ValidationGroup="vgAttributeEdit" Operator="DataTypeCheck" meta:resourceKey="cvStringTypeMaxLength" />
                                                    </div>
                                                    <div class="field inline break">
                                                        <asp:Label runat="server" meta:resourceKey="lblStringTypeRegularExpression" AssociatedControlID="tbxStringTypeRegularExpression" />
                                                        <asp:TextBox runat="server" ID="tbxStringTypeRegularExpression" />
                                                    </div>
                                                </div>
                                            </fieldset>
                                        </asp:View>
                                    </asp:MultiView>
                                </td>
                                <td>
                                    <mag:localizer id="mlAttributeName" runat="server" showheader="false">
                                        <localizablefields>
                                            <mag:LocalizableField PropertyName="Name" Editor="SingleLineString" MaxLength="50" />
                                        </localizablefields>
                                    </mag:localizer>
                                </td>
                                <td class="requiredAttributeFeature">
                                    <asp:CheckBox ID="cbxAttributeIsRequired" runat="server" Checked='<%# Eval("IsRequired") %>' />
                                </td>
                                <td>
                                    <asp:CheckBox ID="cbxAttributeIsLocalizable" runat="server" Checked='<%# Eval("IsLocalizable") %>' Enabled="false" />
                                </td>
                                <td runat="server" visible="false">
                                    <asp:CheckBox ID="cbxAttributeIsCollection" runat="server" Checked='<%# Eval("IsCollection") %>' Enabled='<%# Eval("TypeCategoryCode") != "BaseType" %>' />
                                </td>
                                <td class="numeric">
                                    <asp:DropDownList ID="ddlAttributeOrders" runat="server" CssClass="autoSize" />
                                </td>
                                <td>
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
                    </asp:ListView>
                </tbody>
            </table>
        </fieldset>
        <fieldset>
            <legend>
                <asp:Literal runat="server" meta:resourcekey="litStores" />
            </legend>
            <asp:UpdatePanel runat="server">
                <ContentTemplate>
                    <mag:swaplist id="mslStores" runat="server" datatextfield="Code" datavaluefield="StoreId" confirmonremove="true" meta:resourcekey="mslStores" />
                </ContentTemplate>
            </asp:UpdatePanel>
        </fieldset>
    </div>
</asp:Content>
