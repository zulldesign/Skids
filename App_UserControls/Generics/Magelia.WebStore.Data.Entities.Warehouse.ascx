<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Magelia.WebStore.Data.Entities.Warehouse.ascx.cs" Inherits="Magelia.WebStore.Admin.App_UserControls.Generics.Magelia_WebStore_Data_Entities_Warehouse" %>
<script type="text/javascript">
    Sys.Application.add_load(function () {
        $('#<%=tbxWarehouse.ClientID %>').combobox({
            webServiceMethodName: Magelia.WebStore.Admin.Scripts.Services.AutoCompleteServices.GetWarehousesFull,
            additionalWebServiceParameter: [],
            objectIdGetter: 'WarehouseId',
            labelGetter: 'Code',
            valueGetter: 'Code',
            hiddenField: $('#<%=hfWarehouseId.ClientID %>')
        });
    });
</script>
<asp:TextBox runat="server" ID="tbxWarehouse" OnTextChanged="tbxWarehouse_TextChanged" />
<asp:HiddenField runat="server" ID="hfWarehouseId" />
<asp:RequiredFieldValidator runat="server" ControlToValidate="tbxWarehouse" meta:resourceKey="rfvWarehouse" ID="rfvWarehouse" />