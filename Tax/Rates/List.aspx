<%@ Page Title="" Language="C#" MasterPageFile="~/App_Masters/DefaultLayout.Master"
    AutoEventWireup="true" CodeBehind="List.aspx.cs" Inherits="Magelia.WebStore.Admin.Tax.Rates.List" %>

<asp:Content ContentPlaceHolderID="cphBarTitle" runat="server">
    <asp:Literal ID="litTaxRates" runat="server" meta:resourcekey="litTaxRates" />
</asp:Content>
<asp:Content ContentPlaceHolderID="cphBarContent" runat="server">
    <ul>
        <li>
            <asp:LinkButton ID="lbtnRefresh" runat="server" meta:resourcekey="lbtnRefresh" SkinID="Major"
                OnClick="lbtnRefresh_Click" />
        </li>
    </ul>
    <style type="text/css">
        .segment {
            display: none;
        }
    </style>
</asp:Content>
<asp:Content ContentPlaceHolderID="cphBody" runat="server">
    <asp:ScriptManagerProxy runat="server">
        <CompositeScript>
            <Scripts>
                <asp:ScriptReference Path="~/Scripts/Plugins/jquery.excelize.js" />
            </Scripts>
        </CompositeScript>
    </asp:ScriptManagerProxy>
    <mag:SearchPanel runat="server" DefaultButton="lbtnSearch">
        <div class="field">
            <asp:Label ID="lblTaxType" runat="server" meta:resourcekey="lblTaxType" AssociatedControlID="ddlTaxTypes" />
            <mag:DropDownList ID="ddlTaxTypes" runat="server" AppendDataBoundItems="true" DataTextField="Code" DataValueField="TaxTypeId">
                <asp:ListItem />
            </mag:DropDownList>
        </div>
        <div class="field">
            <asp:Label ID="lblTaxCategory" runat="server" meta:resourcekey="lblTaxCategory" AssociatedControlID="ddlTaxCategories" />
            <mag:DropDownList ID="ddlTaxCategories" runat="server" AppendDataBoundItems="true" DataTextField="Code" DataValueField="TaxCategoryId" GroupByTextField="TaxTypeCode" GroupByValueField="TaxTypeId" />
        </div>
        <div class="field">
            <asp:Label ID="lblOriginTaxZone" runat="server" meta:resourcekey="lblOriginTaxZone" AssociatedControlID="ddlOriginTaxZones" />
            <mag:DropDownList ID="ddlOriginTaxZones" runat="server" AppendDataBoundItems="true" DataTextField="Code" DataValueField="TaxZoneId" />
        </div>
        <div class="field">
            <asp:Label ID="lblDestinationTaxZone" runat="server" meta:resourcekey="lblDestinationTaxZone" AssociatedControlID="ddlDestinationTaxZones" />
            <mag:DropDownList ID="ddlDestinationTaxZones" runat="server" AppendDataBoundItems="false" DataTextField="Code" DataValueField="TaxZoneId" />
        </div>
        <div class="field segment">
            <asp:Label ID="lblSegment" runat="server" meta:resourcekey="lblSegment" AssociatedControlID="ddlSegments" />
            <mag:DropDownList ID="ddlSegments" runat="server" AppendDataBoundItems="false" DataTextField="Code" DataValueField="SegmentId" GroupByTextField="CustomerSetCode" />
        </div>
        <div class="field">
            <asp:Label ID="lblRate" runat="server" meta:resourcekey="lblRate" AssociatedControlID="ddlRateOperator" />
            <mag:DropDownList ID="ddlRateOperator" runat="server" CssClass="autoSize operator">
                <asp:ListItem Text="=" Value="=" />
                <asp:ListItem Text="!=" Value="!=" />
                <asp:ListItem Text="&lt;" Value="&lt;" />
                <asp:ListItem Text="&lt;=" Value="&lt;=" />
                <asp:ListItem Text="&gt;" Value="&gt;" />
                <asp:ListItem Text="&gt;=" Value="&gt;=" />
            </mag:DropDownList>
            <asp:TextBox ID="tbxRateSearch" runat="server" />
        </div>
        <div class="buttons">
            <ul>
                <li>
                    <asp:LinkButton ID="lbtnReset" runat="server" Text='<%$ resources:global, Reset %>' SkinID="Minor" OnClick="lbtnReset_Click" />
                </li>
                <li>
                    <asp:LinkButton ID="lbtnSearch" runat="server" Text='<%$ resources:global, Search %>' SkinID="Major" OnClick="lbtnSearch_Click" />
                </li>
            </ul>
        </div>
    </mag:SearchPanel>
    <script type="text/javascript">
        Type.registerNamespace('Magelia');
        Magelia.ResetFields = function (fields) {
            $(fields).each(
                function () {
                    $('#' + this.id).val(this.value);
                }
            );
        };
        $(document).ready(
            function () {
                var insertTable = $('table.insert');
                var insertRow = $('table.insert>tbody>tr');
                var editGridBody = $('table.gridView>tbody');
                if (editGridBody.length > 0) {
                    insertTable.remove();
                    insertRow.remove().addClass('odd');
                    editGridBody.prepend(insertRow);
                }
                else if (editGridBody.length == 0) {
                    $('div.gridViewContainer').remove();
                    insertTable.addClass('gridView').show();
                }
                if ($('fieldset.highlight *:focus').length == 0) {
                    $('#<%= this.ddlTaxCategoriesInsert.ClientID %>').focus();
                }
                $('table.gridView').excelize();
            }
            );
    </script>
    <mag:FeaturePanel runat="server" Level="CreateAndDelete">
        <asp:ValidationSummary runat="server" HeaderText="<%$ Resources:Global, ErrorMsgText %>" ValidationGroup="vgTaxRateInsert" />
        <table class="insert">
            <thead>
                <tr>
                    <th>
                        <asp:CheckBox runat="server" />
                    </th>
                    <th>
                        <asp:Literal ID="litTaxCategory" runat="server" meta:resourcekey="litTaxCategory" />
                    </th>
                    <th>
                        <asp:Literal ID="litOriginTaxZone" runat="server" meta:resourcekey="litOriginTaxZone" />
                    </th>
                    <th>
                        <asp:Literal ID="litDestinationTaxZone" runat="server" meta:resourcekey="litDestinationTaxZone" />
                    </th>
                    <th class="segment">
                        <asp:Literal ID="litSegment" runat="server" meta:resourcekey="litSegment" />
                    </th>
                    <th>
                        <asp:Literal ID="litRate" runat="server" meta:resourcekey="litRate" />
                    </th>
                    <th>
                        <asp:Literal runat="server" Text='<%$ resources:global, Action %>' />
                    </th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td></td>
                    <td>
                        <mag:DropDownList ID="ddlTaxCategoriesInsert" runat="server" AppendDataBoundItems="false" DataTextField="Code" DataValueField="TaxCategoryId" GroupByTextField="TaxTypeCode" GroupByValueField="TaxTypeId" />
                        <asp:RequiredFieldValidator ID="rfvTaxCategory" runat="server" ControlToValidate="ddlTaxCategoriesInsert" ValidationGroup="vgTaxRateInsert"
                            meta:resourcekey="rfvTaxCategory" />
                        <asp:CustomValidator ID="cvTaxRateIsUnique" runat="server" meta:resourcekey="cvTaxRateIsUnique" ControlToValidate="ddlTaxCategoriesInsert"
                            ValidationGroup="vgTaxRateInsert" OnServerValidate="cvTaxRateIsUnique_ServerValidate" />
                    </td>
                    <td>
                        <mag:DropDownList ID="ddlOriginTaxZonesInsert" runat="server" AppendDataBoundItems="false"
                            DataTextField="Code" DataValueField="TaxZoneId" />
                        <asp:CustomValidator ID="cvOriginIsRequiredIfDestinationUnspecified" runat="server"
                            meta:resourcekey="cvOriginIsRequiredIfDestinationUnspecified" ControlToValidate="ddlOriginTaxZonesInsert"
                            ValidationGroup="vgTaxRateInsert" OnServerValidate="cvOriginIsRequiredIfDestinationUnspecified_ServerValidate"
                            ValidateEmptyText="true" />
                    </td>
                    <td>
                        <mag:DropDownList ID="ddlDestinationTaxZoneInsert" runat="server" AppendDataBoundItems="false"
                            DataTextField="Code" DataValueField="TaxZoneId" />
                        <asp:CustomValidator ID="cvDestinationIsRequiredIfOriginUnspecified" runat="server"
                            meta:resourcekey="cvDestinationIsRequiredIfOriginUnspecified" ControlToValidate="ddlDestinationTaxZoneInsert"
                            ValidationGroup="vgTaxRateInsert" OnServerValidate="cvDestinationIsRequiredIfOriginUnspecified_ServerValidate"
                            ValidateEmptyText="true" />
                    </td>
                    <td class="segment">
                        <mag:DropDownList ID="ddlSegmentsInsert" runat="server" AppendDataBoundItems="false" DataTextField="Code" DataValueField="SegmentId" GroupByTextField="CustomerSetCode" />
                    </td>
                    <td>
                        <asp:TextBox ID="tbxRateInsert" runat="server" CssClass="numeric" />
                        <asp:RequiredFieldValidator ID="rfvRate" runat="server" ControlToValidate="tbxRateInsert"
                            ValidationGroup="vgTaxRateInsert" meta:resourcekey="rfvRate" />
                        <asp:CompareValidator ID="cvRateIsDecimal" runat="server" ControlToValidate="tbxRateInsert"
                            ValidationGroup="vgTaxRateInsert" Operator="DataTypeCheck" Type="Double" meta:resourcekey="cvRateIsDecimal" />
                        <asp:CompareValidator ID="cvReateGreaterThanZero" runat="server" ControlToValidate="tbxRateInsert"
                            ValidationGroup="vgTaxRateInsert" Operator="GreaterThanEqual" ValueToCompare="0"
                            Type="Double" meta:resourcekey="cvReateGreaterThanZero" />
                    </td>
                    <td>
                        <ul>
                            <li>
                                <asp:ImageButton ID="imgbtnInsert" runat="server" ValidationGroup="vgTaxRateInsert"
                                    SkinID="Add" ToolTip='<%$ resources:global,Add %>' OnClick="imgbtnInsert_Click" />
                            </li>
                        </ul>
                    </td>
                </tr>
            </tbody>
        </table>
    </mag:FeaturePanel>
    <mag:Gridview ID="mgvTaxRates" runat="server" AllowPaging="true" DataKeyNames="TaxRateId"
        OnCommand="mgvTaxRates_Command" ShowSelectionColumn="true">
        <commandbuttons>
                <mag:CommandButton runat="server" Text='<%$ resources:global, Delete %>' CommandName="DeleteTaxRates"
                    OnClientClick='<%$ resources:global, ClientClickConfirmDeletion %>' />
            </commandbuttons>
        <columns>
                <mag:GridViewColumn ID="mgvcTaxCategory" runat="server" AllowSorting="true" SortExpression="TaxCategoryCode"
                    meta:resourcekey="mgvcTaxCategory">
                    <celltemplate>
                    <asp:UpdatePanel  runat="server" UpdateMode="Conditional">
                        <ContentTemplate>
                            <mag:DropDownList ID="ddlTaxCategory" runat="server" Enabled='<%# this.CanEdit %>' AutoPostBack="true" OnSelectedIndexChanged="ddlTaxCategory_SelectedIndexChanged" DataSource='<%# this.TaxCategories %>' AppendDataBoundItems="false" CssClass="uptoDate" DataTextField="Code" DataValueField="TaxCategoryId" SelectedValue='<%# Eval("TaxCategoryId") %>' GroupByTextField="TaxTypeCode" GroupByValueField="TaxTypeId" />
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </celltemplate>
                </mag:GridViewColumn>
                <mag:GridViewColumn ID="mgvcOriginTaxZone" runat="server" AllowSorting="true" SortExpression="OriginTaxZoneCode"
                    meta:resourcekey="mgvcOriginTaxZone">
                    <celltemplate>
                        <asp:UpdatePanel runat="server" UpdateMode="Conditional">
                            <ContentTemplate>
                                <mag:DropDownList ID="ddlOriginTaxZone" runat="server" Enabled='<%# this.CanEdit %>' AutoPostBack="true" OnSelectedIndexChanged="ddlOriginTaxZone_SelectedIndexChanged" CssClass="uptoDate" DataSource='<%# this.TaxZones %>' SelectedValue='<%# Eval("OriginTaxZoneId") %>' AppendDataBoundItems="false" DataTextField="Code" DataValueField="TaxZoneId" />
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </celltemplate>
                </mag:GridViewColumn>
                <mag:GridViewColumn ID="mgvcDestinationTaxZone" runat="server" AllowSorting="true" SortExpression="DestinationTaxZoneCode" meta:resourcekey="mgvcDestinationTaxZone">
                    <celltemplate>
                        <asp:UpdatePanel runat="server" UpdateMode="Conditional">
                            <ContentTemplate>
                                <mag:DropDownList ID="ddlDestinationTaxZone" runat="server" Enabled='<%# this.CanEdit %>' AutoPostBack="true" OnSelectedIndexChanged="ddlDestinationTaxZone_SelectedIndexChanged" CssClass="uptoDate" DataSource='<%# this.TaxZones %>' SelectedValue='<%# Eval("DestinationTaxZoneId") %>' AppendDataBoundItems="false" DataTextField="Code" DataValueField="TaxZoneId" />
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </celltemplate>
                </mag:GridViewColumn>
                <mag:GridViewColumn ID="mgvcSegment" runat="server" AllowSorting="true" SortExpression="SegmentCode" meta:resourcekey="mgvcSegment" cssclass="segment" HeaderCssClass="segment">
                    <celltemplate>
                        <asp:UpdatePanel runat="server" UpdateMode="Conditional">
                            <ContentTemplate>
                                <mag:DropDownList ID="ddlSegment" runat="server" Enabled='<%# this.CanEdit %>' AutoPostBack="true" OnSelectedIndexChanged="ddlSegment_SelectedIndexChanged" CssClass="uptoDate" DataSource='<%# this.Segments %>' SelectedValue='<%# Eval("SegmentId") %>' AppendDataBoundItems="false" DataTextField="Code" DataValueField="SegmentId" GroupByTextField="CustomerSetCode" />
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </celltemplate>
                </mag:GridViewColumn>
                <mag:GridViewColumn ID="mgvcRate" runat="server" AllowSorting="true" SortExpression="Rate"
                    meta:resourcekey="mgvcRate">
                    <celltemplate>
                        <asp:UpdatePanel runat="server" UpdateMode="Conditional">
                            <ContentTemplate>
                                <asp:TextBox ID="tbxRate" runat="server" Enabled='<%# this.CanEdit %>' CssClass="uptoDate numeric" Text='<%# Eval("Rate") %>' AutoPostBack="true" OnTextChanged="tbxRate_TextChanged" />
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </celltemplate>
                </mag:GridViewColumn>
                <mag:GridViewColumn runat="server" AllowSorting="false" Name='<%$ resources:global, Action %>'>
                    <celltemplate>
                        <ul>
                            <li>
                                <asp:ImageButton runat="server" Enabled='<%# this.CanCreateAndDelete %>' CommandName="DeleteTaxRates" OnClientClick='<%$ resources:global, ClientClickConfirmDeletion %>' SkinID="Delete" ToolTip='<%$ resources:global,Delete %>'/>
                            </li>
                        </ul>
                    </celltemplate>
                </mag:GridViewColumn>
            </columns>
    </mag:Gridview>
</asp:Content>
