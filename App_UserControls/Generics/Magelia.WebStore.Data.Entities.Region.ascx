<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Magelia.WebStore.Data.Entities.Region.ascx.cs" Inherits="Magelia.WebStore.Admin.App_UserControls.Generics.Magelia_WebStore_Data_Entities_Region" %>
<script type="text/javascript">
    Sys.Application.add_load(function () {
        $('#<%=tbxRegion.ClientID %>').combobox({
            webServiceMethodName: Magelia.WebStore.Admin.Scripts.Services.AutoCompleteServices.GetRegionsFull,
            additionalWebServiceParameter: [<%=System.Threading.Thread.CurrentThread.CurrentUICulture.LCID %>],
            objectIdGetter: 'RegionId',
            labelGetter: function (o) { return o.CountryName + ' > ' + o.Name; },
            valueGetter: function (o) { return o.CountryName + ' > ' + o.Name; },
            hiddenField: $('#<%=hfRegionId.ClientID %>')
        });
    });                                                                            
</script>
<asp:TextBox runat="server" ID="tbxRegion" OnTextChanged="tbxRegion_TextChanged" />
<asp:HiddenField runat="server" ID="hfRegionId" />
<asp:RequiredFieldValidator runat="server" ControlToValidate="tbxRegion" meta:resourceKey="rfvRegion" ID="rfvRegion" />
