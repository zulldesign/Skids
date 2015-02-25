<%@ Page Title="" Language="C#" MasterPageFile="~/App_Masters/DefaultLayout.Master"
    AutoEventWireup="true" CodeBehind="List.aspx.cs" Inherits="Magelia.WebStore.Admin.Shipping.Carriers.List" %>

<asp:Content ContentPlaceHolderID="cphBarTitle" runat="server">
    <asp:Literal ID="litCarriersTitle" runat="server" meta:resourcekey="litCarriers" />
</asp:Content>
<asp:Content ContentPlaceHolderID="cphBarContent" runat="server">
    <ul>
        <mag:FeaturePanel runat="server" Tag="Li" Level="CreateAndDelete">
            <asp:HyperLink runat="server" NavigateUrl="~/Shipping/Carriers/Edit.aspx" Text='<%$ resources:global, AddNew %>'
                SkinID="Major" />
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
            <asp:Label ID="lblName" runat="server" meta:resourcekey="lblName" AssociatedControlID="tbxName" />
            <asp:TextBox ID="tbxName" runat="server" />
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
    <mag:Gridview ID="mgvCarriers" runat="server" ShowSelectionColumn="true" DataKeyNames="CarrierId" OnCommand="mgvCarriers_Command">
        <commandbuttons>
            <mag:CommandButton runat="server" Text='<%$ resources:global, Delete %>' CommandName="DeteleCarriers"
                OnClientClick='<%$ resources:global, ClientClickConfirmDeletion %>' />
        </commandbuttons>
        <columns>
            <mag:GridViewColumn ID="mgvcCode" runat="server" AllowSorting="true" SortExpression="Code"
                meta:resourcekey="mgvcCode">
                <celltemplate>
                    <asp:Literal runat="server" Text='<%# Eval("Code") %>' />
                </celltemplate>
            </mag:GridViewColumn>
            <mag:GridViewColumn ID="mgvcName" runat="server" AllowSorting="true" SortExpression="Name"
                meta:resourcekey="mgvcName">
                <celltemplate>
                    <asp:Literal  runat="server" Text='<%# Eval("Name") %>' />
                </celltemplate>
            </mag:GridViewColumn>
            <mag:GridViewColumn ID="mgvcLogo" runat="server" AllowSorting="true" SortExpression="LogoUrl"
                meta:resourcekey="mgvcLogo">
                <celltemplate>
                    <asp:Image runat="server" AlternateText='<%# Eval("LogoAlternateText") %>' ToolTip='<%# Eval("LogoTitle")  %>' Visible='<%# !String.IsNullOrEmpty(((Magelia.WebStore.Admin.Shipping.Carriers.List.CarrierViewModel)Container.DataItem).LogoUrl) %>' ImageUrl='<%# Eval("LogoUrl") %>' />
                </celltemplate>
            </mag:GridViewColumn>
            <mag:GridViewColumn runat="server" AllowSorting="false" Name='<%$ resources:global, Action %>'>
                <celltemplate>
                    <ul>
                        <li>
                            <asp:ImageButton runat="server" CommandName="EditCarrier" SkinID="Edit" ToolTip='<%$ resources:global,Edit %>' />
                        </li>
                        <li runat="server" visible='<%# ((CarrierViewModel)Container.DataItem).Deletable && this.CanCreateAndDelete %>'>
                            <asp:ImageButton  runat="server" CommandName="DeleteCarrier" SkinID="Delete" ToolTip='<%$ resources:global,Delete %>'  OnClientClick='<%$ resources:global, ClientClickConfirmDeletion %>'/>
                        </li>
                    </ul>
                </celltemplate>
            </mag:GridViewColumn>
        </columns>
    </mag:Gridview>
</asp:Content>
