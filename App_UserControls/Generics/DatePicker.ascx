<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="DatePicker.ascx.cs" Inherits="Magelia.WebStore.Admin.App_UserControls.Generics.DatePicker" %>

<div class="date-picker">
    <div>
        <asp:TextBox ID="tbxDate" runat="server" CssClass="numeric" AutoPostBack="true" OnTextChanged="tbxDate_TextChanged" />
        <asp:ImageButton ID="imgbtnToggleSelector" runat="server" SkinID="Calendar" CssClass="calendarTrigger" OnClick="imgbtnToggleSelector_Click" />
    </div>
    <div id="bSelector" runat="server" visible="false" class="selector ctx-brd">
        <div class="top">
            <asp:LinkButton ID="lbtnPreviousMonth" runat="server" OnClick="lbtnPreviousMonth_Click" Text="&lt;" />
            <asp:DropDownList ID="ddlMonths" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlMonths_SelectedIndexChanged" />
            <asp:DropDownList ID="ddlYears" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlYears_SelectedIndexChanged" />
            <asp:LinkButton ID="lbtnNextMonth" runat="server" OnClick="lbtnNextMonth_Click" Text="&gt;" />
        </div>
        <asp:Calendar ID="cldSelector" runat="server" OnSelectionChanged="cldSelector_SelectionChanged"
            ShowTitle="false" OtherMonthDayStyle-CssClass="otherMonth" BorderWidth="0" TodayDayStyle-CssClass="today" />
    </div>
</div>
