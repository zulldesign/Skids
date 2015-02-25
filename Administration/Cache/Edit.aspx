<%@ Page Title="" Language="C#" MasterPageFile="~/App_Masters/DefaultLayout.Master"
    AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="Magelia.WebStore.Admin.Administration.Caches.Edit" %>

<asp:Content ContentPlaceHolderID="cphBarTitle" runat="server">
    <asp:Literal ID="litCache" runat="server" meta:resourcekey="litCache" />
</asp:Content>
<asp:Content ContentPlaceHolderID="cphBarContent" runat="server">
    <ul>
        <li>
            <asp:HyperLink runat="server" NavigateUrl="~/Administration/ApplicationTiers/List.aspx" SkinID="Minor" Text='<%$ resources:global, Cancel %>' />
        </li>
        <li>
            <asp:LinkButton ID="lbtnClearCache" runat="server" SkinID="Major" OnClick="lbtnClearCache_Click" meta:resourceKey="lbtnClearCache" />
        </li>
    </ul>
</asp:Content>
<asp:Content ContentPlaceHolderID="cphBody" runat="server">
    <asp:ValidationSummary runat="server" ValidationGroup="vgApplicationTier" HeaderText='<%$ Resources: Global, ErrorMsgText %>' />
    <div class="form">
        <asp:PlaceHolder runat="server" ID="phClearCache">
                <fieldset>
                    <legend>
                        <asp:Literal ID="litClearCaches" runat="server" meta:resourcekey="litClearCaches" />
                    </legend>
                    <div class="field inline">
                        <asp:Label ID="lblClearCacheSeller" runat="server" meta:resourcekey="lblClearCacheSeller" AssociatedControlID="ddlClearCacheSeller" />
                        <asp:DropDownList ID="ddlClearCacheSeller" runat="server" AutoPostBack="true" DataTextField="Code" DataValueField="SellerId"  Enabled="false" />
                    </div>
                    <div class="field inline break">
                        <asp:Label ID="lblClearCacheStore" runat="server" meta:resourcekey="lblClearCacheStore" AssociatedControlID="ddlClearCacheStore" />
                        <asp:DropDownList ID="ddlClearCacheStore" runat="server" DataTextField="Code" DataValueField="StoreId" Enabled="false" />
                    </div>
                </fieldset>
        </asp:PlaceHolder>
    </div>
</asp:Content>
