<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Magelia.WebStore.Data.Entities.StandardProduct.ascx.cs" Inherits="Magelia.WebStore.Admin.App_UserControls.Generics.Magelia_WebStore_Data_Entities_StandardProduct" %>
<%@ Register TagPrefix="mag" TagName="gridview" Src="~/App_UserControls/Generics/Gridview.ascx" %>
<script type="text/javascript">
    Sys.Application.add_load(
        function () {
            $('#<%=tbxStandardProduct.ClientID %>').combobox(
                {
                    webServiceMethodName: Magelia.WebStore.Admin.Scripts.Services.AutoCompleteServices.GetStandardProductsFull,
                    additionalWebServiceParameter: [<%=System.Threading.Thread.CurrentThread.CurrentUICulture.LCID %>],
                    objectIdGetter: 'ProductId',
                    labelGetter: function (o) { return o.Sku + ' - ' + o.Name },
                    valueGetter: function (o) { return o.Sku + ' - ' + o.Name },
                    hiddenField: $('#<%=hfStandardProductId.ClientID %>')
                }
            );
        }
    );
</script>
<asp:TextBox runat="server" ID="tbxStandardProduct" OnTextChanged="tbxStandardProduct_TextChanged" />
<asp:HiddenField runat="server" ID="hfStandardProductId" />
<asp:RequiredFieldValidator runat="server" ControlToValidate="tbxStandardProduct" meta:resourceKey="rfvStandardProduct" ID="rfvStandardProduct" />