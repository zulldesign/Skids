<%@ Page Title="" Language="C#" MasterPageFile="~/App_Masters/DefaultLayout.Master" AutoEventWireup="true" CodeBehind="List.aspx.cs" Inherits="Magelia.WebStore.Admin.Administration.CustomerSets.List" %>

<asp:Content ContentPlaceHolderID="cphBarTitle" runat="server">
    <asp:Literal runat="server" meta:resourcekey="litCustomerSets" />
</asp:Content>
<asp:Content ContentPlaceHolderID="cphBarContent" runat="server">
    <ul>
        <mag:FeaturePanel runat="server" Tag="Li" Level="CreateAndDelete">
            <asp:HyperLink runat="server" Text='<%$ resources:global, AddNew %>' NavigateUrl="~/Administration/CustomerSets/Edit.aspx" SkinID="Major" />
        </mag:FeaturePanel>
    </ul>
</asp:Content>
<asp:Content ContentPlaceHolderID="cphBody" runat="server">
    <mag:SearchPanel runat="server" DefaultButton="lbtnSearch">
        <div class="field inline">
            <asp:Label ID="lblCode" runat="server" AssociatedControlID="tbxCode" meta:resourcekey="lblCode" />
            <asp:TextBox ID="tbxCode" runat="server" />
        </div>
        <div class="buttons">
            <ul>
                <li>
                    <asp:LinkButton ID="lbtnReset" runat="server" Text="<%$ Resources:Global, Reset %>" SkinID="Minor" OnClick="lbtnReset_Click" />
                </li>
                <li>
                    <asp:LinkButton ID="lbtnSearch" runat="server" Text="<%$ Resources:Global, Search %>" SkinID="Major" OnClick="lbtnSearch_Click" />
                </li>
            </ul>
        </div>
    </mag:SearchPanel>
    <mag:Gridview runat="server" ID="mgvCustomerSets" DataKeyNames="CustomerSetId" OnCommand="mgvCustomerSets_Command" ShowSelectionColumn="true">
        <commandbuttons>
            <mag:CommandButton CommandName="DeleteCustomerSet" Text="<%$ Resources: Global, Delete %>" OnClientClick='<%$ resources:global, ClientClickConfirmDeletion %>' />
        </commandbuttons>
        <columns>
            <mag:GridViewColumn AllowSorting="true" SortExpression="Code" meta:resourcekey="mgvcCode">
                <celltemplate>
                        <asp:Literal runat="server" Text='<%# Eval("Code") %>' />
                    </celltemplate>
            </mag:GridViewColumn>
            <mag:GridViewColumn AllowSorting="true" CssClass="numeric" SortExpression="CustomerCount" meta:resourcekey="mgvcCustomerCount">
                <celltemplate>
                        <asp:Literal runat="server" Text='<%# Eval("CustomerCount") %>' />
                    </celltemplate>
            </mag:GridViewColumn>
            <mag:GridViewColumn Name="<%$ Resources: Global, Action %>">
                <celltemplate>
                        <ul>
                            <li>
                                <asp:ImageButton ID="imgbtnEdit" runat="server" SkinID="Edit" ToolTip='<%$ resources:global,Edit %>' CommandName="EditCustomerSet"  />
                            </li>
                            <li visible='<%# ((CustomerSetViewModel)Container.DataItem).Deletable && this.CanCreateAndDelete %>' runat="server">
                                <asp:ImageButton ID="imgbtnDelete" runat="server" SkinID="Delete" ToolTip='<%$ resources:global,Delete %>' CommandName="DeleteCustomerSet"  OnClientClick='<%$ resources:global, ClientClickConfirmDeletion %>' />
                            </li>
                        </ul>
                    </celltemplate>
            </mag:GridViewColumn>
        </columns>
    </mag:Gridview>
</asp:Content>
