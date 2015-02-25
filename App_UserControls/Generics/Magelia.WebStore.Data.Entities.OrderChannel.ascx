<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Magelia.WebStore.Data.Entities.OrderChannel.ascx.cs" Inherits="Magelia.WebStore.Admin.App_UserControls.Generics.Magelia_WebStore_Data_Entities_OrderChannel" %>
<script type="text/javascript">
    Sys.Application.add_load(function () {
        $('#<%=tbxOrderChannel.ClientID %>').combobox({
            webServiceMethodName: Magelia.WebStore.Admin.Scripts.Services.AutoCompleteServices.GetOrderChannelsFull,
            additionalWebServiceParameter: ['<%=this.Page.UnitOfWorkContext.StoreId.ToString() %>'],
            objectIdGetter: 'OrderChannelId',
            labelGetter: 'Code',
            valueGetter: 'Code',
            hiddenField: $('#<%=hfOrderChannelId.ClientID %>')
        });
    });                                                                            
</script>
<asp:TextBox runat="server" ID="tbxOrderChannel" OnTextChanged="tbxOrderChannel_TextChanged" />
<asp:HiddenField runat="server" ID="hfOrderChannelId" />
<asp:RequiredFieldValidator runat="server" ControlToValidate="tbxOrderChannel" meta:resourceKey="rfvOrderChannel" ID="rfvOrderChannel" />
