<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Magelia.WebStore.Data.Entities.TaxZone.ascx.cs" Inherits="Magelia.WebStore.Admin.App_UserControls.Generics.Magelia_WebStore_Data_Entities_TaxZone" %>
<script type="text/javascript">
    Sys.Application.add_load(function () {
        $('#<%=tbxTaxZone.ClientID %>').combobox({
            webServiceMethodName: Magelia.WebStore.Admin.Scripts.Services.AutoCompleteServices.GetTaxZonesFull,
            additionalWebServiceParameter: [],
            objectIdGetter: 'TaxZoneId',
            labelGetter: 'Code',
            valueGetter: 'Code',
            hiddenField: $('#<%=hfTaxZoneId.ClientID %>')
        });
    });
</script>
<asp:TextBox runat="server" ID="tbxTaxZone" OnTextChanged="tbxTaxZone_TextChanged" />
<asp:HiddenField runat="server" ID="hfTaxZoneId" />
<asp:RequiredFieldValidator runat="server" ControlToValidate="tbxTaxZone" meta:resourceKey="rfvTaxZone" ID="rfvTaxZone" />
