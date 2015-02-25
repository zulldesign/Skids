<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Magelia.WebStore.Data.Entities.Brand.ascx.cs" Inherits="Magelia.WebStore.Admin.App_UserControls.Generics.Magelia_WebStore_Data_Entities_Brand" %>
<script type="text/javascript">
    Sys.Application.add_load(function () {
        $('#<%=tbxBrand.ClientID %>').combobox({
            webServiceMethodName: Magelia.WebStore.Admin.Scripts.Services.AutoCompleteServices.GetBrandsFull,
            additionalWebServiceParameter: [],
            objectIdGetter: 'BrandId',
            labelGetter : 'Code',
            valueGetter : 'Code',
            hiddenField: $('#<%=hfBrandId.ClientID %>')
        });
    });                                                                            
</script>
<asp:TextBox runat="server" ID="tbxBrand" OnTextChanged="tbxBrand_TextChanged" />
<asp:HiddenField runat="server" ID="hfBrandId" />
<asp:RequiredFieldValidator runat="server" ControlToValidate="tbxBrand" meta:resourceKey="rfvBrand" ID="rfvBrand" />
