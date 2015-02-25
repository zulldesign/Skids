<%@ Page Title="" Language="C#" MasterPageFile="~/App_Masters/DefaultLayout.Master" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="Magelia.WebStore.Admin.Products.Catalogs.Edit" %>

<%@ Register TagPrefix="mag" TagName="Unauthorized" Src="~/App_UserControls/Generics/Unauthorized.ascx" %>
<asp:Content ContentPlaceHolderID="cphBarTitle" runat="server">
    <asp:Literal ID="litCatalog" runat="server" meta:resourcekey="litCatalog" />
</asp:Content>
<asp:Content ContentPlaceHolderID="cphBarContent" runat="server">
    <ul>
        <li id="iSave" runat="server">
            <asp:LinkButton ID="lbtnSave" runat="server" Text='<%$ resources:global,Save %>' SkinID="Major" ValidationGroup="vgCatalog" OnClick="lbtnSave_Click" />
        </li>
    </ul>
</asp:Content>
<asp:Content ContentPlaceHolderID="cphBody" runat="server">
    <mag:TabStrip ID="mtsCatalog" runat="server" MultiViewID="mvCatalog" ValidationGroup="vgCatalog">
        <TabItems>
            <mag:TabItem meta:resourcekey="mtiGeneral" />
            <mag:TabItem meta:resourcekey="mtiProducts" />
            <mag:TabItem meta:resourcekey="mtiMedias" />
            <mag:TabItem meta:resourceKey="mtiContentItems" Text='<%$ resources:global, ContentItems %>' />
        </TabItems>
    </mag:TabStrip>
    <div class="form">
        <asp:ValidationSummary ID="mvsCatalogEdit" runat="server" ValidationGroup="vgCatalog" HeaderText="<%$ Resources: Global, ErrorMsgText %>" />
        <asp:MultiView ID="mvCatalog" runat="server" ActiveViewIndex="0">
            <asp:View runat="server">
                <script type="text/javascript">
                    Magelia.WebStore.HelpManager.Instance.setSubPath('general');
                </script>
                <fieldset>
                    <legend>
                        <asp:Literal runat="server" Text='<%$ resources:global,Properties %>' /></legend>
                    <div class="field inline">
                        <asp:Label ID="lblCode" runat="server" meta:resourcekey="lblCode" AssociatedControlID="tbxCode" />
                        <asp:TextBox ID="tbxCode" runat="server" />
                        <asp:RequiredFieldValidator ID="rfvCode" runat="server" ControlToValidate="tbxCode" ValidationGroup="vgCatalog" meta:resourcekey="rfvCode" />
                        <asp:RegularExpressionValidator ID="revCodeLength" runat="server" ControlToValidate="tbxCode" meta:resourcekey="revCodeLength" ValidationExpression="^.{0,50}$" ValidationGroup="vgCatalog" />
                        <asp:CustomValidator ID="cvCodeUnique" runat="server" ControlToValidate="tbxCode" ValidationGroup="vgCatalog" meta:resourcekey="cvCodeUnique" OnServerValidate="cvCodeUnique_ServerValidate" />
                    </div>
                    <div class="field inline break">
                        <asp:Label ID="lblExternalId" runat="server" AssociatedControlID="tbxExternalId" meta:resourcekey="lblExternalId" />
                        <asp:TextBox ID="tbxExternalId" runat="server" />
                        <asp:RegularExpressionValidator ID="revExternalIdLength" runat="server" ValidationGroup="vgCatalog" ControlToValidate="tbxExternalId" meta:resourcekey="revExternalIdLength" ValidationExpression="^.{0,50}$" />
                    </div>
                    <asp:UpdatePanel runat="server">
                        <ContentTemplate>
                            <div class="field inline break">
                                <asp:Label ID="lblStartDate" runat="server" meta:resourcekey="lblStartDate" AssociatedControlID="mdtpStartDate" />
                                <mag:datetimepicker id="mdtpStartDate" runat="server" />
                            </div>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                    <asp:UpdatePanel runat="server">
                        <ContentTemplate>
                            <div class="field break inline">
                                <asp:Label ID="lblEndDate" runat="server" meta:resourcekey="lblEndDate" AssociatedControlID="mdtpEndDate" />
                                <mag:datetimepicker id="mdtpEndDate" runat="server" />
                                <asp:CustomValidator ID="cvEndDateGreaterThanStartDate" runat="server" ValidationGroup="vgCatalog" OnServerValidate="cvEndDateGreaterThanStartDate_ServerValidate" meta:resourcekey="cvEndDateGreaterThanStartDate" />
                            </div>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                    <div class="field break inline">
                        <asp:Label ID="lblIncludeTaxes" runat="server" meta:resourcekey="lblIncludeTaxes" AssociatedControlID="cbxIncludeTaxes" />
                        <asp:CheckBox ID="cbxIncludeTaxes" runat="server" />
                    </div>
                    <div class="field break inline">
                        <asp:Label ID="lblIsActive" runat="server" meta:resourcekey="lblIsActive" AssociatedControlID="cbxIsActive" />
                        <asp:CheckBox ID="cbxIsActive" runat="server" Checked="true" />
                    </div>
                </fieldset>
                <fieldset>
                    <legend>
                        <asp:Literal runat="server" Text='<%$ resources:global,Localizations %>' />
                    </legend>
                    <mag:localizer id="mlCatalog" runat="server">
                        <localizablefields>
                            <mag:LocalizableField Editor="SingleLineString" Required="true" MaxLength="50" PropertyName="Name" meta:resourcekey="mlfName" />
                            <mag:LocalizableField Editor="MultiLineString" Required="false" PropertyName="ShortDescription" meta:resourcekey="mlfShortDescription" />
                            <mag:LocalizableField Editor="MultiLineString" Required="false" PropertyName="LongDescription" meta:resourcekey="mlfLongDescription" />
                        </localizablefields>
                    </mag:localizer>
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
                <fieldset>
                    <legend>
                        <asp:Label ID="lblCurrencies" runat="server" meta:resourcekey="lblCurrencies" />
                    </legend>
                    <asp:UpdatePanel runat="server">
                        <ContentTemplate>
                            <mag:swaplist id="mslCurrencies" runat="server" datatextfield="Code" datavaluefield="CurrencyId" meta:resourcekey="mslCurrencies" />
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </fieldset>
                <fieldset id="fsShippingZones" runat="server">
                    <legend>
                        <asp:Label ID="lblShippingZones" runat="server" meta:resourcekey="lblShippingZones" />
                    </legend>
                    <asp:UpdatePanel runat="server">
                        <ContentTemplate>
                            <mag:swaplist id="mslShippingZones" runat="server" datatextfield="Code" datavaluefield="GeographicZoneId" meta:resourcekey="mslShippingZones" />
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </fieldset>
            </asp:View>
            <asp:View runat="server">
                <script type="text/javascript">
                    Magelia.WebStore.HelpManager.Instance.setSubPath('associatedproducts');
                </script>
                <asp:MultiView ID="mvProducts" runat="server">
                    <asp:View ID="vProducts" runat="server">
                        <fieldset>
                            <legend>
                                <asp:Literal ID="litAvailableProducts" runat="server" meta:resourcekey="litAvailableProducts" />
                            </legend>
                            <mag:SearchPanel runat="server" DefaultButton="lbtnAvailableProductsSearch">
                                <asp:ValidationSummary runat="server" ValidationGroup="vgAvailableProductsSearch" HeaderText="<%$ Resources: Global, ErrorMsgText %>" />
                                <div class="field">
                                    <asp:Label ID="lblAvailableProductsProductType" runat="server" meta:resourcekey="lblAvailableProductsProductType" AssociatedControlID="ddlAvailableProductsProductTypes" />
                                    <mag:DropDownList ID="ddlAvailableProductsProductTypes" runat="server" DataTextField="Code" GroupByTextField="ProductKind" DataValueField="ProductTypeId" AppendDataBoundItems="true">
                                        <asp:ListItem />
                                    </mag:DropDownList>
                                </div>
                                <div class="field">
                                    <asp:Label ID="lblAvailableProductsCodeOrSKU" runat="server" meta:resourcekey="lblAvailableProductsCodeOrSKU" AssociatedControlID="tbxAvailableProductsCodeOrSKU" />
                                    <asp:TextBox ID="tbxAvailableProductsCodeOrSKU" runat="server" />
                                </div>
                                <div class="field">
                                    <asp:Label ID="lblAvailableProductsName" runat="server" meta:resourcekey="lblAvailableProductsName" AssociatedControlID="tbxAvailableProductsName" />
                                    <asp:TextBox ID="tbxAvailableProductsName" runat="server" />
                                </div>
                                <div class="field">
                                    <asp:Label ID="lblAvailableProductsCatalogs" runat="server" meta:resourcekey="lblAvailableProductsCatalogs" AssociatedControlID="ddlAvailableProductsCatalogsOperator" />
                                    <asp:DropDownList ID="ddlAvailableProductsCatalogsOperator" runat="server" CssClass="autoSize operator">
                                        <asp:ListItem Text="=" Value="=" />
                                        <asp:ListItem Text="!=" Value="!=" />
                                        <asp:ListItem Text="&lt;" Value="&lt;" />
                                        <asp:ListItem Text="&lt;=" Value="&lt;=" />
                                        <asp:ListItem Text="&gt;" Value="&gt;" />
                                        <asp:ListItem Text="&gt;=" Value="&gt;=" />
                                    </asp:DropDownList>
                                    <asp:TextBox ID="tbxAvailableProductsCatalogs" runat="server" />
                                    <asp:CompareValidator ID="cvAvailableProductsCatalogsIsInteger" runat="server" ControlToValidate="tbxAvailableProductsCatalogs" ValidationGroup="vgAvailableProductsSearch" Type="Integer" Operator="DataTypeCheck"
                                        meta:resourcekey="cvAvailableProductsCatalogsIsInteger" />
                                </div>
                                <div class="field">
                                    <asp:Label ID="lblAvailableProductsIsActive" runat="server" meta:resourcekey="lblAvailableProductsIsActive" AssociatedControlID="ddlAvailableProductsIsActive" />
                                    <asp:DropDownList ID="ddlAvailableProductsIsActive" runat="server">
                                        <asp:ListItem />
                                        <asp:ListItem Value="true" meta:resourcekey="liYes" />
                                        <asp:ListItem Value="false" meta:resourcekey="liNo" />
                                    </asp:DropDownList>
                                </div>
                                <div class="field">
                                    <asp:Label ID="lblAvailableProductsIsOnline" runat="server" meta:resourcekey="lblAvailableProductsIsOnline" AssociatedControlID="ddlAvailableProductsIsOnline" />
                                    <asp:DropDownList ID="ddlAvailableProductsIsOnline" runat="server">
                                        <asp:ListItem />
                                        <asp:ListItem Value="true" meta:resourcekey="liYes" />
                                        <asp:ListItem Value="false" meta:resourcekey="liNo" />
                                    </asp:DropDownList>
                                </div>
                                <div class="buttons">
                                    <ul>
                                        <li>
                                            <asp:LinkButton ID="lbtnAvailableProductsReset" runat="server" Text='<%$ resources:global,Reset %>' SkinID="Minor" OnClick="lbtnAvailableProductsReset_Click" />
                                        </li>
                                        <li>
                                            <asp:LinkButton ID="lbtnAvailableProductsSearch" runat="server" Text='<%$ resources:global,Search %>' SkinID="Major" OnClick="lbtnAvailableProductsSearch_Click" ValidationGroup="vgAvailableProductsSearch" />
                                        </li>
                                    </ul>
                                </div>
                            </mag:SearchPanel>
                            <mag:gridview id="mgvAvailableProduct" runat="server" allowpaging="true" enableautorefresh="false" showselectioncolumn="true" oncommand="mgvAvailableProduct_Command" datakeynames="ProductId">
                                <commandbuttons>
                                    <mag:CommandButton ID="mcbAssociateProducts" CommandName="AssociateProducts" meta:resourcekey="mcbAssociateProducts" />
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
                                    <mag:GridViewColumn runat="server" AllowSorting="false" Name='<%$ resources:global,Action %>'>
                                        <celltemplate>
                                            <ul>
                                                <li>
                                                    <asp:ImageButton runat="server" Enabled='<%# this.CanEdit %>' SkinID="Add" ToolTip='<%$ resources:global,Add %>' CommandName="AssociateProducts" />
                                                </li>
                                            </ul>
                                        </celltemplate>
                                    </mag:GridViewColumn>
                                </columns>
                            </mag:gridview>
                        </fieldset>
                        <fieldset>
                            <legend>
                                <asp:Literal ID="litAssociatedProducts" runat="server" meta:resourcekey="litAssociatedProducts" />
                            </legend>
                            <mag:SearchPanel runat="server" DefaultButton="lbtnAssociatedProductsSearch">
                                <asp:ValidationSummary runat="server" ValidationGroup="vgAssociatedProductsSearch" HeaderText="<%$ Resources: Global, ErrorMsgText %>" />
                                <div class="field">
                                    <asp:Label ID="lblAssociatedProductsProductType" runat="server" meta:resourcekey="lblAssociatedProductsProductType" AssociatedControlID="ddlAssociatedProductsProductTypes" />
                                    <mag:DropDownList ID="ddlAssociatedProductsProductTypes" runat="server" DataTextField="Code" GroupByTextField="ProductKind" DataValueField="ProductTypeId" AppendDataBoundItems="true">
                                        <asp:ListItem />
                                    </mag:DropDownList>
                                </div>
                                <div class="field">
                                    <asp:Label ID="lblAssociatedProductsCodeOrSKU" runat="server" meta:resourcekey="lblAssociatedProductsCodeOrSKU" AssociatedControlID="tbxAssociatedProductsCodeOrSKU" />
                                    <asp:TextBox ID="tbxAssociatedProductsCodeOrSKU" runat="server" />
                                </div>
                                <div class="field">
                                    <asp:Label ID="lblAssociatedProductsName" runat="server" meta:resourcekey="lblAssociatedProductsName" AssociatedControlID="tbxAssociatedProductsName" />
                                    <asp:TextBox ID="tbxAssociatedProductsName" runat="server" />
                                </div>
                                <div class="field">
                                    <asp:Label ID="lblAssociatedProductsCatalogs" runat="server" meta:resourcekey="lblAssociatedProductsCatalogs" AssociatedControlID="ddlAssociatedProductsCatalogsOperator" />
                                    <asp:DropDownList ID="ddlAssociatedProductsCatalogsOperator" runat="server" CssClass="autoSize operator">
                                        <asp:ListItem Text="=" Value="=" />
                                        <asp:ListItem Text="!=" Value="!=" />
                                        <asp:ListItem Text="&lt;" Value="&lt;" />
                                        <asp:ListItem Text="&lt;=" Value="&lt;=" />
                                        <asp:ListItem Text="&gt;" Value="&gt;" />
                                        <asp:ListItem Text="&gt;=" Value="&gt;=" />
                                    </asp:DropDownList>
                                    <asp:TextBox ID="tbxAssociatedProductsCatalogs" runat="server" />
                                    <asp:CompareValidator ID="cvAssociatedProductsCatalogsIsInteger" runat="server" ControlToValidate="tbxAssociatedProductsCatalogs" ValidationGroup="vgAssociatedProductsSearch" Type="Integer" Operator="DataTypeCheck"
                                        meta:resourcekey="cvAssociatedProductsCatalogsIsInteger" />
                                </div>
                                <div class="field">
                                    <asp:Label ID="lblAssociatedProductsIsActive" runat="server" meta:resourcekey="lblAssociatedProductsIsActive" AssociatedControlID="ddlAssociatedProductsIsActive" />
                                    <asp:DropDownList ID="ddlAssociatedProductsIsActive" runat="server">
                                        <asp:ListItem />
                                        <asp:ListItem Value="true" meta:resourcekey="liYes" />
                                        <asp:ListItem Value="false" meta:resourcekey="liNo" />
                                    </asp:DropDownList>
                                </div>
                                <div class="field">
                                    <asp:Label ID="lblAssociatedProductsIsOnline" runat="server" meta:resourcekey="lblAssociatedProductsIsOnline" AssociatedControlID="ddlAssociatedProductsIsOnline" />
                                    <asp:DropDownList ID="ddlAssociatedProductsIsOnline" runat="server">
                                        <asp:ListItem />
                                        <asp:ListItem Value="true" meta:resourcekey="liYes" />
                                        <asp:ListItem Value="false" meta:resourcekey="liNo" />
                                    </asp:DropDownList>
                                </div>
                                <div class="buttons">
                                    <ul>
                                        <li>
                                            <asp:LinkButton ID="lbtnAssociatedProductsReset" runat="server" Text='<%$ resources:global,Reset %>' SkinID="Minor" OnClick="lbtnAssociatedProductsReset_Click" />
                                        </li>
                                        <li>
                                            <asp:LinkButton ID="lbtnAssociatedProductsSearch" runat="server" Text='<%$ resources:global,Search %>' SkinID="Major" OnClick="lbtnAssociatedProductsSearch_Click" ValidationGroup="vgAssociatedProductsSearch" />
                                        </li>
                                    </ul>
                                </div>
                            </mag:SearchPanel>
                            <mag:gridview id="mgvAssociatedProduct" runat="server" allowpaging="true" enableautorefresh="false" showselectioncolumn="true" datakeynames="ProductId" oncommand="mgvAssociatedProduct_Command">
                                <commandbuttons>
                                    <mag:CommandButton ID="mcbRemoveProducts" CommandName="RemoveProducts" meta:resourcekey="mcbRemoveProducts" />
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
                                    <mag:GridViewColumn runat="server" AllowSorting="false" Name='<%$ resources:global,Action %>'>
                                        <celltemplate>
                                            <ul>
                                                <li>
                                                    <asp:ImageButton runat="server" Enabled='<%# this.CanEdit %>' SkinID="Delete" ToolTip='<%$ resources:global,Delete %>' CommandName="RemoveProducts" />
                                                </li>
                                            </ul>
                                        </celltemplate>
                                    </mag:GridViewColumn>
                                </columns>
                            </mag:gridview>
                        </fieldset>
                    </asp:View>
                    <asp:View ID="vUnauthorized" runat="server">
                        <mag:Unauthorized runat="server" />
                    </asp:View>
                </asp:MultiView>
            </asp:View>
            <asp:View runat="server">
                <script type="text/javascript">
                    Magelia.WebStore.HelpManager.Instance.setSubPath('medias');
                </script>
                <fieldset>
                    <legend>
                        <asp:Literal ID="litMedias" runat="server" meta:resourcekey="litMedias" />
                    </legend>
                    <mag:filepicker id="mfpMedias" runat="server" />
                </fieldset>
            </asp:View>
            <asp:View runat="server">
                <mag:associatedcontentitems id="mAssociatedContentItems" runat="server" validationgroup="vgCatalog" />
            </asp:View>
        </asp:MultiView>
    </div>
</asp:Content>
