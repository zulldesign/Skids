<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="AutoRefresh.ascx.cs"
    Inherits="Magelia.WebStore.Admin.App_UserControls.Generics.AutoRefresh" %>
<asp:Timer runat="server" ID="tmAutoRefresh" OnTick="tmAutoRefresh_Tick" Interval="30000" />
<asp:Label runat="server" ID="lblLastRefreshDate" meta:resourceKey="lblLastRefreshDate" />
<asp:MultiView runat="server" ID="mvEnableAutoRefresh">
    <asp:View runat="server">
        <asp:ImageButton ID="ImgEnableAutoReload" OnCommand="ImgAutoReloadState_Command"
            CommandName="Play" runat="server" meta:resourceKey="ImgEnableAutoReload" SkinID="Play" />
    </asp:View>
    <asp:View runat="server">
        <asp:ImageButton ID="ImgDisableAutoReload" OnCommand="ImgAutoReloadState_Command"
            CommandName="Pause" runat="server" meta:resourceKey="ImgDisableAutoReload" SkinID="Pause" />
    </asp:View>
</asp:MultiView>
<asp:ImageButton ID="imgbtnRefresh" runat="server" meta:resourceKey="imgbtnRefresh"
    SkinID="AutoRefresh" />
