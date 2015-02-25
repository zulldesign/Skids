<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SalesGraph.ascx.cs" Inherits="Magelia.WebStore.Admin.App_UserControls.Synthesis.SalesGraph" %>

<fieldset class="sales-graph">
    <legend>
        <asp:Literal runat="server" meta:resourceKey="litSalesGraphLegend" />
    </legend>
    <div class="form">
        <mag:DynamicControl runat="server" ID="dcFilter" OnModelChanged="dcFilter_ModelChanged" />
    </div>
    <asp:Chart ID="cSales" runat="server" Height="250px" Width="400px"
        Palette="SemiTransparent" BorderlineColor="Black" BorderlineDashStyle="Solid"
        TextAntiAliasingQuality="High" EnableViewState="true">
        <BorderSkin SkinStyle="None" BorderColor="Black" BorderWidth="1"></BorderSkin>
        <Titles>
            <asp:Title meta:resourceKey="tSales" />
        </Titles>
        <ChartAreas>
            <asp:ChartArea Name="caSales1" BorderColor="64, 64, 64, 64" BackSecondaryColor="White" BackColor="WhiteSmoke" ShadowColor="Transparent">
                <AxisY LineColor="64, 64, 64, 64">
                    <LabelStyle Font="Trebuchet MS, 8.25pt, style=Bold" />
                    <MajorGrid LineColor="64, 64, 64, 64" />
                </AxisY>
                <AxisX LineColor="64, 64, 64, 64" IsMarginVisible="false">
                    <LabelStyle Font="Trebuchet MS, 8.25pt, style=Bold" />
                    <MajorGrid LineColor="64, 64, 64, 64" />
                </AxisX>
            </asp:ChartArea>
        </ChartAreas>
    </asp:Chart>
</fieldset>
