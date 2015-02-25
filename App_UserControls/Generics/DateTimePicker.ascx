<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="DateTimePicker.ascx.cs" Inherits="Magelia.WebStore.Admin.App_UserControls.Generics.DateTimePicker" %>
<%@ Register TagPrefix="mag" TagName="DatePicker" Src="~/App_UserControls/Generics/DatePicker.ascx" %>
<%@ Register TagPrefix="mag" TagName="TimePicker" Src="~/App_UserControls/Generics/TimePicker.ascx" %>

<mag:DatePicker ID="mdpCurrent" runat="server" OnSelectionChanged="mdpCurrent_SelectedDateChanged" />
<mag:TimePicker ID="mtpCurrent" runat="server" OnSelectionChanged="mtpCurrent_SelectedTimeChanged" />
