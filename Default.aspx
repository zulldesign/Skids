<%@ Page Title="" Language="C#" MasterPageFile="~/App_Masters/DefaultLayout.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Magelia.WebStore.Admin.Default_Page" %>

<%@ Register TagPrefix="mag" Src="~/App_UserControls/Synthesis/TopProducts.ascx" TagName="TopProducts" %>
<%@ Register TagPrefix="mag" Src="~/App_UserControls/Synthesis/Sales.ascx" TagName="Sales" %>
<%@ Register TagPrefix="mag" Src="~/App_UserControls/Synthesis/SalesGraph.ascx" TagName="SalesGraph" %>
<%@ Register TagPrefix="mag" Src="~/App_UserControls/Synthesis/SalesSummary.ascx" TagName="SalesSummary" %>
<asp:Content ContentPlaceHolderID="cphBarTitle" runat="server">
    <asp:Literal ID="litDashboard" runat="server" meta:resourcekey="litDashboard" />
</asp:Content>
<asp:Content ContentPlaceHolderID="cphBody" runat="server">
    <asp:ScriptManagerProxy runat="server">
        <CompositeScript>
            <Scripts>
                <asp:ScriptReference Path="~/Scripts/Pages/Default.aspx.js" />
            </Scripts>
        </CompositeScript>
    </asp:ScriptManagerProxy>
    <div id="bDashboard">
        <div>
            <mag:SalesGraph runat="server" />
            <mag:SalesSummary runat="server" />
        </div>
        <div>
            <mag:Sales runat="server" />
            <mag:TopProducts runat="server" />
        </div>
    </div>
    <div id="bAfterSetupPopin" runat="server" class="popin afterSetup">
        <header>
            <h4>
                <asp:Literal ID="litCongratulations" runat="server" meta:resourcekey="litCongratulations" />
            </h4>
        </header>
        <div>
            <iframe id="ifAfterSetup" runat="server" frameborder="0" />
        </div>
    </div>
</asp:Content>
