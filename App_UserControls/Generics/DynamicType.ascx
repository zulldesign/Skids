<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="DynamicType.ascx.cs" Inherits="Magelia.WebStore.Admin.App_UserControls.Generics.DynamicTypeUserControl" %>
<script type="text/javascript">
    Sys.Application.add_load(function () {
        $('#<%=tbxContentItem.ClientID %>').combobox({
            webServiceMethodName: Magelia.WebStore.Admin.Scripts.Services.AutoCompleteServices.GetContentItemsFull,
            additionalWebServiceParameter: ['<%=this.Page.UnitOfWorkContext.StoreId.ToString() %>', '<%=this.ContentTypeId.ToString() %>'],
            objectIdGetter: 'ContentItemId',
            labelGetter: 'Code',
            valueGetter: 'Code',
            hiddenField: $('#<%=hfContentItemId.ClientID %>')
        });
    });                                                                            
</script>
<asp:TextBox runat="server" ID="tbxContentItem" OnTextChanged="tbxContentItem_TextChanged" />
<asp:HiddenField runat="server" ID="hfContentItemId" />
<asp:RequiredFieldValidator runat="server" ControlToValidate="tbxContentItem" meta:resourceKey="rfvContentItem" ID="rfvContentItem" />
