<%@ Page Language="C#" MasterPageFile="~/App_Masters/DefaultLayout.Master" AutoEventWireup="true"
    CodeBehind="List.aspx.cs" Inherits="Magelia.WebStore.Admin.Administration.Segments.List" %>

<asp:Content ContentPlaceHolderID="cphBarTitle" runat="server">
    <asp:Literal ID="litSegments" runat="server" meta:resourcekey="litSegments" />
</asp:Content>
<asp:Content ContentPlaceHolderID="cphBarContent" runat="server">
    <ul>
        <mag:FeaturePanel runat="server" Tag="Li" Level="CreateAndDelete">
            <asp:HyperLink runat="server" Text='<%$ resources:global, AddNew %>' SkinID="Major"
                NavigateUrl="~/Administration/Segments/Edit.aspx" />
        </mag:FeaturePanel>
    </ul>
</asp:Content>
<asp:Content ContentPlaceHolderID="cphBody" runat="server">
    <mag:SearchPanel runat="server" DefaultButton="lbtnSearch">
        <asp:ValidationSummary runat="server" HeaderText="<%$ Resources:Global, ErrorMsgText %>"
            ValidationGroup="vgSearch" />
        <div class="field">
            <asp:Label ID="lblCode" runat="server" meta:resourcekey="lblCode" AssociatedControlID="tbxCode" />
            <asp:TextBox ID="tbxCode" runat="server" />
        </div>
        <div class="field">
            <asp:Label ID="lblCustomerSet" runat="server" meta:resourceKey="lblCustomerSet" AssociatedControlID="ddlCustomerSet" />
            <asp:DropDownList runat="server" ID="ddlCustomerSet" DataTextField="Code" DataValueField="CustomerSetId" AppendDataBoundItems="true">
                <asp:ListItem />
            </asp:DropDownList>
        </div>
        <div class="field">
            <asp:Label ID="lblDescription" runat="server" meta:resourcekey="lblDescription" AssociatedControlID="tbxDescription" />
            <asp:TextBox ID="tbxDescription" runat="server" />
        </div>
        <div class="field">
            <asp:Label ID="lblExternalCode" runat="server" meta:resourcekey="lblExternalCode"
                AssociatedControlID="tbxExternalCode" />
            <asp:TextBox ID="tbxExternalCode" runat="server" />
        </div>
        <div class="field">
            <asp:Label ID="lblCustomersCount" runat="server" AssociatedControlID="ddlCustomersCountOperator"
                meta:resourcekey="lblCustomersCount" />
            <asp:DropDownList ID="ddlCustomersCountOperator" runat="server" CssClass="autoSize operator">
                <asp:ListItem Text="=" Value="=" />
                <asp:ListItem Text="!=" Value="!=" />
                <asp:ListItem Text="&lt;" Value="&lt;" />
                <asp:ListItem Text="&lt;=" Value="&lt;=" />
                <asp:ListItem Text="&gt;" Value="&gt;" />
                <asp:ListItem Text="&gt;=" Value="&gt;=" />
            </asp:DropDownList>
            <asp:TextBox ID="tbxCustomersCount" runat="server" CssClass="numeric" />
            <asp:CompareValidator ID="cvCustomersCountIsInteger" runat="server" ValidationGroup="vgSearch"
                meta:resourcekey="cvCustomersCountIsInteger" ControlToValidate="tbxCustomersCount"
                Operator="DataTypeCheck" Type="Integer" />
        </div>
        <div class="buttons">
            <ul>
                <li>
                    <asp:LinkButton ID="lbtnReset" runat="server" Text="<%$ Resources:Global, Reset %>"
                        SkinID="Minor" OnClick="lbtnReset_Click" />
                </li>
                <li>
                    <asp:LinkButton ID="lbtnSearch" runat="server" Text="<%$ Resources:Global, Search %>"
                        SkinID="Major" ValidationGroup="vgSearch" OnClick="lbtnSearch_Click" />
                </li>
            </ul>
        </div>
    </mag:SearchPanel>
    <mag:Gridview runat="server" ID="mgvSegments" DataKeyNames="SegmentId" OnCommand="mgvSegment_Command">
        <commandbuttons>
            <mag:CommandButton runat="server" Text="<%$ Resources: Global, Delete %>" CommandName="DeleteSegment" />
        </commandbuttons>
        <columns>
            <mag:GridViewColumn AllowSorting="true" SortExpression="Name" meta:resourcekey="mgvcName">
                <celltemplate>
                    <asp:Literal runat="server" Text='<%# Eval("Name") %>' />
                </celltemplate>
            </mag:GridViewColumn>
            <mag:GridViewColumn AllowSorting="true" SortExpression="CustomerSetCode" meta:resourcekey="mgvcCustomerSet">
                <celltemplate>
                    <asp:Literal runat="server" Text='<%# Eval("CustomerSetCode") %>' />
                </celltemplate>
            </mag:GridViewColumn>
            <mag:GridViewColumn AllowSorting="true" SortExpression="Description" meta:resourcekey="mgvcDescription">
                <celltemplate>
                    <asp:Literal runat="server" Text='<%# Eval("Description") %>' />
                </celltemplate>
            </mag:GridViewColumn>
            <mag:GridViewColumn AllowSorting="true" SortExpression="ExternalCode" meta:resourcekey="mgvcExternalCode">
                <celltemplate>
                    <asp:Literal runat="server" Text='<%# Eval("ExternalCode") %>' />
                </celltemplate>
            </mag:GridViewColumn>
            <mag:GridViewColumn AllowSorting="true" CssClass="numeric" SortExpression="CustomersCount" meta:resourcekey="mgvcCustomersCount">
                <celltemplate>
                        <asp:Literal runat="server" Text='<%# Eval("CustomersCount") %>' />
                    </celltemplate>
            </mag:GridViewColumn>
            <mag:GridViewColumn Name="<%$ Resources: Global, Action %>">
                <celltemplate>
                        <ul>
                            <li>
                                <asp:ImageButton runat="server" SkinID="Edit" ToolTip='<%$ resources:global,Edit %>' CommandName="EditSegment"  />
                            </li>
                            <mag:FeaturePanel runat="server" Tag="Li" Level="CreateAndDelete">
                                <asp:ImageButton runat="server" SkinID="Delete" ToolTip='<%$ resources:global,Delete %>' CommandName="DeleteSegment" OnClientClick='<%$ Resources:global, ClientClickConfirmDeletion %>' />
                            </mag:FeaturePanel>
                        </ul>
                    </celltemplate>
            </mag:GridViewColumn>
        </columns>
    </mag:Gridview>
</asp:Content>
