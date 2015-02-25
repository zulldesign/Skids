<%@ Page Title="" Language="C#" MasterPageFile="~/App_Masters/DefaultLayout.Master"
    AutoEventWireup="true" CodeBehind="List.aspx.cs" Inherits="Magelia.WebStore.Admin.Tax.Categories.List" %>

<asp:Content ContentPlaceHolderID="cphBarTitle" runat="server">
    <asp:Literal ID="litTaxCategories" runat="server" meta:resourcekey="litTaxCategories" />
</asp:Content>
<asp:Content ContentPlaceHolderID="cphBarContent" runat="server">
    <ul>
        <mag:FeaturePanel runat="server" Tag="Li" Level="CreateAndDelete">
            <asp:HyperLink runat="server" NavigateUrl="~/Tax/Categories/Edit.aspx" Text='<%$ resources:global, AddNew %>'
                SkinID="Major" />
        </mag:FeaturePanel>
    </ul>
</asp:Content>
<asp:Content ContentPlaceHolderID="cphBody" runat="server">
    <mag:SearchPanel runat="server" DefaultButton="lbtnSearch">
        <div class="field">
            <asp:Label ID="lblTaxType" runat="server" meta:resourcekey="lblTaxType" AssociatedControlID="ddlTaxTypes" />
            <asp:DropDownList ID="ddlTaxTypes" runat="server" DataTextField="Code" DataValueField="TaxTypeId"
                AppendDataBoundItems="true">
                <asp:ListItem />
            </asp:DropDownList>
        </div>
        <div class="field">
            <asp:Label ID="lblCode" runat="server" meta:resourcekey="lblCode" AssociatedControlID="tbCode" />
            <asp:TextBox ID="tbCode" runat="server" />
        </div>
        <div class="field">
            <asp:Label ID="lblName" runat="server" meta:resourcekey="lblName" AssociatedControlID="tbName" />
            <asp:TextBox ID="tbName" runat="server" />
        </div>
        <div class="buttons">
            <ul>
                <li>
                    <asp:LinkButton ID="lbtnReset" runat="server" SkinID="Minor" Text='<%$ resources:global, Reset %>'
                        OnClick="lbtnReset_Click" />
                </li>
                <li>
                    <asp:LinkButton ID="lbtnSearch" runat="server" SkinID="Major" Text='<%$ resources:global, Search %>'
                        OnClick="lbtnSearch_Click" />
                </li>
            </ul>
        </div>
    </mag:SearchPanel>
    <mag:Gridview ID="mgvTaxCategories" runat="server" ShowSelectionColumn="true" DataKeyNames="TaxCategoryId"
        OnCommand="mgvTaxCategories_Command">
        <commandbuttons>
            <mag:CommandButton runat="server" Text='<%$ resources:global, Delete %>' CommandName="DeteleTaxCategories"
                OnClientClick='<%$ resources:global, ClientClickConfirmDeletion %>' />
        </commandbuttons>
        <columns>
            <mag:GridViewColumn runat="server" AllowSorting="true" SortExpression="TaxTypeCode"
                meta:resourcekey="mgvcTaxType">
                <celltemplate>
                   <asp:Literal runat="server" Text='<%# Eval("TaxTypeCode") %>' />
                </celltemplate>
            </mag:GridViewColumn>
            <mag:GridViewColumn runat="server" AllowSorting="true" SortExpression="Code" meta:resourcekey="mgvcCode">
                <celltemplate>
                    <asp:Literal runat="server" Text='<%# Eval("Code") %>' />
                </celltemplate>
            </mag:GridViewColumn>
            <mag:GridViewColumn runat="server" AllowSorting="true" SortExpression="Name" meta:resourcekey="mgvcName">
                <celltemplate>
                    <asp:Literal runat="server" Text='<%# Eval("Name") %>' />
                </celltemplate>
            </mag:GridViewColumn>
            <mag:GridViewColumn runat="server" AllowSorting="false" Name='<%$ resources:global, Action %>'>
                <celltemplate>
                    <ul>
                        <li>
                            <asp:ImageButton runat="server" CommandName="EditTaxCategory" SkinID="Edit" ToolTip='<%$ resources:global,Edit %>' />
                        </li>
                        <mag:FeaturePanel runat="server" Tag="Li" Level="CreateAndDelete">
                            <asp:ImageButton runat="server" CommandName="DeleteTaxCategory" SkinID="Delete" ToolTip='<%$ resources:global,Delete %>'  OnClientClick='<%$ resources:global, ClientClickConfirmDeletion %>'/>
                        </mag:FeaturePanel>
                    </ul>
                </celltemplate>
            </mag:GridViewColumn>
        </columns>
    </mag:Gridview>
</asp:Content>
