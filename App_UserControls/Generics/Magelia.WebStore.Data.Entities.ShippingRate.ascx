<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Magelia.WebStore.Data.Entities.ShippingRate.ascx.cs" Inherits="Magelia.WebStore.Admin.App_UserControls.Generics.Magelia_WebStore_Data_Entities_ShippingRate" %>
<script type="text/javascript">
    Sys.Application.add_load(function () {
        $('#<%=tbxShippingRate.ClientID %>').combobox({
            webServiceMethodName: Magelia.WebStore.Admin.Scripts.Services.AutoCompleteServices.GetShippingRatesFull,
            additionalWebServiceParameter: [],
            objectIdGetter: 'ShippingRateId',
            labelGetter : 'Code',
            valueGetter : 'Code',
            hiddenField: $('#<%=hfShippingRateId.ClientID %>')
        });
    });                                                                            
</script>
<asp:TextBox runat="server" ID="tbxShippingRate" OnTextChanged="tbxShippingRate_TextChanged" />
<asp:HiddenField runat="server" ID="hfShippingRateId" />
<asp:RequiredFieldValidator runat="server" ControlToValidate="tbxShippingRate" meta:resourceKey="rfvShippingRate" ID="rfvShippingRate" />
