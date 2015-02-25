<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SalesSummary.ascx.cs"
    Inherits="Magelia.WebStore.Admin.App_UserControls.Synthesis.SalesSummary" %>
<fieldset class="sales-summary">
    <legend>
        <asp:Literal runat="server" meta:resourceKey="litSalesSummaryLegend" />
    </legend>
    <asp:UpdatePanel runat="server" UpdateMode="Conditional">
        <ContentTemplate>
            <asp:MultiView runat="server" ID="mvSummary" ActiveViewIndex="0">
                <asp:View runat="server">
                    <div class="buttons">
                        <ul>
                            <li>
                                <asp:LinkButton ID="lbtnView" runat="server" OnClick="lbtnView_Click" meta:resourcekey="lbtnView"
                                    SkinID="Major" />
                            </li>
                        </ul>
                    </div>
                </asp:View>
                <asp:View runat="server">
                    <div class="form">
                        <mag:DynamicControl runat="server" ID="dcFilter" OnModelChanged="dcFilter_ModelChanged" />
                    </div>
                    <mag:Gridview ID="mgvSalesSummary" runat="server" AllowPaging="false" ShowSelectionColumn="false">
                        <columns>
                            <mag:GridViewColumn runat="server" CssClass="left-align" meta:resourceKey="mgvcPeriod">
                                <celltemplate>
                                    <%#Eval("Period") %>
                                </celltemplate>
                            </mag:GridViewColumn>
                            <mag:GridViewColumn runat="server" CssClass="numeric" meta:resourceKey="mgvcOrderCount">
                                <celltemplate>
                                    <%#Eval("OrderCount") %>
                                </celltemplate>
                            </mag:GridViewColumn>
                            <mag:GridViewColumn runat="server" CssClass="numeric" meta:resourceKey="mgvcSKUCount">
                                <celltemplate>
                                    <%#Eval("ProductCount") %>
                                </celltemplate>
                            </mag:GridViewColumn>
                            <mag:GridViewColumn runat="server" CssClass="numeric" meta:resourceKey="mgvcSalesSumExcludingTaxesPerCurrency">
                                <celltemplate>
                                    <asp:repeater runat="server" DataSource='<%#Eval("Sales") %>'>
                                        <HeaderTemplate><ul></HeaderTemplate>
                                        <ItemTemplate><li title='<%#Eval("Currency.Code") %>'><%#FormatPrice((Decimal)Eval("SumExcludingTaxes"), (String)Eval("Currency.Symbol"))%></li></ItemTemplate>
                                        <FooterTemplate></ul></FooterTemplate>
                                    </asp:repeater>
                                </celltemplate>
                            </mag:GridViewColumn>
                            <mag:GridViewColumn runat="server" CssClass="numeric" meta:resourceKey="mgvcSalesSumIncludingTaxesPerCurrency">
                                <celltemplate>
                                    <asp:repeater runat="server" DataSource='<%#Eval("Sales") %>'>
                                        <HeaderTemplate><ul></HeaderTemplate>
                                        <ItemTemplate><li title='<%#Eval("Currency.Code") %>'><%#FormatPrice((Decimal)Eval("SumIncludingTaxes"), (String)Eval("Currency.Symbol"))%></li></ItemTemplate>
                                        <FooterTemplate></ul></FooterTemplate>
                                    </asp:repeater>
                                </celltemplate>
                            </mag:GridViewColumn>
                        </columns>
                    </mag:Gridview>
                </asp:View>
            </asp:MultiView>
        </ContentTemplate>
    </asp:UpdatePanel>
</fieldset>
