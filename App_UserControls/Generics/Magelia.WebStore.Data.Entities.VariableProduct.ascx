<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Magelia.WebStore.Data.Entities.VariableProduct.ascx.cs" Inherits="Magelia.WebStore.Admin.App_UserControls.Generics.Magelia_WebStore_Data_Entities_VariableProduct" %>
<%@ Register TagPrefix="mag" TagName="gridview" Src="~/App_UserControls/Generics/Gridview.ascx" %>
<script type="text/javascript">
    Sys.Application.add_load(function () {
        $('#<%=tbxVariableProduct.ClientID %>').combobox({
            webServiceMethodName: Magelia.WebStore.Admin.Scripts.Services.AutoCompleteServices.GetVariableProductsFull,
            additionalWebServiceParameter: [<%=System.Threading.Thread.CurrentThread.CurrentUICulture.LCID %>],
            objectIdGetter: 'ProductId',
            labelGetter: 'Name',
            valueGetter: 'Name',
            hiddenField: $('#<%=hfVariableProductId.ClientID %>')
        });
    });
</script>
<asp:TextBox runat="server" ID="tbxVariableProduct" OnTextChanged="tbxVariableProduct_TextChanged" />
<asp:HiddenField runat="server" ID="hfVariableProductId" />
<asp:RequiredFieldValidator runat="server" ControlToValidate="tbxVariableProduct" meta:resourceKey="rfvVariableProduct" ID="rfvVariableProduct" />
