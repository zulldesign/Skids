<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Magelia.WebStore.Data.Entities.TaxType.ascx.cs" Inherits="Magelia.WebStore.Admin.App_UserControls.Generics.Magelia_WebStore_Data_Entities_TaxType" %>
<script type="text/javascript">
    Sys.Application.add_load(function () {
        $('#<%=tbxTaxType.ClientID %>').combobox({
            webServiceMethodName: Magelia.WebStore.Admin.Scripts.Services.AutoCompleteServices.GetTaxTypesFull,
            additionalWebServiceParameter: [],
            objectIdGetter: 'TaxTypeId',
            labelGetter: 'Code',
            valueGetter: 'Code',
            hiddenField: $('#<%=hfTaxTypeId.ClientID %>')
        });
    });
</script>
<asp:TextBox runat="server" ID="tbxTaxType" OnTextChanged="tbxTaxType_TextChanged" />
<asp:HiddenField runat="server" ID="hfTaxTypeId" />
<asp:RequiredFieldValidator runat="server" ControlToValidate="tbxTaxType" meta:resourceKey="rfvTaxType" ID="rfvTaxType" />
