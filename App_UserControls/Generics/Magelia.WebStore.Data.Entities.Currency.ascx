<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Magelia.WebStore.Data.Entities.Currency.ascx.cs" Inherits="Magelia.WebStore.Admin.App_UserControls.Generics.Magelia_WebStore_Data_Entities_Currency" %>
<script type="text/javascript">
    Sys.Application.add_load(function () {
        $('#<%=tbxCurrency.ClientID %>').combobox({
            webServiceMethodName: Magelia.WebStore.Admin.Scripts.Services.AutoCompleteServices.GetCurrenciesFull,
            additionalWebServiceParameter: [<%=System.Threading.Thread.CurrentThread.CurrentUICulture.LCID %>],
            objectIdGetter: 'CurrencyId',
            labelGetter : 'Name',
            valueGetter : 'Name',
            hiddenField: $('#<%=hfCurrencyId.ClientID %>')
        });
    });
</script>
<asp:TextBox runat="server" ID="tbxCurrency" OnTextChanged="tbxCurrency_TextChanged" />
<asp:HiddenField runat="server" ID="hfCurrencyId" />
<asp:RequiredFieldValidator runat="server" ControlToValidate="tbxCurrency" meta:resourceKey="rfvCurrency" ID="rfvCurrency" />
