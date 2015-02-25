<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Magelia.WebStore.Data.Entities.PaymentMode.ascx.cs" Inherits="Magelia.WebStore.Admin.App_UserControls.Generics.Magelia_WebStore_Data_Entities_PaymentMode" %>
<script type="text/javascript">
    Sys.Application.add_load(function () {
        $('#<%=tbxPaymentMode.ClientID %>').combobox({
            webServiceMethodName: Magelia.WebStore.Admin.Scripts.Services.AutoCompleteServices.GetPaymentModesFull,
            additionalWebServiceParameter: ['<%=this.Page.UnitOfWorkContext.StoreId.ToString() %>'],
            objectIdGetter: 'PaymentModeId',
            labelGetter : 'Code',
            valueGetter : 'Code',
            hiddenField: $('#<%=hfPaymentModeId.ClientID %>')
        });
    });                                                                            
</script>
<asp:TextBox runat="server" ID="tbxPaymentMode" OnTextChanged="tbxPaymentMode_TextChanged" />
<asp:HiddenField runat="server" ID="hfPaymentModeId" />
<asp:RequiredFieldValidator runat="server" ControlToValidate="tbxPaymentMode" meta:resourceKey="rfvPaymentMode" ID="rfvPaymentMode" />
