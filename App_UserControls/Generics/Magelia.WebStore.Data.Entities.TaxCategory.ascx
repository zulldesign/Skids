<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Magelia.WebStore.Data.Entities.TaxCategory.ascx.cs" Inherits="Magelia.WebStore.Admin.App_UserControls.Generics.Magelia_WebStore_Data_Entities_TaxCategory" %>
<script type="text/javascript">
    Sys.Application.add_load(function () {
        $('#<%=tbxTaxCategory.ClientID %>').combobox({
            webServiceMethodName: Magelia.WebStore.Admin.Scripts.Services.AutoCompleteServices.GetTaxCategoriesFull,
            additionalWebServiceParameter: [],
            objectIdGetter: 'TaxCategoryId',
            labelGetter: 'Code',
            valueGetter: 'Code',
            hiddenField: $('#<%=hfTaxCategoryId.ClientID %>')
        });
    });
</script>
<asp:TextBox runat="server" ID="tbxTaxCategory" OnTextChanged="tbxTaxCategory_TextChanged" />
<asp:HiddenField runat="server" ID="hfTaxCategoryId" />
<asp:RequiredFieldValidator runat="server" ControlToValidate="tbxTaxCategory" meta:resourceKey="rfvTaxCategory" ID="rfvTaxCategory" />
