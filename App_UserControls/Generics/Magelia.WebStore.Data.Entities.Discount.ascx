<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Magelia.WebStore.Data.Entities.Discount.ascx.cs" Inherits="Magelia.WebStore.Admin.App_UserControls.Generics.Magelia_WebStore_Data_Entities_Discount" %>
<script type="text/javascript">
    Sys.Application.add_load(function () {
        $('#<%=tbxDiscount.ClientID %>').combobox({
            webServiceMethodName: Magelia.WebStore.Admin.Scripts.Services.AutoCompleteServices.GetDiscountsFull,
            additionalWebServiceParameter: ['<%=this.Page.UnitOfWorkContext.StoreId.ToString() %>'],
            objectIdGetter: 'DiscountId',
            labelGetter : 'Code',
            valueGetter: 'Code',
            hiddenField: $('#<%=hfDiscountId.ClientID %>')
        });
    });
</script>
<asp:TextBox runat="server" ID="tbxDiscount" OnTextChanged="tbxDiscount_TextChanged" />
<asp:HiddenField runat="server" ID="hfDiscountId" />
<asp:RequiredFieldValidator runat="server" ControlToValidate="tbxDiscount" meta:resourceKey="rfvDiscount" ID="rfvDiscount" />
