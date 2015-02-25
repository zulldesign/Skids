<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Magelia.WebStore.Data.Entities.Catalog.ascx.cs" Inherits="Magelia.WebStore.Admin.App_UserControls.Generics.Magelia_WebStore_Data_Entities_Catalog" %>
<script type="text/javascript">
    Sys.Application.add_load(function () {
        $('#<%=tbxCatalog.ClientID %>').combobox({
            webServiceMethodName: Magelia.WebStore.Admin.Scripts.Services.AutoCompleteServices.GetCatalogsFull,
            additionalWebServiceParameter: ['<%=this.Page.UnitOfWorkContext.StoreId.ToString() %>'],
            objectIdGetter: 'CatalogId',
            labelGetter : 'Code',
            valueGetter : 'Code',
            hiddenField: $('#<%=hfCatalogId.ClientID %>')
        });
    });                                                                            
</script>
<asp:TextBox runat="server" ID="tbxCatalog" OnTextChanged="tbxCatalog_TextChanged" />
<asp:HiddenField runat="server" ID="hfCatalogId" />
<asp:RequiredFieldValidator runat="server" ControlToValidate="tbxCatalog" meta:resourceKey="rfvCatalog" ID="rfvCatalog" />
