<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Magelia.WebStore.Data.Entities.Supplier.ascx.cs" Inherits="Magelia.WebStore.Admin.App_UserControls.Generics.Magelia_WebStore_Data_Entities_Supplier" %>
<script type="text/javascript">
    Sys.Application.add_load(function () {
        $('#<%=tbxSupplier.ClientID %>').combobox({
            webServiceMethodName: Magelia.WebStore.Admin.Scripts.Services.AutoCompleteServices.GetSuppliersFull,
            additionalWebServiceParameter: [],
            objectIdGetter: 'SupplierId',
            labelGetter: 'Code',
            valueGetter: 'Code',
            hiddenField: $('#<%=hfSupplierId.ClientID %>')
        });
    });                                                                            
</script>
<asp:TextBox runat="server" ID="tbxSupplier" OnTextChanged="tbxSupplier_TextChanged" />
<asp:HiddenField runat="server" ID="hfSupplierId" />
<asp:RequiredFieldValidator runat="server" ControlToValidate="tbxSupplier" meta:resourceKey="rfvSupplier" ID="rfvSupplier" />
