<%@ Page Title="" Language="C#" MasterPageFile="~/App_Masters/DefaultLayout.Master"
    EnableEventValidation="false" AutoEventWireup="true" CodeBehind="List.aspx.cs"
    Inherits="Magelia.WebStore.Admin.Administration.Languages.List" %>

<asp:Content ContentPlaceHolderID="cphBarTitle" runat="server">
    <asp:Literal ID="litLanguages" runat="server" meta:resourcekey="litLanguages" />
</asp:Content>
<asp:Content ContentPlaceHolderID="cphBody" runat="server">
    <mag:SearchPanel runat="server" DefaultButton="lbtnSearch">
        <div class="field">
            <asp:Label ID="lblCode" runat="server" AssociatedControlID="tbxCode" meta:resourcekey="lblCode" />
            <asp:TextBox ID="tbxCode" runat="server" />
        </div>
        <div class="field">
            <asp:Label ID="lblName" runat="server" AssociatedControlID="tbxName" meta:resourcekey="lblName" />
            <asp:TextBox ID="tbxName" runat="server" />
        </div>
        <div class="buttons">
            <ul>
                <li>
                    <asp:LinkButton ID="lbtnReset" runat="server" Text="<%$ Resources:Global, Reset %>"
                        SkinID="Minor" OnClick="lbtnReset_Click" meta:resourcekey="lbnReset" />
                </li>
                <li>
                    <asp:LinkButton ID="lbtnSearch" runat="server" Text="<%$ Resources:Global, Search %>"
                        SkinID="Major" OnClick="lbtnSearch_Click" meta:resourcekey="lbnSearch" />
                </li>
            </ul>
        </div>
    </mag:SearchPanel>
    <asp:Panel SkinID="Form" runat="server">
        <mag:Gridview runat="server" ID="mgvLanguages" DataKeyNames="LanguageId" OnCommand="mgvLanguages_Command">
            <columns>
                <mag:GridViewColumn AllowSorting="true" SortExpression="Code" meta:resourcekey="mgvcCode">
                    <celltemplate>
                        <asp:Literal runat="server" Text='<%# Eval("Code") %>' />
                    </celltemplate>
                </mag:GridViewColumn>
                <mag:GridViewColumn AllowSorting="true" SortExpression="Name" meta:resourcekey="mgvcName">
                    <celltemplate>
                        <asp:Literal runat="server" Text='<%# Eval("Name") %>' />
                    </celltemplate>
                </mag:GridViewColumn>
                <mag:GridViewColumn Name="<%$ Resources: Global, Action %>">
                    <celltemplate>
                        <ul>
                            <li>
                                <asp:ImageButton runat="server" SkinID="Edit" ToolTip='<%$ resources:global,Edit %>' CommandName="EditLanguage"  />
                            </li>
                        </ul>
                    </celltemplate>
                </mag:GridViewColumn>
            </columns>
        </mag:Gridview>
    </asp:Panel>
</asp:Content>
