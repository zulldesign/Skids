<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Magelia.WebStore.Data.Entities.Continent.ascx.cs" Inherits="Magelia.WebStore.Admin.App_UserControls.Generics.Magelia_WebStore_Data_Entities_Continent" %>
<script type="text/javascript">
    Sys.Application.add_load(function () {
        $('#<%=tbxContinent.ClientID %>').combobox({
            webServiceMethodName: Magelia.WebStore.Admin.Scripts.Services.AutoCompleteServices.GetContinentsFull,
            additionalWebServiceParameter: [<%=System.Threading.Thread.CurrentThread.CurrentUICulture.LCID %>],
            objectIdGetter: 'ContinentId',
            labelGetter : 'Name',
            valueGetter : 'Name',
            hiddenField: $('#<%=hfContinentId.ClientID %>')
        });
    });
</script>
<asp:TextBox runat="server" ID="tbxContinent" OnTextChanged="tbxContinent_TextChanged" />
<asp:HiddenField runat="server" ID="hfContinentId" />
<asp:RequiredFieldValidator runat="server" ControlToValidate="tbxContinent" meta:resourceKey="rfvContinent" ID="rfvContinent" />
