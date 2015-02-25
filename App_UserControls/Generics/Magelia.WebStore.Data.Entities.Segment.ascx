<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Magelia.WebStore.Data.Entities.Segment.ascx.cs" Inherits="Magelia.WebStore.Admin.App_UserControls.Generics.Magelia_WebStore_Data_Entities_Segment" %>
<script type="text/javascript">
    Sys.Application.add_load(function () {
        $('#<%=tbxSegment.ClientID %>').combobox({
            webServiceMethodName: Magelia.WebStore.Admin.Scripts.Services.AutoCompleteServices.GetSegmentsFull,
            additionalWebServiceParameter: ['<%=this.Page.UnitOfWorkContext.StoreId.ToString() %>'],
            objectIdGetter: 'SegmentId',
            labelGetter : 'Code',
            valueGetter : 'Code',
            hiddenField: $('#<%=hfSegmentId.ClientID %>')
        });
    });                                                                            
</script>
<asp:TextBox runat="server" ID="tbxSegment" OnTextChanged="tbxSegment_TextChanged" />
<asp:HiddenField runat="server" ID="hfSegmentId" />
<asp:RequiredFieldValidator runat="server" ControlToValidate="tbxSegment" meta:resourceKey="rfvSegment" ID="rfvSegment" />
