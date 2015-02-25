<%@ Page Title="" Language="C#" MasterPageFile="~/App_Masters/DefaultLayout.Master"
    AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="Magelia.WebStore.Admin.Products.Categories.Edit" %>

<%@ Register TagPrefix="mag" TagName="Unauthorized" Src="~/App_UserControls/Generics/Unauthorized.ascx" %>
<asp:Content ContentPlaceHolderID="cphBarTitle" runat="server">
    <asp:Literal ID="litCategories2" runat="server" meta:resourcekey="litCategories" />
</asp:Content>
<asp:Content ContentPlaceHolderID="cphBarContent" runat="server">
    <ul>
        <li id="iCancel" runat="server" visible="false">
            <asp:LinkButton ID="lbtnCancel" runat="server" Text='<%$ resources:global,Cancel %>'
                SkinID="Minor" OnClick="lbtnCancel_Click" />
        </li>
        <li id="iSave" runat="server">
            <asp:LinkButton ID="lbtnSave" runat="server" Text='<%$ resources:global,Save %>'
                SkinID="Major" ValidationGroup="vgCategory" OnClick="lbtnSave_Click" />
        </li>
    </ul>
</asp:Content>
<asp:Content ContentPlaceHolderID="cphBody" runat="server">
    <asp:ScriptManagerProxy runat="server">
        <CompositeScript>
            <Scripts>
                <asp:ScriptReference Path="~/Scripts/Components/Categories/TreeView.js" />
                <asp:ScriptReference Path="~/Scripts/Components/Categories/CategoryNode.js" />
                <asp:ScriptReference Path="~/Scripts/Components/Categories/EditableCategoryNode.js" />
                <asp:ScriptReference Path="~/Scripts/Components/Categories/TreeView.Localizations.js" ResourceUICultures="fr" />
                <asp:ScriptReference Path="~/Scripts/Components/Categories/CategoryNode.Localizations.js" ResourceUICultures="fr" />
                <asp:ScriptReference Path="~/Scripts/Components/Categories/EditableCategoryNode.Localizations.js" ResourceUICultures="fr" />
            </Scripts>
        </CompositeScript>
        <Services>
            <asp:ServiceReference Path="~/Products/Categories/Services.asmx" />
        </Services>
    </asp:ScriptManagerProxy>
    <script type="text/javascript">
        $(document).ready(
            function () {
                new Magelia.WebStore.Categories.TreeView(
                    {
                        culture: '<%= System.Threading.Thread.CurrentThread.CurrentCulture.LCID %>',
                        container: '#bCategoriesTreeView',
                        persister: '#hfCategoriesTreeViewPersister',
                        catalogSelector: '#ddlCatalogs', 
                        categorySelector: '#tbxCategorySelection',
                        canEdit : <%= this.CanEdit.ToString().ToLowerInvariant() %>,
                        canCreateAndDelete : <%= this.CanCreateAndDelete.ToString().ToLowerInvariant() %>
                        }
                );
            }
        );
    </script>
    <div id="bCategories" runat="server" clientidmode="Static" class="form">
        <div class="left">
            <fieldset>
                <legend>
                    <asp:Label ID="lblCatalogs" runat="server" meta:resourcekey="lblCatalogs" />
                </legend>
                <asp:DropDownList ID="ddlCatalogs" runat="server" ClientIDMode="Static" DataTextField="Code" DataValueField="CatalogId" AutoPostBack="true" OnSelectedIndexChanged="ddlCatalogs_SelectedIndexChanged" />
            </fieldset>
            <fieldset>
                <legend>
                    <asp:Literal ID="litCaegories2" runat="server" meta:resourcekey="litCategories" />
                </legend>
                <div id="bCategoriesTreeView">
                </div>
                <asp:HiddenField ID="hfCategoriesTreeViewPersister" runat="server" ClientIDMode="Static" />
                <asp:TextBox ID="tbxCategorySelection" runat="server" ClientIDMode="Static" AutoPostBack="true" OnTextChanged="tbxCategorySelection_TextChanged" />
            </fieldset>
        </div>
        <div class="right">
            <asp:MultiView ID="mvEdition" runat="server">
                <asp:View ID="vSelection" runat="server">
                    <p class="message information">
                        <asp:Literal ID="litSelection" runat="server" meta:resourcekey="litSelection" />
                    </p>
                </asp:View>
                <asp:View ID="vEdition" runat="server">
                    <asp:ValidationSummary runat="server" ValidationGroup="vgCategory" HeaderText='<%$ Resources: Global, ErrorMsgText %>' />
                    <mag:TabStrip ID="mtpCategory" runat="server" MultiViewID="mvCategory" ValidationGroup="vgCategory"
                        OnSelectedTabItemChanged="mtpCategory_SelectedTabItemChanged">
                        <TabItems>
                            <mag:TabItem meta:resourcekey="mtiGeneral" />
                            <mag:TabItem meta:resourcekey="mtiProducts" />
                            <mag:TabItem meta:resourcekey="mtiMedias" />
                            <mag:TabItem meta:resourceKey="mtiContentItems" Text='<%$ resources:global, ContentItems %>' />
                        </TabItems>
                    </mag:TabStrip>
                    <div>
                        <asp:MultiView ID="mvCategory" runat="server">
                            <asp:View ID="vGeneral" runat="server">
                                <script type="text/javascript">
                                    Magelia.WebStore.HelpManager.Instance.setSubPath('general');
                                </script>
                                <fieldset>
                                    <legend>
                                        <asp:Literal runat="server" Text='<%$ resources:global,Properties %>' />
                                    </legend>
                                    <div class="field inline">
                                        <asp:Label ID="lblCode" runat="server" meta:resourcekey="lblCode" AssociatedControlID="tbxCode" />
                                        <asp:TextBox ID="tbxCode" runat="server" />
                                        <asp:RequiredFieldValidator ID="rvfCode" runat="server" ValidationGroup="vgCategory"
                                            ControlToValidate="tbxCode" meta:resourcekey="rfvCode" />
                                        <asp:RegularExpressionValidator ID="revCodeLength" runat="server" ControlToValidate="tbxCode"
                                            ValidationExpression="^.{0,50}$" ValidationGroup="vgCategory" meta:resourcekey="revCodeLength" />
                                        <asp:CustomValidator ID="cvCodeIsUnique" runat="server" ControlToValidate="tbxCode"
                                            ValidationGroup="vgCategory" meta:resourcekey="cvCodeIsUnique" OnServerValidate="cvCodeIsUnique_ServerValidate" />
                                    </div>
                                    <div class="field inline break">
                                        <asp:Label ID="lblExternalId" runat="server" AssociatedControlID="tbxExternalId" meta:resourcekey="lblExternalId" />
                                        <asp:TextBox ID="tbxExternalId" runat="server" />
                                        <asp:RegularExpressionValidator ID="revExternalIdLength" runat="server" ValidationGroup="vgCategory"
                                            ControlToValidate="tbxExternalId" meta:resourcekey="revExternalIdLength" ValidationExpression="^.{0,50}$" />
                                    </div>
                                    <div class="field inline break">
                                        <asp:Label ID="lblIsActive" runat="server" meta:resourcekey="lblIsActive" AssociatedControlID="cbxIsActive" />
                                        <asp:CheckBox ID="cbxIsActive" runat="server" />
                                    </div>
                                    <div class="field inline break">
                                        <asp:Label ID="lblIsOnline" runat="server" meta:resourcekey="lblIsOnline" AssociatedControlID="cbxIsOnline" />
                                        <asp:CheckBox ID="cbxIsOnline" runat="server" />
                                    </div>
                                </fieldset>
                                <mag:FeaturePanel runat="server" Level="View" Feature="content.localizations">
                                    <fieldset>
                                        <legend>
                                            <asp:Label ID="lblCulture" runat="server" meta:resourcekey="lblCulture" AssociatedControlID="ddlCultures" />
                                            <asp:DropDownList ID="ddlCultures" runat="server" AutoPostBack="true" DataValueField="CultureId"
                                                ValidationGroup="vgCategory" CausesValidation="true" DataTextField="Name" OnSelectedIndexChanged="ddlCultures_SelectedIndexChanged" />
                                            <mag:FeaturePanel runat="server" Level="CreateAndDelete" Feature="content.localizations">
                                                <asp:ImageButton ID="imgbtnDeleteLocalization" runat="server" OnClick="imgbtnDeleteLocalization_Click"
                                                    SkinID="Delete" ToolTip='<%$ resources:global,Delete %>' />
                                            </mag:FeaturePanel>
                                        </legend>
                                        <div class="field inline">
                                            <asp:Label ID="lblName" runat="server" meta:resourcekey="lblName" AssociatedControlID="tbxName" />
                                            <asp:TextBox ID="tbxName" runat="server" />
                                            <asp:RegularExpressionValidator ID="revNameLength" runat="server" ControlToValidate="tbxName"
                                                ValidationExpression="^.{0,50}$" ValidationGroup="vgCategory" meta:resourcekey="revNameLength" />
                                            <asp:CustomValidator ID="cvNameRequired" runat="server" ValidationGroup="vgCategory"
                                                ValidateEmptyText="true" ControlToValidate="tbxName" meta:resourcekey="cvNameRequired"
                                                OnServerValidate="cvNameRequired_ServerValidate" />
                                        </div>
                                        <div class="field inline break">
                                            <asp:Label ID="lblShortDescription" runat="server" meta:resourcekey="lblShortDescription"
                                                AssociatedControlID="tbxShortDescription" />
                                            <asp:TextBox ID="tbxShortDescription" runat="server" TextMode="MultiLine" CssClass="tinymce" />
                                        </div>
                                        <div class="field inline break">
                                            <asp:Label ID="lblLongDescripion" runat="server" meta:resourcekey="lblLongDescripion"
                                                AssociatedControlID="tbxLongDescripion" />
                                            <asp:TextBox ID="tbxLongDescripion" runat="server" TextMode="MultiLine" CssClass="tinymce" />
                                        </div>
                                    </fieldset>
                                </mag:FeaturePanel>
                            </asp:View>
                            <asp:View ID="vProducts" runat="server">
                                <asp:MultiView ID="mvProducts" runat="server">
                                    <asp:View ID="vProductsAssociation" runat="server">
                                        <fieldset>
                                            <legend>
                                                <asp:Literal ID="litAvailableProducts" runat="server" meta:resourcekey="litAvailableProducts" />
                                            </legend>
                                            <mag:SearchPanel runat="server" DefaultButton="lbtnAvailableProductsSearch">
                                                <asp:ValidationSummary runat="server" ValidationGroup="vgAvailableProductsSearch"
                                                    HeaderText="<%$ Resources: Global, ErrorMsgText %>" />
                                                <div class="field">
                                                    <asp:Label ID="lblAvailableProductsProductType" runat="server" meta:resourcekey="lblAvailableProductsProductType"
                                                        AssociatedControlID="ddlAvailableProductsProductType" />
                                                    <mag:DropDownList ID="ddlAvailableProductsProductType" runat="server" AppendDataBoundItems="true"
                                                        GroupByTextField="ProductKind" DataTextField="Code" DataValueField="ProductTypeId">
                                                        <asp:ListItem />
                                                    </mag:DropDownList>
                                                </div>
                                                <div class="field">
                                                    <asp:Label ID="lblAvailableProductsCodeOrSKU" runat="server" meta:resourcekey="lblAvailableProductsCodeOrSKU" AssociatedControlID="tbxAvailableProductsCodeOrSKU" />
                                                    <asp:TextBox ID="tbxAvailableProductsCodeOrSKU" runat="server" />
                                                </div>
                                                <div class="field">
                                                    <asp:Label ID="lblAvailableProductsName" runat="server" meta:resourcekey="lblAvailableProductsName"
                                                        AssociatedControlID="tbxAvailableProductsName" />
                                                    <asp:TextBox ID="tbxAvailableProductsName" runat="server" />
                                                </div>
                                                <div class="field">
                                                    <asp:Label ID="lblAvailableProductsCatalogs" runat="server" meta:resourcekey="lblAvailableProductsCatalogs"
                                                        AssociatedControlID="ddlAvailableProductsCatalogsOperator" />
                                                    <asp:DropDownList ID="ddlAvailableProductsCatalogsOperator" runat="server" CssClass="operator autoSize">
                                                        <asp:ListItem Text="=" Value="=" />
                                                        <asp:ListItem Text="!=" Value="!=" />
                                                        <asp:ListItem Text="&lt;" Value="&lt;" />
                                                        <asp:ListItem Text="&lt;=" Value="&lt;=" />
                                                        <asp:ListItem Text="&gt;" Value="&gt;" />
                                                        <asp:ListItem Text="&gt;=" Value="&gt;=" />
                                                    </asp:DropDownList>
                                                    <asp:TextBox ID="tbxAvailableProductsCatalogs" runat="server" CssClass="numeric" />
                                                    <asp:CompareValidator ID="cvAvailableProductsCatalogsIsInteger" runat="server" ValidationGroup="vgAvailableProductsSearch"
                                                        meta:resourcekey="cvAvailableProductsCatalogsIsInteger" ControlToValidate="tbxAvailableProductsCatalogs"
                                                        Operator="DataTypeCheck" Type="Integer" />
                                                </div>
                                                <div class="field">
                                                    <asp:Label ID="lblAvailableProductsIsActive" runat="server" meta:resourcekey="lblAvailableProductsIsActive"
                                                        AssociatedControlID="ddlAvailableProductsIsActive" />
                                                    <asp:DropDownList ID="ddlAvailableProductsIsActive" runat="server">
                                                        <asp:ListItem />
                                                        <asp:ListItem Value="true" meta:resourcekey="liYes" />
                                                        <asp:ListItem Value="false" meta:resourcekey="liNo" />
                                                    </asp:DropDownList>
                                                </div>
                                                <div class="field">
                                                    <asp:Label ID="lblAvailableProductsIsOnline" runat="server" meta:resourcekey="lblAvailableProductsIsOnline"
                                                        AssociatedControlID="ddlAvailableProductsIsOnline" />
                                                    <asp:DropDownList ID="ddlAvailableProductsIsOnline" runat="server">
                                                        <asp:ListItem />
                                                        <asp:ListItem Value="true" meta:resourcekey="liYes" />
                                                        <asp:ListItem Value="false" meta:resourcekey="liNo" />
                                                    </asp:DropDownList>
                                                </div>
                                                <div class="buttons">
                                                    <ul>
                                                        <li>
                                                            <asp:LinkButton ID="lbtnAvailableProductsReset" runat="server" SkinID="Minor"
                                                                Text='<%$ resources:global,Reset %>' OnClick="lbtnAvailableProductsReset_Click" />
                                                        </li>
                                                        <li>
                                                            <asp:LinkButton ID="lbtnAvailableProductsSearch" runat="server" SkinID="Major"
                                                                ValidationGroup="vgAvailableProductsSearch" Text='<%$ resources:global,Search %>'
                                                                OnClick="lbtnAvailableProductsSearch_Click" />
                                                        </li>
                                                    </ul>
                                                </div>
                                            </mag:SearchPanel>
                                            <mag:Gridview ID="mgvAvailableProducts" runat="server" AllowPaging="true" DataKeyNames="ProductCatalogId"
                                                ShowSelectionColumn="true" EnableAutoRefresh="false" OnCommand="mgvAvailableProducts_Command">
                                                <commandbuttons>
                                                        <mag:CommandButton ID="mcbAssociateProducts" runat="server" meta:resourcekey="mcbAssociateProducts"
                                                            CommandName="AssociateProducts" />
                                                    </commandbuttons>
                                                <columns>
                                                    <mag:GridViewColumn ID="mgvcProductType" runat="server" AllowSorting="true" SortExpression="ProductType" meta:resourcekey="mgvcProductType">
                                                        <celltemplate>
                                                            <asp:Literal runat="server" Text='<%# Eval("ProductType") %>' />
                                                        </celltemplate>
                                                    </mag:GridViewColumn>
                                                    <mag:GridViewColumn ID="mgvcCodeOrSKU" runat="server" AllowSorting="true" SortExpression="CodeOrSKU" meta:resourcekey="mgvcCodeOrSKU">
                                                        <celltemplate>
                                                            <asp:Literal runat="server" Text='<%# Eval("CodeOrSKU") %>' />
                                                        </celltemplate>
                                                    </mag:GridViewColumn>
                                                    <mag:GridViewColumn ID="mgvcName" runat="server" AllowSorting="true" SortExpression="Name" meta:resourcekey="mgvcName">
                                                        <celltemplate>
                                                            <asp:Literal runat="server" Text='<%# Eval("Name") %>' /> 
                                                            <mag:ProductDetail runat="server" ProductId='<%# Eval("ProductId") %>' />
                                                        </celltemplate>
                                                    </mag:GridViewColumn>
                                                    <mag:GridViewColumn ID="mgvcCatalogs" CssClass="numeric" runat="server" AllowSorting="true" SortExpression="Catalogs" meta:resourcekey="mgvcCatalogs">
                                                        <celltemplate>
                                                            <asp:Literal runat="server" Text='<%# Eval("Catalogs") %>' />
                                                        </celltemplate>
                                                    </mag:GridViewColumn>
                                                    <mag:GridViewColumn ID="mgvcIsActive" runat="server" AllowSorting="true" SortExpression="IsActive" meta:resourcekey="mgvcIsActive">
                                                        <celltemplate>
                                                            <asp:PlaceHolder runat="server" Visible='<%# ((Nullable<Boolean>)Eval("IsActive")).HasValue %>'>
                                                                <asp:CheckBox runat="server" Enabled="false" Checked='<%# ((Nullable<Boolean>)Eval("IsActive"))??false %>' />
                                                            </asp:PlaceHolder>
                                                        </celltemplate>
                                                    </mag:GridViewColumn>
                                                    <mag:GridViewColumn ID="mgvcIsOnline" runat="server" AllowSorting="true" SortExpression="IsOnline" meta:resourcekey="mgvcIsOnline">
                                                        <celltemplate>
                                                            <asp:CheckBox runat="server" Enabled="false" Checked='<%# Eval("IsOnline") %>' />
                                                        </celltemplate>
                                                    </mag:GridViewColumn>
                                                    <mag:GridViewColumn ID="mgvcOrder" CssClass="numeric" runat="server" AllowSorting="false"  meta:resourcekey="mgvcOrder">
                                                        <celltemplate>
                                                            <asp:DropDownList ID="ddlOrder" Enabled='<%# this.CanEdit %>' runat="server" CssClass="autoSize" DataSource='<%# Eval("Orders") %>' />
                                                        </celltemplate>
                                                    </mag:GridViewColumn>
                                                    <mag:GridViewColumn runat="server" AllowSorting="false" Name='<%$ resources:global,Action %>'>
                                                        <celltemplate>
                                                            <ul>
                                                                <li>
                                                                    <asp:ImageButton runat="server" CommandName="AssociateProducts" Enabled='<%# this.CanEdit %>' SkinID="Add" ToolTip='<%$ resources:global,Add %>'/>
                                                                </li>
                                                            </ul>
                                                        </celltemplate>
                                                    </mag:GridViewColumn>
                                                </columns>
                                            </mag:Gridview>
                                        </fieldset>
                                        <fieldset>
                                            <legend>
                                                <asp:Literal ID="litAssociatedProducts" runat="server" meta:resourcekey="litAssociatedProducts" />
                                            </legend>
                                            <mag:SearchPanel runat="server" DefaultButton="lbtnAssociatedProductsSearch">
                                                <asp:ValidationSummary runat="server" ValidationGroup="vgAssociatedProductsSearch"
                                                    HeaderText="<%$ Resources: Global, ErrorMsgText %>" />
                                                <div class="field">
                                                    <asp:Label ID="lblAssociatedProductsProductType" runat="server" meta:resourcekey="lblAssociatedProductsProductType"
                                                        AssociatedControlID="ddlAssociatedProductsProductType" />
                                                    <mag:DropDownList ID="ddlAssociatedProductsProductType" runat="server" AppendDataBoundItems="true"
                                                        GroupByTextField="ProductKind" DataTextField="Code" DataValueField="ProductTypeId">
                                                        <asp:ListItem />
                                                    </mag:DropDownList>
                                                </div>
                                                <div class="field">
                                                    <asp:Label ID="lblAssociatedProductsCodeOrSKU" runat="server" meta:resourcekey="lblAssociatedProductsCodeOrSKU"
                                                        AssociatedControlID="tbxAssociatedProductsCodeOrSKU" />
                                                    <asp:TextBox ID="tbxAssociatedProductsCodeOrSKU" runat="server" />
                                                </div>
                                                <div class="field">
                                                    <asp:Label ID="lblAssociatedProductsName" runat="server" meta:resourcekey="lblAssociatedProductsName"
                                                        AssociatedControlID="tbxAssociatedProductsName" />
                                                    <asp:TextBox ID="tbxAssociatedProductsName" runat="server" />
                                                </div>
                                                <div class="field">
                                                    <asp:Label ID="lblAssociatedProductsCatalogs" runat="server" meta:resourcekey="lblAssociatedProductsCatalogs"
                                                        AssociatedControlID="ddlAssociatedProductsCatalogsOperator" />
                                                    <asp:DropDownList ID="ddlAssociatedProductsCatalogsOperator" runat="server" CssClass="operator autoSize">
                                                        <asp:ListItem Text="=" Value="=" />
                                                        <asp:ListItem Text="!=" Value="!=" />
                                                        <asp:ListItem Text="&lt;" Value="&lt;" />
                                                        <asp:ListItem Text="&lt;=" Value="&lt;=" />
                                                        <asp:ListItem Text="&gt;" Value="&gt;" />
                                                        <asp:ListItem Text="&gt;=" Value="&gt;=" />
                                                    </asp:DropDownList>
                                                    <asp:TextBox ID="tbxAssociatedProductsCatalogs" runat="server" CssClass="numeric" />
                                                    <asp:CompareValidator ID="cvAssociatedProductsCatalogsIsInteger" runat="server" ValidationGroup="vgAssociatedProductsSearch"
                                                        meta:resourcekey="cvAssociatedProductsCatalogsIsInteger" ControlToValidate="tbxAssociatedProductsCatalogs"
                                                        Operator="DataTypeCheck" Type="Integer" />
                                                </div>
                                                <div class="field">
                                                    <asp:Label ID="lblAssociatedProductsIsActive" runat="server" meta:resourcekey="lblAssociatedProductsIsActive"
                                                        AssociatedControlID="ddlAssociatedProductsIsActive" />
                                                    <asp:DropDownList ID="ddlAssociatedProductsIsActive" runat="server">
                                                        <asp:ListItem />
                                                        <asp:ListItem Value="true" meta:resourcekey="liYes" />
                                                        <asp:ListItem Value="false" meta:resourcekey="liNo" />
                                                    </asp:DropDownList>
                                                </div>
                                                <div class="field">
                                                    <asp:Label ID="lblAssociatedProductsIsOnline" runat="server" meta:resourcekey="lblAssociatedProductsIsOnline"
                                                        AssociatedControlID="ddlAssociatedProductsIsOnline" />
                                                    <asp:DropDownList ID="ddlAssociatedProductsIsOnline" runat="server">
                                                        <asp:ListItem />
                                                        <asp:ListItem Value="true" meta:resourcekey="liYes" />
                                                        <asp:ListItem Value="false" meta:resourcekey="liNo" />
                                                    </asp:DropDownList>
                                                </div>
                                                <div class="field">
                                                    <asp:Label ID="lblAssociatedProductsOrder" runat="server" meta:resourcekey="lblAssociatedProductsOrder"
                                                        AssociatedControlID="ddlAssociatedProductsOrderOperator" />
                                                    <asp:DropDownList ID="ddlAssociatedProductsOrderOperator" runat="server" CssClass="operator autoSize">
                                                        <asp:ListItem Text="=" Value="=" />
                                                        <asp:ListItem Text="!=" Value="!=" />
                                                        <asp:ListItem Text="&lt;" Value="&lt;" />
                                                        <asp:ListItem Text="&lt;=" Value="&lt;=" />
                                                        <asp:ListItem Text="&gt;" Value="&gt;" />
                                                        <asp:ListItem Text="&gt;=" Value="&gt;=" />
                                                    </asp:DropDownList>
                                                    <asp:TextBox ID="tbxAssociatedProductsOrder" runat="server" CssClass="numeric" />
                                                    <asp:CompareValidator ID="cvAssociatedProductsOrderIsInteger" runat="server" ValidationGroup="vgAssociatedProductsSearch"
                                                        meta:resourcekey="cvAssociatedProductsOrderIsInteger" ControlToValidate="tbxAssociatedProductsOrder"
                                                        Operator="DataTypeCheck" Type="Integer" />
                                                </div>
                                                <div class="buttons">
                                                    <ul>
                                                        <li>
                                                            <asp:LinkButton ID="lbtnAssociatedProductsReset" runat="server" SkinID="Minor"
                                                                Text='<%$ resources:global,Reset %>' OnClick="lbtnAssociatedProductsReset_Click" />
                                                        </li>
                                                        <li>
                                                            <asp:LinkButton ID="lbtnAssociatedProductsSearch" runat="server" SkinID="Major"
                                                                ValidationGroup="vgAssociatedProductsSearch" Text='<%$ resources:global,Search %>'
                                                                OnClick="lbtnAssociatedProductsSearch_Click" />
                                                        </li>
                                                    </ul>
                                                </div>
                                            </mag:SearchPanel>
                                            <mag:Gridview ID="mgvAssociatedProducts" runat="server" AllowPaging="true" DataKeyNames="ProductCatalogId"
                                                ShowSelectionColumn="true" EnableAutoRefresh="false" OnCommand="mgvAssociatedProducts_Command">
                                                <commandbuttons>
                                                    <mag:CommandButton ID="mcbRemoveProducts" runat="server" meta:resourcekey="mcbRemoveProducts" CommandName="RemoveProducts" />
                                                </commandbuttons>
                                                <columns>
                                                    <mag:GridViewColumn runat="server" AllowSorting="true" SortExpression="ProductType" meta:resourcekey="mgvcProductType">
                                                        <celltemplate>
                                                            <asp:Literal runat="server" Text='<%# Eval("ProductType") %>' />
                                                        </celltemplate>
                                                    </mag:GridViewColumn>
                                                    <mag:GridViewColumn runat="server" AllowSorting="true" SortExpression="CodeOrSKU" meta:resourcekey="mgvcCodeOrSKU">
                                                        <celltemplate>
                                                            <asp:Literal runat="server" Text='<%# Eval("CodeOrSKU") %>' />
                                                        </celltemplate>
                                                    </mag:GridViewColumn>
                                                    <mag:GridViewColumn runat="server" AllowSorting="true" SortExpression="Name" meta:resourcekey="mgvcName">
                                                        <celltemplate>
                                                            <asp:Literal runat="server" Text='<%# Eval("Name") %>' /> 
                                                            <mag:ProductDetail runat="server" ProductId='<%# Eval("ProductId") %>' />
                                                        </celltemplate>
                                                    </mag:GridViewColumn>
                                                    <mag:GridViewColumn runat="server" CssClass="numeric" AllowSorting="true" SortExpression="Catalogs" meta:resourcekey="mgvcCatalogs">
                                                        <celltemplate>
                                                            <asp:Literal runat="server" Text='<%# Eval("Catalogs") %>' />
                                                        </celltemplate>
                                                    </mag:GridViewColumn>
                                                    <mag:GridViewColumn runat="server" AllowSorting="true" SortExpression="IsActive" meta:resourcekey="mgvcIsActive">
                                                        <celltemplate>
                                                            <asp:PlaceHolder runat="server" Visible='<%# ((Nullable<Boolean>)Eval("IsActive")).HasValue %>'>
                                                                <asp:CheckBox runat="server" Enabled="false" Checked='<%# ((Nullable<Boolean>)Eval("IsActive"))??false %>' />
                                                            </asp:PlaceHolder>
                                                        </celltemplate>
                                                    </mag:GridViewColumn>
                                                    <mag:GridViewColumn runat="server" AllowSorting="true" SortExpression="IsOnline" meta:resourcekey="mgvcIsOnline">
                                                        <celltemplate>
                                                            <asp:CheckBox runat="server" Enabled="false" Checked='<%# Eval("IsOnline") %>' />
                                                        </celltemplate>
                                                    </mag:GridViewColumn>
                                                    <mag:GridViewColumn runat="server" CssClass="numeric" AllowSorting="true" SortExpression="Order" meta:resourcekey="mgvcOrder">
                                                        <celltemplate>
                                                            <asp:DropDownList ID="ddlAssociatedProductOrder" runat="server" Enabled='<%# this.CanEdit %>' SelectedValue='<%# Eval("Order") %>' DataSource='<%# Eval("Orders") %>' CssClass="autoSize" AutoPostBack="true" OnSelectedIndexChanged="ddlAssociatedProductOrder_SelectedIndexChanged" />
                                                        </celltemplate>
                                                    </mag:GridViewColumn>
                                                    <mag:GridViewColumn runat="server" AllowSorting="false" Name='<%$ resources:global,Action %>'>
                                                        <celltemplate>
                                                            <ul>
                                                                <li>
                                                                    <asp:ImageButton runat="server" Enabled='<%# this.CanEdit %>' CommandName="RemoveProducts" SkinID="Delete" ToolTip='<%$ resources:global,Delete %>'/>
                                                                </li>
                                                            </ul>
                                                        </celltemplate>
                                                    </mag:GridViewColumn>
                                                </columns>
                                            </mag:Gridview>
                                        </fieldset>
                                    </asp:View>
                                    <asp:View ID="vUnauthorized" runat="server">
                                        <mag:Unauthorized runat="server" />
                                    </asp:View>
                                </asp:MultiView>
                            </asp:View>
                            <asp:View ID="vMedias" runat="server">
                                <fieldset>
                                    <legend>
                                        <asp:Literal ID="litAssociatedMedias" runat="server" meta:resourcekey="litAssociatedMedias" />
                                    </legend>
                                    <mag:FilePicker ID="mfpCategory" runat="server" />
                                </fieldset>
                            </asp:View>
                            <asp:View runat="server">
                                <mag:AssociatedContentItems ID="mAssociatedContentItems" runat="server" ValidationGroup="vgCategory" />
                            </asp:View>
                        </asp:MultiView>
                    </div>
                </asp:View>
            </asp:MultiView>
        </div>
    </div>
</asp:Content>
