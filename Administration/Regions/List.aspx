<%@ Page Title="" Language="C#" MasterPageFile="~/App_Masters/DefaultLayout.Master"
    EnableEventValidation="false" AutoEventWireup="true" CodeBehind="List.aspx.cs"
    Inherits="Magelia.WebStore.Admin.Administration.Regions.List" %>

<asp:Content ContentPlaceHolderID="cphBarTitle" runat="server">
    <asp:Literal runat="server" meta:resourcekey="litRegions" />
</asp:Content>
<asp:Content ContentPlaceHolderID="cphBarContent" runat="server">
    <ul>
        <li>
            <asp:HyperLink NavigateUrl="~/Administration/Regions/Edit.aspx" runat="server" SkinID="Major"
                Text="<%$ resources:global, AddNew %>" />
        </li>
    </ul>
</asp:Content>
<asp:Content ContentPlaceHolderID="cphBody" runat="server">
    <mag:SearchPanel runat="server" DefaultButton="lbtnSearch">
        <div class="field">
            <asp:Label ID="lblInvariantName" runat="server" AssociatedControlID="tbxInvariantName"
                meta:resourcekey="lblInvariantName" />
            <asp:TextBox ID="tbxInvariantName" runat="server" />
        </div>
        <div class="field">
            <asp:Label ID="lblLocalizedName" runat="server" AssociatedControlID="tbxLocalizedName"
                meta:resourcekey="lblLocalizedName" />
            <asp:TextBox ID="tbxLocalizedName" runat="server" />
        </div>
        <div class="field">
            <asp:Label ID="lblCode" runat="server" AssociatedControlID="tbxCode" meta:resourcekey="lblCode" />
            <asp:TextBox ID="tbxCode" runat="server" />
        </div>
        <div class="field">
            <asp:Label ID="lblContinent" runat="server" meta:resourcekey="lblContinent" AssociatedControlID="ddlContinents" />
            <asp:DropDownList ID="ddlContinents" runat="server" AppendDataBoundItems="true" DataTextField="Name"
                DataValueField="ContinentId">
                <asp:ListItem />
            </asp:DropDownList>
        </div>
        <div class="field">
            <asp:Label ID="lblCountry" runat="server" meta:resourcekey="lblCountry" AssociatedControlID="ddlCountries" />
            <asp:DropDownList ID="ddlCountries" runat="server" AppendDataBoundItems="true" DataTextField="Name"
                DataValueField="CountryId">
                <asp:ListItem />
            </asp:DropDownList>
        </div>
        <div class="buttons">
            <ul>
                <li>
                    <asp:LinkButton ID="lbtnReset" runat="server" Text="<%$ Resources:Global, Reset %>"
                        SkinID="Minor" OnClick="lbtnReset_Click" />
                </li>
                <li>
                    <asp:LinkButton ID="lbtnSearch" runat="server" Text="<%$ Resources:Global, Search %>"
                        SkinID="Major" OnClick="lbtnSearch_Click" />
                </li>
            </ul>
        </div>
    </mag:SearchPanel>
    <mag:Gridview runat="server" ID="mgvRegions" DataKeyNames="RegionId" OnCommand="mgvRegions_Command"
        ShowSelectionColumn="true">
        <commandbuttons>
            <mag:CommandButton Text="<%$ Resources: Global, Delete %>" CommandName="DeleteRegions"
                OnClientClick='<%$ resources:global, ClientClickConfirmDeletion %>' />
        </commandbuttons>
        <columns>
            <mag:GridViewColumn AllowSorting="true" SortExpression="InvariantName" meta:resourcekey="mgvcInvariantName">
                <celltemplate>
                        <asp:Literal runat="server" Text='<%# Eval("InvariantName") %>' />
                    </celltemplate>
            </mag:GridViewColumn>
            <mag:GridViewColumn AllowSorting="true" SortExpression="LocalizedName" meta:resourcekey="mgvcLocalizedName">
                <celltemplate>
                    <asp:Literal runat="server" Text='<%# Eval("LocalizedName") %>' />
                </celltemplate>
            </mag:GridViewColumn>
            <mag:GridViewColumn AllowSorting="true" SortExpression="Code" meta:resourcekey="mgvcCode">
                <celltemplate>
                    <asp:Literal runat="server" Text='<%# Eval("Code") %>' />
                </celltemplate>
            </mag:GridViewColumn>
            <mag:GridViewColumn AllowSorting="true" SortExpression="CountryName" meta:resourcekey="mgvcCountry">
                <celltemplate>
                    <asp:Literal runat="server" Text='<%# Eval("CountryName") %>' />
                </celltemplate>
            </mag:GridViewColumn>
            <mag:GridViewColumn AllowSorting="true" SortExpression="ContinentName" meta:resourcekey="mgvcContinent">
                <celltemplate>
                        <asp:Literal runat="server" Text='<%# Eval("ContinentName") %>' />
                    </celltemplate>
            </mag:GridViewColumn>
            <mag:GridViewColumn Name="<%$ Resources: Global, Action %>">
                <celltemplate>
                        <ul>
                            <li>
                                <asp:ImageButton runat="server" SkinID="Edit" ToolTip='<%$ resources:global,Edit %>' CommandName="EditRegion"/>
                            </li>
                            <li>
                                <asp:ImageButton runat="server" SkinID="Delete" ToolTip='<%$ resources:global,Delete %>' CommandName="DeleteRegion" OnClientClick='<%$ resources:global, ClientClickConfirmDeletion %>' />
                            </li>
                        </ul>
                    </celltemplate>
            </mag:GridViewColumn>
        </columns>
    </mag:Gridview>
</asp:Content>
