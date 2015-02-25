<%@ Page Title="" Language="C#" MasterPageFile="~/App_Masters/DefaultLayout.Master"
    AutoEventWireup="true" CodeBehind="Details.aspx.cs" Inherits="Magelia.WebStore.Admin.Administration.Logs.Details" %>

<asp:Content ContentPlaceHolderID="cphBarTitle" runat="server">
    <asp:Literal runat="server" ID="litLog" meta:resourcekey="litLog" />
</asp:Content>
<asp:Content ContentPlaceHolderID="cphBarContent" runat="server">
    <ul class="buttons">
        <li>
            <asp:HyperLink ID="hlBack" runat="server" SkinID="Minor" NavigateUrl="List.aspx"
                Text='<%$ resources:global, Back %>' />
        </li>
    </ul>
</asp:Content>
<asp:Content ContentPlaceHolderID="cphBody" runat="server">
    <div class="form log">
        <fieldset>
            <legend>
                <asp:Literal runat="server" meta:resourcekey="litLegend" />
            </legend>
            <div class="field inline">
                <asp:Label ID="lblDate" meta:resourcekey="lblDate" AssociatedControlID="txtDate" runat="server" />
                <asp:TextBox ReadOnly="true" ID="txtDate" runat="server" />
            </div>
            <div class="field inline break">
                <asp:Label ID="lblSeller" meta:resourcekey="lblSeller" AssociatedControlID="txtSeller"
                    runat="server" />
                <asp:TextBox ReadOnly="true" ID="txtSeller" runat="server" />
            </div>
            <div class="field inline break">
                <asp:Label ID="lblStore" meta:resourcekey="lblStore" AssociatedControlID="txtStore"
                    runat="server" />
                <asp:TextBox ReadOnly="true" ID="txtStore" runat="server" />
            </div>
            <div class="field inline break">
                <asp:Label ID="lblUserName" meta:resourcekey="lblUserName" AssociatedControlID="txtUserName"
                    runat="server" />
                <asp:TextBox ReadOnly="true" ID="txtUserName" runat="server" />
            </div>
            <div class="field inline break">
                <asp:Label ID="lblHostname" meta:resourcekey="lblHostname" AssociatedControlID="txtHostname" runat="server" />
                <asp:TextBox ReadOnly="true" ID="txtHostname" runat="server" />
            </div>
            <div class="field inline break">
                <asp:Label ID="lblUrl" meta:resourcekey="lblUrl" AssociatedControlID="txtUrl" runat="server" />
                <asp:TextBox ReadOnly="true" ID="txtUrl" runat="server" />
            </div>
            <div class="field inline break">
                <asp:Label ID="lblLogLevel" meta:resourcekey="lblLogLevel" AssociatedControlID="txtLogLevel" runat="server" />
                <asp:TextBox ReadOnly="true" ID="txtLogLevel" runat="server" />
            </div>
            <div id="bMessage" runat="server" class="field inline break large">
                <asp:Label ID="lblMessage" meta:resourcekey="lblMessage" runat="server" />
                <div class="content"><asp:Literal ID="litMessage" runat="server" /></div>
            </div>
            <div id="bException" runat="server" class="field inline break large">
                <asp:Label ID="lblException" meta:resourcekey="lblException" runat="server" />
                <div class="content"><asp:Literal ID="litException" runat="server" /></div>
            </div>
            <div id="bStackTrace" runat="server" class="field inline break large">
                <asp:Label ID="lblStackTrace" meta:resourcekey="lblStackTrace" runat="server" />
                <div class="content"><asp:Literal ID="litStackTrace" runat="server" /></div>
            </div>
        </fieldset>
    </div>
</asp:Content>
