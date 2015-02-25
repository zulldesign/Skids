<%@ Page Language="C#" MasterPageFile="~/App_Masters/DefaultLayout.Master" AutoEventWireup="true"
    CodeBehind="List.aspx.cs" Inherits="Magelia.WebStore.Admin.Customers.List" %>

<asp:Content ContentPlaceHolderID="cphBarTitle" runat="server">
    <asp:Literal ID="litCustomers" runat="server" meta:resourcekey="litCustomers" />
</asp:Content>
<asp:Content ContentPlaceHolderID="cphBody" runat="server">
    <asp:ValidationSummary runat="server" HeaderText="<%$ Resources:Global, ErrorMsgText %>"
        ValidationGroup="vgSearch" />
    <mag:SearchPanel runat="server" DefaultButton="lbtnSearch">
        <div class="field">
            <asp:Label ID="lblFirstName" runat="server" AssociatedControlID="tbxFirstName" meta:resourcekey="lblFirstName" />
            <asp:TextBox ID="tbxFirstName" runat="server" />
        </div>
        <div class="field">
            <asp:Label ID="lblMiddleName" runat="server" AssociatedControlID="tbxMiddleName"
                meta:resourcekey="lblMiddleName" />
            <asp:TextBox ID="tbxMiddleName" runat="server" />
        </div>
        <div class="field">
            <asp:Label ID="lblLastName" runat="server" AssociatedControlID="tbxLastName" meta:resourcekey="lblLastName" />
            <asp:TextBox ID="tbxLastName" runat="server" />
        </div>
        <div class="field">
            <asp:Label ID="lblEmail" runat="server" AssociatedControlID="tbxEmail" meta:resourcekey="lblEmail" />
            <asp:TextBox ID="tbxEmail" runat="server" />
        </div>
        <div class="field">
            <asp:Label ID="lblUserName" runat="server" AssociatedControlID="tbxUserName" meta:resourcekey="lblUserName" />
            <asp:TextBox ID="tbxUserName" runat="server" />
        </div>
         <div class="field">
            <asp:Label ID="lblOrderDateFrom" runat="server" AssociatedControlID="mdpOrderDateFrom"
                meta:resourcekey="lblOrderDateFrom" />
            <mag:DatePicker ID="mdpOrderDateFrom" runat="server" />
        </div>
        <div class="field">
            <asp:Label ID="lblOrderDateTo" runat="server" AssociatedControlID="mdpOrderDateTo"
                meta:resourcekey="lblOrderDateTo" />
            <mag:DatePicker ID="mdpOrderDateTo" runat="server" />
        </div>
        <div class="field">
            <asp:Label ID="lblOrderNumber" runat="server" AssociatedControlID="ddlOrderNumberOperator"
                meta:resourcekey="lblOrderNumber" />
            <asp:DropDownList ID="ddlOrderNumberOperator" runat="server" CssClass="autoSize operator">
                <asp:ListItem Text="=" Value="=" />
                <asp:ListItem Text="!=" Value="!=" />
                <asp:ListItem Text="&lt;" Value="&lt;" />
                <asp:ListItem Text="&lt;=" Value="&lt;=" />
                <asp:ListItem Text="&gt;" Value="&gt;" />
                <asp:ListItem Text="&gt;=" Value="&gt;=" />
            </asp:DropDownList>
            <asp:TextBox ID="tbxOrderNumber" runat="server" CssClass="numeric" />
            <asp:CompareValidator ID="cvOrderNumberIsInteger" runat="server" ValidationGroup="vgSearch"
                meta:resourcekey="cvOrderNumberIsInteger" ControlToValidate="tbxOrderNumber"
                Operator="DataTypeCheck" Type="Integer" />
            <asp:CompareValidator ID="cvOrderNumberGreaterThanZero" runat="server" ValidationGroup="vgSearch"
                meta:resourcekey="cvOrderNumberGreaterThanZero" ControlToValidate="tbxOrderNumber"
                Operator="GreaterThan" ValueToCompare="0" Type="Integer" />
        </div>
        <div class="field">
            <asp:Label ID="lblSegment" runat="server" AssociatedControlID="ddlSegments" meta:resourcekey="lblSegment" />
            <asp:DropDownList runat="server" ID="ddlSegments" DataTextField="Code" DataValueField="SegmentId"
                AppendDataBoundItems="true">
                <asp:ListItem />
            </asp:DropDownList>
        </div>
          <div class="field">
            <asp:Label ID="lblIsApproved" runat="server" AssociatedControlID="ddlIsApproved" meta:resourcekey="lblIsApproved" />
            <asp:DropDownList ID="ddlIsApproved" runat="server">
                <asp:ListItem />
                <asp:ListItem Value="true" meta:resourcekey="liYes" />
                <asp:ListItem Value="false" meta:resourcekey="liNo" />
            </asp:DropDownList>
        </div>
        <div class="field">
            <asp:Label ID="lblIsLockedOut" runat="server" AssociatedControlID="ddlIsLockedOut" meta:resourcekey="lblIsLockedOut" />
            <asp:DropDownList ID="ddlIsLockedOut" runat="server">
                <asp:ListItem />
                <asp:ListItem Value="true" meta:resourcekey="liYes" />
                <asp:ListItem Value="false" meta:resourcekey="liNo" />
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
                        SkinID="Major" ValidationGroup="vgSearch" OnClick="lbtnSearch_Click" />
                </li>
            </ul>
        </div>
    </mag:SearchPanel>
    <mag:Gridview runat="server" ID="mgvUsers" DataKeyNames="UserId" OnCommand="mgvUsers_Command">
        <commandbuttons>
            <mag:CommandButton runat="server" Text="<%$ Resources: Global, Delete %>" CommandName="DeleteCustomer"
                OnClientClick='<%$ Resources:global, ClientClickConfirmDeletion %>' />
        </commandbuttons>
        <columns>
            <mag:GridViewColumn AllowSorting="true" CssClass="numeric" SortExpression="CreationDate" meta:resourcekey="mgvcCreationDate">
                <celltemplate>
                        <asp:Literal runat="server" Text='<%# ((CustomerViewModel)Container.DataItem).CreationDate.ToUserTimeZoneString() %>' />
                    </celltemplate>
            </mag:GridViewColumn>
            <mag:GridViewColumn AllowSorting="true" SortExpression="FirstName" meta:resourcekey="mgvcFirstName">
                <celltemplate>
                        <asp:Literal runat="server" Text='<%# this.Server.HtmlEncode(((CustomerViewModel)Container.DataItem).FirstName) %>' />
                    </celltemplate>
            </mag:GridViewColumn>
            <mag:GridViewColumn AllowSorting="true" SortExpression="MiddleName" meta:resourcekey="mgvcMiddleName">
                <celltemplate>
                        <asp:Literal runat="server" Text='<%# this.Server.HtmlEncode(((CustomerViewModel)Container.DataItem).MiddleName) %>' />
                    </celltemplate>
            </mag:GridViewColumn>
            <mag:GridViewColumn AllowSorting="true" SortExpression="LastName" meta:resourcekey="mgvcLastName">
                <celltemplate>
                        <asp:Literal runat="server" Text='<%# this.Server.HtmlEncode(((CustomerViewModel)Container.DataItem).LastName) %>' />
                    </celltemplate>
            </mag:GridViewColumn>
            <mag:GridViewColumn AllowSorting="true" SortExpression="Email" meta:resourcekey="mgvcEmail">
                <celltemplate>
                        <asp:Literal runat="server" Text='<%# this.Server.HtmlEncode(((CustomerViewModel)Container.DataItem).Email) %>' />
                    </celltemplate>
            </mag:GridViewColumn>
             <mag:GridViewColumn AllowSorting="true" SortExpression="UserName" meta:resourcekey="mgvcUserName">
                <celltemplate>
                        <asp:Literal runat="server" Text='<%# this.Server.HtmlEncode(((CustomerViewModel)Container.DataItem).UserName) %>' />
                    </celltemplate>
            </mag:GridViewColumn>
            <mag:GridViewColumn AllowSorting="true" CssClass="numeric" SortExpression="OrdersCount" meta:resourcekey="mgvcOrdersCount">
                <celltemplate>
                        <asp:Literal runat="server" Text='<%# Eval("OrdersCount") %>' />
                    </celltemplate>
            </mag:GridViewColumn>
            <mag:GridViewColumn AllowSorting="true" CssClass="numeric" SortExpression="LastOrderNumber.Value" meta:resourcekey="mgvcLastOrderNumber">
                <celltemplate>
                        <asp:Literal runat="server" Text='<%# Eval("LastOrderNumber") %>' />
                    </celltemplate>
            </mag:GridViewColumn>
            <mag:GridViewColumn AllowSorting="true" CssClass="numeric" SortExpression="LastOrderDate.Value" meta:resourcekey="mgvcLastOrderDate">
                <celltemplate>
                        <asp:Literal runat="server" Text='<%# ((CustomerViewModel)Container.DataItem).LastOrderDate.ToUserTimeZoneString() %>' />
                    </celltemplate>
            </mag:GridViewColumn>
            <mag:GridViewColumn AllowSorting="false" meta:resourcekey="mgvcSegments">
                <celltemplate>
                        <asp:Literal runat="server" Text='<%# Eval("StringyfiedSegments") %>' />
                    </celltemplate>
            </mag:GridViewColumn>
            <mag:GridViewColumn AllowSorting="true" SortExpression="IsApproved" meta:resourcekey="mgvcIsApproved">
                <celltemplate>
                        <asp:CheckBox ID="cbxIsApproved" runat="server" Enabled='<%# this.CanEdit %>' Checked='<%# Eval("IsApproved") %>' AutoPostBack="true" OnCheckedChanged="cbxIsApproved_CheckedChanged" />
                    </celltemplate>
            </mag:GridViewColumn>
            <mag:GridViewColumn AllowSorting="true" SortExpression="IsLockedOut" meta:resourcekey="mgvcIsLockedOut">
                <celltemplate>
                        <asp:CheckBox ID="cbxIsLockedOut" runat="server" Enabled='<%# this.CanEdit %>' Checked='<%# Eval("IsLockedOut") %>' AutoPostBack="true" OnCheckedChanged="cbxIsLockedOut_CheckedChanged" />
                    </celltemplate>
            </mag:GridViewColumn>
            <mag:GridViewColumn Name="<%$ Resources: Global, Action %>">
                <celltemplate>
                        <ul>
                            <li><asp:ImageButton runat="server" SkinID="Edit" ToolTip='<%$ resources:global,Edit %>' CommandName="EditCustomer"  /></li>
                            <mag:FeaturePanel runat="server" Tag="Li" Level="CreateAndDelete"><asp:ImageButton runat="server" SkinID="Delete" ToolTip='<%$ resources:global,Delete %>' CommandName="DeleteCustomer" OnClientClick='<%$ Resources:global, ClientClickConfirmDeletion %>' /></mag:FeaturePanel>
                        </ul>
                    </celltemplate>
            </mag:GridViewColumn>
        </columns>
    </mag:Gridview>
</asp:Content>
