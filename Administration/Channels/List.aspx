<%@ Page Title="" Language="C#" MasterPageFile="~/App_Masters/DefaultLayout.Master"
    AutoEventWireup="true" CodeBehind="List.aspx.cs" Inherits="Magelia.WebStore.Admin.Administration.Channels.List" %>

<asp:Content ContentPlaceHolderID="cphBarTitle" runat="server">
    <asp:Literal ID="litChannels" runat="server" meta:resourcekey="litChannels" />
</asp:Content>
<asp:Content ContentPlaceHolderID="cphBarContent" runat="server">
    <mag:FeaturePanel runat="server" Tag="Ul" Level="CreateAndDelete">
        <li>
            <asp:HyperLink runat="server" Text='<%$ resources:global, AddNew %>' NavigateUrl="~/Administration/Channels/Edit.aspx"
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
        <div class="field">
            <asp:Label ID="lblDescription" runat="server" meta:resourcekey="lblDescription" AssociatedControlID="tbxDescription" />
            <asp:TextBox ID="tbxDescription" runat="server" />
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
    <mag:Gridview ID="mgvChannels" runat="server" AllowPaging="true" DataKeyNames="OrderChannelId"
        ShowSelectionColumn="true" OnCommand="mgvChannels_Command">
        <commandbuttons>
            <mag:CommandButton runat="server" Text='<%$ resources:global, Delete %>' OnClientClick='<%$ resources:global, ClientClickConfirmDeletion %>'
                CommandName="DeleteChannels" />
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
            <mag:GridViewColumn ID="mgvcDescription" runat="server" AllowSorting="true" SortExpression="Description"
                meta:resourcekey="mgvcDescription">
                <celltemplate>
                    <asp:Literal  runat="server" Text='<%# Eval("Description") %>' />
                </celltemplate>
            </mag:GridViewColumn>
            <mag:GridViewColumn runat="server" AllowSorting="false" Name='<%$ resources:global, Action %>'>
                <celltemplate>
                    <ul>
                        <li>
                            <asp:ImageButton runat="server" SkinID="Edit" ToolTip='<%$ resources:global,Edit %>' CommandName="EditChannel" />
                        </li>
                        <mag:FeaturePanel runat="server" Level="CreateAndDelete" Tag="Li">
                            <asp:ImageButton runat="server" SkinID="Delete" ToolTip='<%$ resources:global,Delete %>' CommandName="DeleteChannels" OnClientClick='<%$ resources:global, ClientClickConfirmDeletion %>' />
                        </mag:FeaturePanel>
                    </ul>
                </celltemplate>
            </mag:GridViewColumn>
        </columns>
    </mag:Gridview>
</asp:Content>
