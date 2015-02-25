<%@ Page Title="" Language="C#" MasterPageFile="~/App_Masters/DefaultLayout.Master" AutoEventWireup="true" CodeBehind="List.aspx.cs" Inherits="Magelia.WebStore.Admin.Administration.Logs.List" %>

<asp:Content ContentPlaceHolderID="cphBarTitle" runat="server">
    <asp:Literal ID="litLogs" runat="server" meta:resourcekey="litLogs" />
</asp:Content>
<asp:Content ContentPlaceHolderID="cphBody" runat="server">
    <mag:SearchPanel ID="pnlSearch" runat="server" DefaultButton="lbtnSearch">
        <div class="field">
            <asp:Label runat="server" AssociatedControlID="mdtpAfter" meta:resourcekey="lblAfter" ID="lblAfter" />
            <mag:DateTimePicker ID="mdtpAfter" runat="server" />
        </div>
        <div class="field">
            <asp:Label runat="server" AssociatedControlID="mdtpBefore" meta:resourcekey="lblBefore" ID="lblBefore" />
            <mag:DateTimePicker ID="mdtpBefore" runat="server" />
        </div>
        <div class="field">
            <asp:Label AssociatedControlID="ddlSeller" meta:resourcekey="lblSeller" runat="server" />
            <asp:DropDownList ID="ddlSeller" runat="server" />
        </div>
        <div class="field">
            <asp:Label AssociatedControlID="ddlStore" meta:resourcekey="lblStore" runat="server" />
            <asp:DropDownList ID="ddlStore" runat="server" />
        </div>
        <div class="field">
            <asp:Label AssociatedControlID="txtMessage" meta:resourcekey="lblMessage" runat="server" />
            <asp:TextBox ID="txtMessage" runat="server" />
        </div>
        <div class="field">
            <asp:Label AssociatedControlID="txtLogLevel" meta:resourcekey="lblLogLevel" runat="server" />
            <asp:TextBox ID="txtLogLevel" runat="server" />
        </div>
        <div class="field">
            <asp:Label AssociatedControlID="txtUrl" meta:resourcekey="lblUrl" runat="server" />
            <asp:TextBox ID="txtUrl" runat="server" />
        </div>
        <div class="field">
            <asp:Label AssociatedControlID="txtComputerName" meta:resourcekey="lblComputerName" runat="server" />
            <asp:TextBox ID="txtComputerName" runat="server" />
        </div>
        <div class="field">
            <asp:Label AssociatedControlID="txtUserName" meta:resourcekey="lblUserName" runat="server" />
            <asp:TextBox ID="txtUserName" runat="server" />
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
    <asp:Panel runat="server" SkinID="Form" DefaultButton="lbtnPurge">
        <fieldset>
            <legend>
                <asp:Literal runat="server" meta:resourcekey="litPurge" />
            </legend>
            <div class="field">
                <asp:Label runat="server" AssociatedControlID="mdtpPurge" meta:resourcekey="lblPurge" />
                <mag:DateTimePicker ID="mdtpPurge" runat="server" />
            </div>
            <div class="buttons">
                <ul>
                    <li>
                        <asp:LinkButton ID="lbtnPurge" runat="server" OnClick="lbtnPurge_Click" SkinID="Major" meta:resourcekey="lbtnPurge" />
                    </li>
                </ul>
            </div>
        </fieldset>
    </asp:Panel>
    <asp:Panel runat="server">
        <mag:Gridview ID="mgvLogs" runat="server" DataKeyNames="LoggingEventId" OnCommand="mgvLogs_Command">
            <columns>
                <mag:GridViewColumn runat="server" AllowSorting="false" meta:resourcekey="mgvcUnitOfWorkContextId">
                    <celltemplate>
                        <asp:Literal runat="server" Text='<%# Eval("UnitOfWorkContextId") %>' />
                    </celltemplate>
                </mag:GridViewColumn>
                <mag:GridViewColumn runat="server" CssClass="numeric" AllowSorting="true" SortExpression="Date" meta:resourcekey="mgvcDate">
                    <celltemplate>
                        <asp:Literal runat="server" Text='<%# ((LogViewModel)Container.DataItem).Date.ToUserTimeZoneString() %>' />
                    </celltemplate>
                </mag:GridViewColumn>
                <mag:GridViewColumn runat="server" AllowSorting="true" SortExpression="Message" meta:resourcekey="mgvcMessage">
                    <celltemplate>
                        <asp:Literal runat="server" Text='<%# Eval("Message") %>' />
                    </celltemplate>
                </mag:GridViewColumn>
                <mag:GridViewColumn runat="server" AllowSorting="true" SortExpression="TierComputerName" meta:resourcekey="mgvcTierComputerName">
                    <celltemplate>
                        <asp:Literal runat="server" Text='<%# Eval("TierComputerName") %>' />
                    </celltemplate>
                </mag:GridViewColumn>
                <mag:GridViewColumn runat="server" CssClass="numeric" AllowSorting="true" SortExpression="TierTypeId" meta:resourcekey="mgvcTierTypeId">
                    <celltemplate>
                        <asp:Literal runat="server" Text='<%# Eval("TierTypeId") %>' />
                    </celltemplate>
                </mag:GridViewColumn>
                <mag:GridViewColumn runat="server" CssClass="numeric" AllowSorting="true" SortExpression="LogLevel" meta:resourcekey="mgvcLogLevel">
                    <celltemplate>
                        <asp:Literal runat="server" Text='<%# Eval("LogLevel") %>' />
                    </celltemplate>
                </mag:GridViewColumn>
                <mag:GridViewColumn runat="server" AllowSorting="true" SortExpression="SellerCode" meta:resourcekey="mgvcSellerCode">
                    <celltemplate>
                        <asp:Literal runat="server" Text='<%# Eval("SellerCode") %>' />
                    </celltemplate>
                </mag:GridViewColumn>
                <mag:GridViewColumn runat="server" AllowSorting="true" SortExpression="StoreCode" meta:resourcekey="mgvcStoreCode">
                    <celltemplate>
                        <asp:Literal runat="server" Text='<%# Eval("StoreCode") %>' />
                    </celltemplate>
                </mag:GridViewColumn>
                <mag:GridViewColumn runat="server" AllowSorting="true" SortExpression="UserName" meta:resourcekey="mgvcUserName">
                    <celltemplate>
                        <asp:Literal runat="server" Text='<%# Eval("UserName") %>' />
                    </celltemplate>
                </mag:GridViewColumn>
                <mag:GridViewColumn runat="server" AllowSorting="true" SortExpression="RequestUrl" meta:resourcekey="mgvcRequestUrl">
                    <celltemplate>
                        <asp:Literal runat="server" Text='<%# Eval("RequestUrl") %>' />
                    </celltemplate>
                </mag:GridViewColumn>
                <mag:GridViewColumn Name='<%$ resources:global, Action %>'>
                    <celltemplate>
                        <ul>
                            <li>
                                <asp:ImageButton ID="imgbtnDetails" runat="server" SkinID="View" CommandName="LogDetails" />
                            </li>
                        </ul>
                    </celltemplate>
                </mag:GridViewColumn>
            </columns>
        </mag:Gridview>
    </asp:Panel>
</asp:Content>
