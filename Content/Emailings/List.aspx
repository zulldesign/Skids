<%@ Page Title="" Language="C#" MasterPageFile="~/App_Masters/DefaultLayout.Master"
    EnableEventValidation="false" AutoEventWireup="true" CodeBehind="List.aspx.cs"
    Inherits="Magelia.WebStore.Admin.Content.Emailings.List" %>

<asp:Content ContentPlaceHolderID="cphBarTitle" runat="server">
    <asp:Literal ID="litTemplates" runat="server" meta:resourcekey="litTemplates" />
</asp:Content>
<asp:Content ContentPlaceHolderID="cphBarContent" runat="server">
    <ul>
        <mag:FeaturePanel runat="server" Level="CreateAndDelete" Tag="Li">
            <asp:HyperLink runat="server" SkinID="Major" Text="<%$ Resources: Global, AddNew %>" NavigateUrl="~/Content/Emailings/Edit.aspx" />
        </mag:FeaturePanel>
    </ul>
</asp:Content>
<asp:Content ContentPlaceHolderID="cphBody" runat="server">
    <mag:SearchPanel runat="server" DefaultButton="lbtnSearch">
        <div class="field">
            <asp:Label ID="lblCode" runat="server" AssociatedControlID="tbxCode" meta:resourcekey="lblCode" />
            <asp:TextBox ID="tbxCode" runat="server" />
        </div>
        <div class="field">
            <asp:Label ID="lblDescription" runat="server" AssociatedControlID="tbxDescription"
                meta:resourcekey="lblDescription" />
            <asp:TextBox ID="tbxDescription" runat="server" />
        </div>
        <div class="buttons">
            <ul>
                <li>
                    <asp:LinkButton ID="lbtnReset" runat="server" Text="<%$ Resources:Global, Reset %>"
                        SkinID="Minor" OnClick="lbtnReset_Click" />
                </li>
                <li>
                    <asp:LinkButton ID="lbtnSearch" runat="server" Text="<%$ Resources:Global, Search %>"
                        SkinID="Major" ValidationGroup="vgSearch" OnClick="lbtnSearch_Click" meta:resourcekey="lbnSearch" />
                </li>
            </ul>
        </div>
    </mag:SearchPanel>
    <mag:Gridview runat="server" ID="mgvTemplates" DataKeyNames="TemplateId" OnCommand="mgvTemplates_Command">
        <commandbuttons>
            <mag:CommandButton Text="<%$ Resources: Global, Delete %>" CommandName="DeleteTemplates"
                OnClientClick='<%$ resources:global, ClientClickConfirmDeletion %>' />
        </commandbuttons>
        <columns>
            <mag:GridViewColumn AllowSorting="true" SortExpression="Code" meta:resourcekey="mgvcCode">
                <celltemplate>
                    <asp:Literal runat="server" Text='<%# Eval("Code") %>'/>
                </celltemplate>
            </mag:GridViewColumn>
            <mag:GridViewColumn AllowSorting="true" SortExpression="Description" meta:resourcekey="mgvcDescription">
                <celltemplate>
                    <asp:Literal runat="server" Text='<%# Eval("Description") %>'/>
                </celltemplate>
            </mag:GridViewColumn>
            <mag:GridViewColumn meta:resourcekey="mgvcLocalizedCulture">
                <celltemplate>
                    <asp:Literal runat="server" Text='<%# String.Join(",", ((IEnumerable<String>)Eval("LocalizedCultures")).ToArray()) %>'/>
                </celltemplate>
            </mag:GridViewColumn>
            <mag:GridViewColumn Name="<%$ Resources: Global, Action %>">
                <celltemplate>
                    <ul>
                        <li>
                            <asp:ImageButton runat="server" SkinID="Edit" ToolTip='<%$ resources:global,Edit %>' CommandName="EditTemplate" />
                        </li>
                        <mag:FeaturePanel runat="server" Level="CreateAndDelete" Tag="Li">
                            <asp:ImageButton runat="server" SkinID="Delete" ToolTip='<%$ resources:global,Delete %>' OnClientClick='<%$ resources:global, ClientClickConfirmDeletion %>' CommandName="DeleteTemplates" />
                        </mag:FeaturePanel>
                    </ul>
                </celltemplate>
            </mag:GridViewColumn>
        </columns>
    </mag:Gridview>
</asp:Content>
