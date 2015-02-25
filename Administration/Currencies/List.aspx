<%@ Page Title="" Language="C#" MasterPageFile="~/App_Masters/DefaultLayout.Master"
    EnableEventValidation="false" AutoEventWireup="true" CodeBehind="List.aspx.cs"
    Inherits="Magelia.WebStore.Admin.Administration.Currencies.List" %>

<asp:Content ContentPlaceHolderID="cphBarTitle" runat="server">
    <asp:Literal ID="litCurrencies" runat="server" meta:resourcekey="litCurrencies" />
</asp:Content>
<asp:Content ContentPlaceHolderID="cphBody" runat="server">
    <mag:SearchPanel runat="server" DefaultButton="lbnSearch">
        <div class="field">
            <asp:Label ID="lblCode" runat="server" AssociatedControlID="tbxCode" meta:resourcekey="lblCode" />
            <asp:TextBox ID="tbxCode" runat="server" />
        </div>
        <div class="field">
            <asp:Label ID="lblName" runat="server" AssociatedControlID="tbxName" meta:resourcekey="lblName" />
            <asp:TextBox ID="tbxName" runat="server" />
        </div>
        <div class="field">
            <asp:Label ID="lblSymbol" runat="server" AssociatedControlID="tbxSymbol" meta:resourcekey="lblSymbol" />
            <asp:TextBox ID="tbxSymbol" runat="server" />
        </div>
        <div class="buttons">
            <ul>
                <li>
                    <asp:LinkButton ID="lbnReset" runat="server" Text="<%$ Resources:Global, Reset %>"
                        SkinID="Minor" OnClick="lbnReset_Click" />
                </li>
                <li>
                    <asp:LinkButton ID="lbnSearch" runat="server" Text="<%$ Resources:Global, Search %>"
                        SkinID="Major" OnClick="lbnSearch_Click" />
                </li>
            </ul>
        </div>
    </mag:SearchPanel>
    <asp:Panel SkinID="Form" runat="server">
        <mag:Gridview runat="server" ID="mgvCurrencies" DataKeyNames="CurrencyId" OnCommand="mgvCurrencies_Command">
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
                <mag:GridViewColumn AllowSorting="true" SortExpression="Symbol" meta:resourcekey="mgvcSymbol">
                    <celltemplate>
                        <asp:Literal runat="server" Text='<%# Eval("Symbol") %>' />
                    </celltemplate>
                </mag:GridViewColumn>
                <mag:GridViewColumn Name="<%$ Resources: Global, Action %>">
                    <celltemplate>
                        <ul>
                            <li>
                                <asp:ImageButton ID="imgbtnEdit" runat="server" SkinID="Edit" ToolTip='<%$ resources:global,Edit %>' CommandName="EditCurrency"  />
                            </li>
                        </ul>
                    </celltemplate>
                </mag:GridViewColumn>
            </columns>
        </mag:Gridview>
    </asp:Panel>
</asp:Content>
