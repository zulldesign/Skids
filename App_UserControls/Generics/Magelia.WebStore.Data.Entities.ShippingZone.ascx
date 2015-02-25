<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Magelia.WebStore.Data.Entities.ShippingZone.ascx.cs" Inherits="Magelia.WebStore.Admin.App_UserControls.Generics.Magelia_WebStore_Data_Entities_ShippingZone" %>
<script type="text/javascript">
    Sys.Application.add_load(function () {
        $('#<%=tbxShippingZone.ClientID %>').combobox({
            webServiceMethodName: Magelia.WebStore.Admin.Scripts.Services.AutoCompleteServices.GetShippingZonesFull,
            additionalWebServiceParameter: [],
            objectIdGetter: 'ShippingZoneId',
            labelGetter : 'Code',
            valueGetter : 'Code',
            hiddenField: $('#<%=hfShippingZoneId.ClientID %>')
        });
    });                                                                            
</script>
<asp:TextBox runat="server" ID="tbxShippingZone" OnTextChanged="tbxShippingZone_TextChanged" />
<asp:HiddenField runat="server" ID="hfShippingZoneId" />
<asp:RequiredFieldValidator runat="server" ControlToValidate="tbxShippingZone" meta:resourceKey="rfvShippingZone" ID="rfvShippingZone" />
