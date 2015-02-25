<%@ Page Title="" Language="C#" MasterPageFile="~/App_Masters/DefaultLayout.Master" AutoEventWireup="true" CodeBehind="List.aspx.cs" Inherits="Magelia.WebStore.Admin.Products.List" %>

<asp:Content ContentPlaceHolderID="cphBarTitle" runat="server">
    <asp:Literal ID="litProducts" runat="server" meta:resourcekey="litProducts" />
</asp:Content>
<asp:Content ContentPlaceHolderID="cphBarContent" runat="server">
    <ul>
        <mag:FeaturePanel runat="server" Tag="Li" Level="CreateAndDelete">
            <asp:HyperLink ID="hlNewProduct" runat="server" Text='<%$ resources:global, AddNew %>' NavigateUrl="~/Products/Edit.aspx" SkinID="Major" />
        </mag:FeaturePanel>
    </ul>
</asp:Content>
<asp:Content ContentPlaceHolderID="cphBody" runat="server">
    <mag:SearchPanel runat="server" DefaultButton="lbtnSearch">
        <div class="field">
            <asp:Label ID="lblName" runat="server" meta:resourcekey="lblName" AssociatedControlID="tbxName" />
            <asp:TextBox ID="tbxName" runat="server" />
        </div>
        <div class="field">
            <asp:Label ID="lblCodeOrSKU" runat="server" AssociatedControlID="tbxCodeOrSKU" meta:resourcekey="lblCodeOrSKU" />
            <asp:TextBox ID="tbxCodeOrSKU" runat="server" />
        </div>
        <div class="field">
            <asp:Label ID="lblProductType" runat="server" meta:resourcekey="lblProductType" AssociatedControlID="ddlProductTypes" />
            <mag:DropDownList ID="ddlProductTypes" runat="server" AppendDataBoundItems="true" GroupByTextField="ProductKind" DataTextField="Code" DataValueField="ProductTypeId">
                <asp:ListItem />
            </mag:DropDownList>
        </div>
        <div class="field">
            <asp:Label ID="lblDescription" runat="server" meta:resourcekey="lblDescription" AssociatedControlID="tbxDescription" />
            <asp:TextBox ID="tbxDescription" runat="server" />
        </div>
        <div class="field">
            <asp:Label ID="lblCatalogs" runat="server" meta:resourcekey="lblCatalogs" AssociatedControlID="ddlCatalogs" />
            <asp:DropDownList ID="ddlCatalogs" runat="server" AppendDataBoundItems="true" DataTextField="Code" DataValueField="CatalogId">
                <asp:ListItem />
            </asp:DropDownList>
        </div>
        <div class="field">
            <asp:Label ID="lblWarehouses" runat="server" meta:resourcekey="lblWarehouses" AssociatedControlID="ddlWarehouses" />
            <asp:DropDownList ID="ddlWarehouses" runat="server" AppendDataBoundItems="true" DataTextField="Code" DataValueField="WarehouseId">
                <asp:ListItem />
            </asp:DropDownList>
        </div>
        <div class="field">
            <asp:Label ID="lblSupplier" runat="server" meta:resourcekey="lblSupplier" AssociatedControlID="ddlSuppliers" />
            <asp:DropDownList ID="ddlSuppliers" runat="server" AppendDataBoundItems="true" DataTextField="Code" DataValueField="SupplierId">
                <asp:ListItem />
            </asp:DropDownList>
        </div>
        <div class="field">
            <asp:Label ID="lblBrand" runat="server" meta:resourcekey="lblBrand" AssociatedControlID="ddlBrands" />
            <asp:DropDownList ID="ddlBrands" runat="server" AppendDataBoundItems="true" DataTextField="Code" DataValueField="BrandId">
                <asp:ListItem />
            </asp:DropDownList>
        </div>
        <div class="field">
            <asp:Label ID="lblIsActive" runat="server" meta:resourcekey="lblIsActive" AssociatedControlID="ddlIsActive" />
            <asp:DropDownList ID="ddlIsActive" runat="server">
                <asp:ListItem />
                <asp:ListItem Value="true" meta:resourcekey="liYes" />
                <asp:ListItem Value="false" meta:resourcekey="liNo" />
            </asp:DropDownList>
        </div>
        <div class="field">
            <asp:Label ID="lblIsOnline" runat="server" meta:resourcekey="lblIsOnline" AssociatedControlID="ddlIsOnline" />
            <asp:DropDownList ID="ddlIsOnline" runat="server">
                <asp:ListItem />
                <asp:ListItem Value="true" meta:resourcekey="liYes" />
                <asp:ListItem Value="false" meta:resourcekey="liNo" />
            </asp:DropDownList>
        </div>
        <div class="buttons">
            <ul>
                <li>
                    <asp:LinkButton ID="lbtnReset" runat="server" Text='<%$ resources:global, Reset %>' SkinID="Minor" OnClick="lbtnReset_Click" />
                </li>
                <li>
                    <asp:LinkButton ID="lbtnSearch" runat="server" Text='<%$ resources:global, Search %>' SkinID="Major" OnClick="lbtnSearch_Click" />
                </li>
            </ul>
        </div>
    </mag:SearchPanel>
    <mag:Gridview ID="mgvProducts" runat="server" AllowPaging="true" DataKeyNames="BaseProductId" OnCommand="mgvProducts_Command" ShowSelectionColumn="true">
        <commandbuttons>
            <mag:CommandButton runat="server" Text='<%$ resources:global, Activate %>' CommandName="ActivateProducts" />
            <mag:CommandButton runat="server" Text='<%$ resources:global, Deactivate %>' CommandName="DeactivateProducts" />
            <mag:CommandButton runat="server" meta:resourcekey="mcbSetOnline" CommandName="SetProductsOnline" />
            <mag:CommandButton runat="server" meta:resourcekey="mcbSetOffline" CommandName="SetProductsOffline" />
            <mag:CommandButton runat="server" Text='<%$ resources:global, Delete %>' CommandName="DeleteProducts" OnClientClick='<%$ resources:global, ClientClickConfirmDeletion %>' />
        </commandbuttons>
        <columns>
            <mag:GridViewColumn runat="server" AllowSorting="true" SortExpression="Name" meta:resourcekey="mgvcName">
                <celltemplate>
                    <asp:LinkButton runat="server"  Text='<%# Eval("Name") %>' CommandName="EditProduct" />
                </celltemplate>
            </mag:GridViewColumn>
            <mag:GridViewColumn runat="server" AllowSorting="true" SortExpression="CodeOrSKU" meta:resourcekey="mgvcCodeOrSKU">
                <celltemplate>
                    <asp:LinkButton runat="server"  Text='<%# Eval("CodeOrSKU") %>' CommandName="EditProduct" />
                </celltemplate>
            </mag:GridViewColumn>
            <mag:GridViewColumn runat="server" AllowSorting="true" SortExpression="ProductType" meta:resourcekey="mgvcProductType">
                <celltemplate>
                    <asp:Literal runat="server" Text='<%# Eval("ProductType") %>' />
                </celltemplate>
            </mag:GridViewColumn>
            <mag:GridViewColumn runat="server" AllowSorting="false" meta:resourcekey="mgvcCatalogs">
                <celltemplate>
                    <asp:Literal runat="server" Text='<%# String.Join(",<br/>", Eval("Catalogs") as IEnumerable<String>) %>' />
                </celltemplate>
            </mag:GridViewColumn>
            <mag:GridViewColumn runat="server" AllowSorting="false" meta:resourcekey="mgvcWarehouses">
                <celltemplate>
                    <asp:Literal runat="server" Text='<%# String.Join(",<br/>", Eval("Warehouses") as IEnumerable<String>) %>' />
                </celltemplate>
            </mag:GridViewColumn>
            <mag:GridViewColumn runat="server" AllowSorting="true" SortExpression="Brand" meta:resourcekey="mgvcBrand">
                <celltemplate>
                    <asp:Literal  runat="server" Text='<%# Eval("Brand") %>' />
                </celltemplate>
            </mag:GridViewColumn>
            <mag:GridViewColumn runat="server" AllowSorting="false" meta:resourcekey="mgvcTaxCategories">
                <celltemplate>
                    <asp:Literal runat="server" Text='<%# String.Join(",<br/>",Eval("TaxCategories") as IEnumerable<String>) %>' />
                </celltemplate>
            </mag:GridViewColumn>
            <mag:GridViewColumn runat="server" AllowSorting="true" SortExpression="IsActive" meta:resourcekey="mgvcIsActive">
                <celltemplate>
                    <asp:PlaceHolder runat="server" Visible='<%# ((Nullable<Boolean>)Eval("IsActive")).HasValue %>'>
                        <asp:CheckBox ID="cbxIsActive" runat="server" Checked='<%# ((Nullable<Boolean>)Eval("IsActive"))??false %>' Enabled='<%# this.CanEdit %>' AutoPostBack="true" OnCheckedChanged="cbxIsActive_CheckedChanged" />
                    </asp:PlaceHolder>
                </celltemplate>
            </mag:GridViewColumn>
            <mag:GridViewColumn runat="server" AllowSorting="true" SortExpression="IsOnline" meta:resourcekey="mgvcIsOnline">
                <celltemplate>
                    <asp:CheckBox ID="cbxIsOnline" runat="server" Checked='<%# Eval("IsOnline") %>' Enabled='<%# this.CanEdit %>' AutoPostBack="true" OnCheckedChanged="cbxIsOnline_CheckedChanged" />
                </celltemplate>
            </mag:GridViewColumn>
            <mag:GridViewColumn runat="server" AllowSorting="false" Name='<%$ resources:global, Action %>'>
                <celltemplate>
                    <ul>
                        <li>
                            <asp:ImageButton runat="server" SkinID="Edit" ToolTip='<%$ resources:global,Edit %>' CommandName="EditProduct" />
                        </li>
                        <mag:FeaturePanel runat="server" Tag="Li" Level="CreateAndDelete">
                            <asp:ImageButton runat="server" SkinID="Copy" ToolTip='<%$ resources:global,Copy %>' CommandName="CopyProduct" />
                        </mag:FeaturePanel>
                        <mag:FeaturePanel runat="server" Tag="Li" Level="CreateAndDelete">
                            <asp:ImageButton runat="server" SkinID="Delete" ToolTip='<%$ resources:global,Delete %>' OnClientClick='<%$ resources:global, ClientClickConfirmDeletion %>' CommandName="DeleteProducts" />
                        </mag:FeaturePanel>
                    </ul>
                </celltemplate>
            </mag:GridViewColumn>
             <mag:GridViewColumn runat="server" AllowSorting="false" meta:resourcekey="mgvcDetails">
                <celltemplate>
                    <ul runat="server" visible='<%# ((GenericViewModel)Container.DataItem).Detailable %>'>
                        <li>
                            <asp:ImageButton runat="server" SkinID="Info" CommandName="Details" />
                        </li>
                    </ul>
                </celltemplate>
            </mag:GridViewColumn>
        </columns>
    </mag:Gridview>
    <asp:Panel ID="pnlDetails" runat="server" SkinID="Popin">
        <header>
            <h4>
                <asp:Literal ID="litDetails" runat="server" meta:resourcekey="litDetails" />
            </h4>
        </header>
        <div class="content">
            <asp:UpdatePanel runat="server">
                <ContentTemplate>
                    <asp:MultiView ID="mvDetails" runat="server">
                        <asp:View ID="vVariants" runat="server">
                            <mag:Gridview ID="mgvVariants" runat="server" AllowPaging="true" DataKeyNames="BaseProductId" ShowSelectionColumn="false">
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
                                        </celltemplate>
                                    </mag:GridViewColumn>
                                    <mag:GridViewColumn runat="server" AllowSorting="false" meta:resourcekey="mgvcCharacteristics">
                                        <celltemplate>
                                            <asp:Literal runat="server" Text='<%# Eval("Characteristics") %>' />
                                        </celltemplate>
                                    </mag:GridViewColumn>
                                    <mag:GridViewColumn runat="server" AllowSorting="false" SortExpression="Catalogs" meta:resourcekey="mgvcCatalogs">
                                        <celltemplate>
                                            <asp:Literal runat="server" Text='<%# String.Join(",<br/>", Eval("Catalogs") as IEnumerable<String>) %>' />
                                        </celltemplate>
                                    </mag:GridViewColumn>
                                    <mag:GridViewColumn runat="server" AllowSorting="false" SortExpression="Warehouses" meta:resourcekey="mgvcWarehouses">
                                        <celltemplate>
                                            <asp:Literal runat="server" Text='<%# String.Join(",<br/>", Eval("Warehouses") as IEnumerable<String>) %>' />
                                        </celltemplate>
                                    </mag:GridViewColumn>
                                    <mag:GridViewColumn runat="server" AllowSorting="true" SortExpression="IsActive" meta:resourcekey="mgvcIsActive">
                                        <celltemplate>
                                            <asp:PlaceHolder runat="server" Visible='<%# ((Nullable<Boolean>)Eval("IsActive")).HasValue %>'>
                                                <asp:CheckBox ID="cbxVariantIsActive" runat="server" Checked='<%# ((Nullable<Boolean>)Eval("IsActive"))??false %>' Enabled='<%# this.CanEdit %>' AutoPostBack="true" OnCheckedChanged="cbxVariantIsActive_CheckedChanged"/>
                                            </asp:PlaceHolder>
                                        </celltemplate>
                                    </mag:GridViewColumn>
                                    <mag:GridViewColumn runat="server" AllowSorting="true" SortExpression="IsOnline" meta:resourcekey="mgvcIsOnline">
                                        <celltemplate>
                                            <asp:CheckBox ID="cbxVariantIsOnline" runat="server" Checked='<%# Eval("IsOnline") %>' Enabled='<%# this.CanEdit %>' AutoPostBack="true" OnCheckedChanged="cbxVariantIsOnline_CheckedChanged"/>
                                        </celltemplate>
                                    </mag:GridViewColumn>
                                </columns>
                            </mag:Gridview>
                        </asp:View>
                        <asp:View ID="vBundleItems" runat="server">
                            <mag:Gridview ID="mgvBundleItems" runat="server" AllowPaging="true" DataKeyNames="BaseProductId" ShowSelectionColumn="false">
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
                                        </celltemplate>
                                    </mag:GridViewColumn>
                                    <mag:GridViewColumn runat="server" AllowSorting="false" meta:resourcekey="mgvcCharacteristics">
                                        <celltemplate>
                                            <asp:Literal runat="server" Text='<%# Eval("Characteristics") %>' />
                                        </celltemplate>
                                    </mag:GridViewColumn>
                                    <mag:GridViewColumn runat="server" AllowSorting="false" SortExpression="Catalogs" meta:resourcekey="mgvcCatalogs">
                                        <celltemplate>
                                            <asp:Literal runat="server" Text='<%# String.Join(",<br/>", Eval("Catalogs") as IEnumerable<String>) %>' />
                                        </celltemplate>
                                    </mag:GridViewColumn>
                                    <mag:GridViewColumn runat="server" AllowSorting="false" SortExpression="Warehouses" meta:resourcekey="mgvcWarehouses">
                                        <celltemplate>
                                            <asp:Literal runat="server" Text='<%# String.Join(",<br/>", Eval("Warehouses") as IEnumerable<String>) %>' />
                                        </celltemplate>
                                    </mag:GridViewColumn>
                                    <mag:GridViewColumn runat="server" CssClass="numeric" AllowSorting="true" SortExpression="Quantity" meta:resourcekey="mgvcQuantity">
                                        <celltemplate>
                                            <asp:Literal runat="server" Text='<%# Eval("Quantity") %>' />
                                        </celltemplate>
                                    </mag:GridViewColumn>
                                    <mag:GridViewColumn runat="server" CssClass="numeric" AllowSorting="true" SortExpression="Order" meta:resourcekey="mgvcOrder">
                                        <celltemplate>
                                            <asp:Literal runat="server" Text='<%# Eval("Order") %>' />
                                        </celltemplate>
                                    </mag:GridViewColumn>
                                </columns>
                            </mag:Gridview>
                        </asp:View>
                    </asp:MultiView>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </asp:Panel>
</asp:Content>
