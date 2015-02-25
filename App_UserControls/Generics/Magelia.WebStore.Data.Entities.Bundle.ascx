<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Magelia.WebStore.Data.Entities.Bundle.ascx.cs" Inherits="Magelia.WebStore.Admin.App_UserControls.Generics.Magelia_WebStore_Data_Entities_Bundle" %>
<%@ Register TagPrefix="mag" TagName="gridview" Src="~/App_UserControls/Generics/Gridview.ascx" %>
<script type="text/javascript">
    $Sys.Application.add_load(function () {
        $('#<%=tbxBundle.ClientID %>').combobox({
            webServiceMethodName: Magelia.WebStore.Admin.Scripts.Services.AutoCompleteServices.GetBundlesFull,
            additionalWebServiceParameter: [<%=System.Threading.Thread.CurrentThread.CurrentUICulture.LCID %>],
            objectIdGetter: 'ProductId',
            labelGetter: function (o) { return o.Sku + ' - ' + o.Name },
            valueGetter: function (o) { return o.Sku + ' - ' + o.Name },
            hiddenField: $('#<%=hfBundleId.ClientID %>')
        });
    });                                                                            
</script>
<asp:TextBox runat="server" ID="tbxBundle" OnTextChanged="tbxBundle_TextChanged" />
<asp:HiddenField runat="server" ID="hfBundleId" />
<asp:RequiredFieldValidator runat="server" ControlToValidate="tbxBundle" meta:resourceKey="rfvBundle" ID="rfvBundle" />
