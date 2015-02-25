<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Magelia.WebStore.Data.Entities.Carrier.ascx.cs" Inherits="Magelia.WebStore.Admin.App_UserControls.Generics.Magelia_WebStore_Data_Entities_Carrier" %>
<script type="text/javascript">
    Sys.Application.add_load(function () {
        $('#<%=tbxCarrier.ClientID %>').combobox({
            webServiceMethodName: Magelia.WebStore.Admin.Scripts.Services.AutoCompleteServices.GetCarriersFull,
            additionalWebServiceParameter: [],
            objectIdGetter: 'CarrierId',
            labelGetter : 'Code',
            valueGetter : 'Code',
            hiddenField: $('#<%=hfCarrierId.ClientID %>')
        });
    });                                                                            
</script>
<asp:TextBox runat="server" ID="tbxCarrier" OnTextChanged="tbxCarrier_TextChanged" />
<asp:HiddenField runat="server" ID="hfCarrierId" />
<asp:RequiredFieldValidator runat="server" ControlToValidate="tbxCarrier" meta:resourceKey="rfvCarrier" ID="rfvCarrier" />
