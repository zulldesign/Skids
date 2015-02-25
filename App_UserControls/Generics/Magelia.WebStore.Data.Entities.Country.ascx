<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Magelia.WebStore.Data.Entities.Country.ascx.cs" Inherits="Magelia.WebStore.Admin.App_UserControls.Generics.Magelia_WebStore_Data_Entities_Country" %>
<script type="text/javascript">
    Sys.Application.add_load(function () {
        $('#<%=tbxCountry.ClientID %>').combobox({
            webServiceMethodName: Magelia.WebStore.Admin.Scripts.Services.AutoCompleteServices.GetCountriesFull,
            additionalWebServiceParameter: [<%=System.Threading.Thread.CurrentThread.CurrentUICulture.LCID %>],
            objectIdGetter: 'CountryId',
            labelGetter : 'Name',
            valueGetter : 'Name',
            hiddenField: $('#<%=hfCountryId.ClientID %>')
        });
    });                                                                            

</script>
<asp:TextBox runat="server" ID="tbxCountry" OnTextChanged="tbxCountry_TextChanged" />
<asp:HiddenField runat="server" ID="hfCountryId" />
<asp:RequiredFieldValidator runat="server" ControlToValidate="tbxCountry" meta:resourceKey="rfvCountry" ID="rfvCountry" />
