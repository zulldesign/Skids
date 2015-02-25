<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Magelia.WebStore.Data.Entities.Variant.ascx.cs" Inherits="Magelia.WebStore.Admin.App_UserControls.Generics.Magelia_WebStore_Data_Entities_Variant" %>
<%@ Register TagPrefix="mag" TagName="gridview" Src="~/App_UserControls/Generics/Gridview.ascx" %>
<script type="text/javascript">
    Sys.Application.add_load(function () {
        $('#<%=tbxVariant.ClientID %>').combobox({
            webServiceMethodName: Magelia.WebStore.Admin.Scripts.Services.AutoCompleteServices.GetVariantsFull,
            additionalWebServiceParameter: [<%=System.Threading.Thread.CurrentThread.CurrentUICulture.LCID %>],
            objectIdGetter: 'ProductId',
            labelGetter: function (o) { return o.Sku + ' - ' + o.Name },
            valueGetter: function (o) { return o.Sku + ' - ' + o.Name },
            hiddenField: $('#<%=hfVariantId.ClientID %>')
        });
    });
</script>
<asp:TextBox runat="server" ID="tbxVariant" OnTextChanged="tbxVariant_TextChanged" />
<asp:HiddenField runat="server" ID="hfVariantId" />
<asp:RequiredFieldValidator runat="server" ControlToValidate="tbxVariant" meta:resourceKey="rfvVariant" ID="rfvVariant" />
