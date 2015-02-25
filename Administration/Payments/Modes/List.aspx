<%@ Page Title="" Language="C#" MasterPageFile="~/App_Masters/DefaultLayout.Master"
    AutoEventWireup="true" CodeBehind="List.aspx.cs" Inherits="Magelia.WebStore.Admin.Administration.Payments.Modes.List" %>

<asp:Content ContentPlaceHolderID="cphBarTitle" runat="server">
    <asp:Literal ID="litPaymentModes" runat="server" meta:resourcekey="litPaymentModes" />
</asp:Content>
<asp:Content ContentPlaceHolderID="cphBarContent" runat="server">
    <mag:FeaturePanel runat="server" Tag="Ul" Level="CreateAndDelete">
        <li>
            <asp:HyperLink runat="server" Text='<%$ resources:global, AddNew %>' NavigateUrl="~/Administration/Payments/Modes/Edit.aspx"
                SkinID="Major" />
        </li>
    </mag:FeaturePanel>
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
    <mag:Gridview ID="mgvPaymentModes" runat="server" AllowPaging="true" DataKeyNames="PaymentModeId"
        ShowSelectionColumn="true" OnCommand="mgvPaymentModes_Command">
        <commandbuttons>
            <mag:CommandButton runat="server" Text='<%$ resources:global, Delete %>' CommandName="DeletePaymentModes" OnClientClick='<%$ resources:global, ClientClickConfirmDeletion %>' />
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
                    <asp:Literal runat="server" Text='<%# Eval("Name") %>' />
                </celltemplate>
            </mag:GridViewColumn>
            <mag:GridViewColumn runat="server" AllowSorting="false" Name='<%$ resources:global, Action %>'>
                <celltemplate>
                    <ul>
                        <li>
                            <asp:ImageButton runat="server" SkinID="Edit" ToolTip='<%$ resources:global,Edit %>' CommandName="EditPaymentMode" />
                        </li>
                        <li runat="server" visible='<%# ((PaymentModeViewModel)Container.DataItem).Deletable && this.CanCreateAndDelete %>'>
                            <asp:ImageButton runat="server" SkinID="Delete" ToolTip='<%$ resources:global,Delete %>' CommandName="DeletePaymentModes" OnClientClick='<%$ resources:global, ClientClickConfirmDeletion %>' />
                        </li>
                    </ul>
                </celltemplate>
            </mag:GridViewColumn>
        </columns>
    </mag:Gridview>
</asp:Content>
