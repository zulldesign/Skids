<%@ Page Title="" Language="C#" MasterPageFile="~/App_Masters/DefaultLayout.Master"
    AutoEventWireup="true" CodeBehind="List.aspx.cs" Inherits="Magelia.WebStore.Admin.Products.Discounts.List" %>

<asp:Content ContentPlaceHolderID="cphBarTitle" runat="server">
    <asp:Literal ID="litDiscounts" runat="server" meta:resourcekey="litDiscounts" />
</asp:Content>
<asp:Content ContentPlaceHolderID="cphBarContent" runat="server">
    <ul>
        <mag:FeaturePanel runat="server" Level="CreateAndDelete" Tag="Li">
            <asp:HyperLink runat="server" SkinID="Major" Text="<%$ Resources: Global, AddNew %>" NavigateUrl="~/Products/Discounts/Edit.aspx" />
        </mag:FeaturePanel>
    </ul>
</asp:Content>
<asp:Content ContentPlaceHolderID="cphBody" runat="server">
    <mag:SearchPanel runat="server" DefaultButton="lbtnSearch">
        <div class="field">
            <asp:Label ID="lblCode" runat="server" meta:resourcekey="lblCode" AssociatedControlID="tbxCode" />
            <asp:TextBox ID="tbxCode" runat="server" />
        </div>
        <div class="field">
            <asp:Label ID="lblStartDate" runat="server" meta:resourcekey="lblStartDate" AssociatedControlID="ddlStartDateOperator" />
            <asp:DropDownList ID="ddlStartDateOperator" runat="server" CssClass="autoSize operator">
                <asp:ListItem Text="=" Value="=" />
                <asp:ListItem Text="!=" Value="!=" />
                <asp:ListItem Text="&lt;" Value="&lt;" />
                <asp:ListItem Text="&lt;=" Value="&lt;=" />
                <asp:ListItem Text="&gt;" Value="&gt;" />
                <asp:ListItem Text="&gt;=" Value="&gt;=" />
            </asp:DropDownList>
            <mag:DatePicker ID="mdpStartDate" runat="server" />
        </div>
        <div class="field">
            <asp:Label ID="lblEndDate" runat="server" meta:resourcekey="lblEndDate" AssociatedControlID="ddlEndDateOperator" />
            <asp:DropDownList ID="ddlEndDateOperator" runat="server" CssClass="autoSize operator">
                <asp:ListItem Text="=" Value="=" />
                <asp:ListItem Text="!=" Value="!=" />
                <asp:ListItem Text="&lt;" Value="&lt;" />
                <asp:ListItem Text="&lt;=" Value="&lt;=" />
                <asp:ListItem Text="&gt;" Value="&gt;" />
                <asp:ListItem Text="&gt;=" Value="&gt;=" />
            </asp:DropDownList>
            <mag:DatePicker ID="mdpEndDate" runat="server" />
        </div>
        <div class="field">
            <asp:Label ID="lblName" runat="server" meta:resourcekey="lblName" AssociatedControlID="tbxName" />
            <asp:TextBox ID="tbxName" runat="server" />
        </div>
        <div class="field">
            <asp:Label ID="lblDescription" runat="server" meta:resourcekey="lblDescription" AssociatedControlID="tbxDescription" />
            <asp:TextBox ID="tbxDescription" runat="server" />
        </div>
        <div class="field">
            <asp:Label ID="lblPriority" runat="server" meta:resourcekey="lblPriority" AssociatedControlID="ddlPriority" />
            <asp:DropDownList ID="ddlPriority" runat="server">
                <asp:ListItem />
                <asp:ListItem Value="0" meta:resourcekey="liLow" />
                <asp:ListItem Value="100" meta:resourcekey="liMedium" />
                <asp:ListItem Value="1000" meta:resourcekey="liHigh" />
            </asp:DropDownList>
        </div>
        <div class="field">
            <asp:Label ID="lblTag" runat="server" meta:resourcekey="lblTag" AssociatedControlID="tbxTag" />
            <asp:TextBox ID="tbxTag" runat="server" />
        </div>
        <div class="field">
            <asp:Label ID="lblIsActive" runat="server" meta:resourcekey="lblIsActive" AssociatedControlID="ddlIsActive" />
            <asp:DropDownList ID="ddlIsActive" runat="server">
                <asp:ListItem />
                <asp:ListItem Value="true" meta:resourcekey="liYes" />
                <asp:ListItem Value="false" meta:resourcekey="liNo" />
            </asp:DropDownList>
        </div>
        <div class="buttons">
            <ul>
                <li>
                    <asp:LinkButton ID="lbtnReset" runat="server" Text='<%$ resources:global, Reset %>'
                        SkinID="Minor" OnClick="lbtnReset_Click" />
                </li>
                <li>
                    <asp:LinkButton ID="lbtnSearch" runat="server" Text='<%$ resources:global, Search %>'
                        SkinID="Major" OnClick="lbtnSearch_Click" />
                </li>
            </ul>
        </div>
    </mag:SearchPanel>
    <mag:Gridview ID="mgvDiscounts" runat="server" DataKeyNames="DiscountId" OnCommand="mgvDiscounts_Command">
        <commandbuttons>
            <mag:CommandButton ID="mcbEnable" runat="server" meta:resourcekey="mcbEnable" CommandName="Enable" />
            <mag:CommandButton ID="mcbDisable" runat="server" meta:resourcekey="mcbDisable" CommandName="Disable" />
            <mag:CommandButton runat="server" Text="<%$ Resources: Global, Delete %>" CommandName="DeleteDiscount"
                OnClientClick='<%$ resources:global, ClientClickConfirmDeletion %>' />
        </commandbuttons>
        <columns>
            <mag:GridViewColumn AllowSorting="true" SortExpression="Code" meta:resourcekey="mgvcCode">
                <celltemplate>
                    <asp:Literal runat="server" Text='<%# Eval("Code") %>' />
                </celltemplate>
            </mag:GridViewColumn>
            <mag:GridViewColumn AllowSorting="true" CssClass="numeric" SortExpression="StartDate.Value" meta:resourcekey="mgvcStartDate">
                <celltemplate>
                    <asp:Literal runat="server" Text='<%# ((DiscountViewModel)Container.DataItem).StartDate.ToUserTimeZoneString() %>' />
                </celltemplate>
            </mag:GridViewColumn>
            <mag:GridViewColumn AllowSorting="true" CssClass="numeric" SortExpression="EndDate.Value" meta:resourcekey="mgvcEndDate">
                <celltemplate>
                    <asp:Literal runat="server" Text='<%# ((DiscountViewModel)Container.DataItem).EndDate.ToUserTimeZoneString() %>' />
                </celltemplate>
            </mag:GridViewColumn>
            <mag:GridViewColumn AllowSorting="true" SortExpression="Name" meta:resourcekey="mgvcName">
                <celltemplate>
                    <asp:Literal runat="server" Text='<%# Eval("Name") %>' />
                </celltemplate>
            </mag:GridViewColumn>
            <mag:GridViewColumn AllowSorting="true" SortExpression="Description" meta:resourcekey="mgvcDescription">
                <celltemplate>
                    <asp:Literal runat="server" Text='<%# Eval("Description") %>' />
                </celltemplate>
            </mag:GridViewColumn>
            <mag:GridViewColumn AllowSorting="true" SortExpression="Priority" meta:resourcekey="mgvcPriority">
                <celltemplate>
                    <asp:MultiView runat="server" ActiveViewIndex='<%# ((Magelia.WebStore.Admin.Products.Discounts.List.DiscountViewModel)(Container.DataItem)).Priority == 1000 ? 2 : ((Magelia.WebStore.Admin.Products.Discounts.List.DiscountViewModel)(Container.DataItem)).Priority == 100 ? 1 : 0  %>'>
                        <asp:View runat="server">
                            <asp:Literal ID="litLow" runat="server" meta:resourcekey="litLow" />
                        </asp:View>
                        <asp:View runat="server">
                            <asp:Literal ID="litMedium" runat="server" meta:resourcekey="litMedium" />
                        </asp:View>
                        <asp:View runat="server">
                            <asp:Literal ID="litHigh" runat="server" meta:resourcekey="litHigh" />
                        </asp:View>
                    </asp:MultiView>
                </celltemplate>
            </mag:GridViewColumn>
            <mag:GridViewColumn AllowSorting="false" meta:resourcekey="mgvcTags">
                <celltemplate>
                    <asp:Literal runat="server" Text='<%# String.Join(", ", ((Magelia.WebStore.Admin.Products.Discounts.List.DiscountViewModel)(Container.DataItem)).Tags) %>' />
                </celltemplate>
            </mag:GridViewColumn>
            <mag:GridViewColumn AllowSorting="true" SortExpression="IsActive" meta:resourcekey="mgvcIsActive">
                <celltemplate>
                    <asp:CheckBox ID="cbxIsActive" runat="server" Enabled='<%# this.CanEdit %>' AutoPostBack="true" OnCheckedChanged="cbxIsActive_CheckedChanged" Checked='<%# Eval("IsActive") %>' />
                </celltemplate>
            </mag:GridViewColumn>
            <mag:GridViewColumn Name="<%$ Resources: Global, Action %>">
                <celltemplate>
                    <ul>
                        <li>
                            <asp:ImageButton runat="server" SkinID="Edit" ToolTip='<%$ resources:global,Edit %>' CommandName="EditDiscount"  />
                        </li>
                        <mag:FeaturePanel runat="server" Level="CreateAndDelete" Tag="Li">
                            <asp:ImageButton runat="server" SkinID="Delete" ToolTip='<%$ resources:global,Delete %>' CommandName="DeleteDiscount" OnClientClick='<%$ resources:global, ClientClickConfirmDeletion %>' />
                        </mag:FeaturePanel>
                    </ul>
                </celltemplate>
            </mag:GridViewColumn>
        </columns>
    </mag:Gridview>
</asp:Content>
