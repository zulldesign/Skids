<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ProductDetail.ascx.cs" Inherits="Magelia.WebStore.Admin.App_UserControls.Generics.ProductDetail" %>
<span id="sProductDetail" runat="server" class="info productDetail" meta:resourcekey="sProductDetail"></span>
<script type="text/javascript">
    $('#<%= this.sProductDetail.ClientID %>').data('productId', '<%= this.ProductId.ToString() %>').data('culture', <%= System.Threading.Thread.CurrentThread.CurrentUICulture.LCID %>);
</script>
