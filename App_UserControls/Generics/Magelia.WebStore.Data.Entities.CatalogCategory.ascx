<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Magelia.WebStore.Data.Entities.CatalogCategory.ascx.cs" Inherits="Magelia.WebStore.Admin.App_UserControls.Generics.Magelia_WebStore_Data_Entities_CatalogCategory" %>
<script type="text/javascript">
    Sys.Application.add_load(function () {
        $('#<%=tbxCategory.ClientID %>').combobox({
            webServiceMethodName: Magelia.WebStore.Admin.Scripts.Services.AutoCompleteServices.GetCategoriesFull,
            additionalWebServiceParameter: ['<%=this.Page.UnitOfWorkContext.StoreId.ToString() %>'],
            objectIdGetter: 'CategoryId',
            labelGetter: function (o) { return o.CatalogCode + ' > ' + o.CategoryCode },
            valueGetter: function (o) { return o.CatalogCode + ' > ' + o.CategoryCode },
            hiddenField: $('#<%=hfCategoryId.ClientID %>')
        });
    });
</script>
<asp:TextBox runat="server" ID="tbxCategory" OnTextChanged="tbxCategory_TextChanged" />
<asp:HiddenField runat="server" ID="hfCategoryId" />
<asp:RequiredFieldValidator runat="server" ControlToValidate="tbxCategory" meta:resourceKey="rfvCategory" ID="rfvCategory" />