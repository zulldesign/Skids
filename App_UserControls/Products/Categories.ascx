<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Categories.ascx.cs"
    Inherits="Magelia.WebStore.Admin.App_UserControls.Products.Categories" %>
<div>
    <script type="text/javascript">
        $(document).ready(
            function(){
                if(<%= (!this.CanEdit).ToString().ToLowerInvariant() %>){
                   $('#<%= this.tvCategories.ClientID %> :checkbox').live({click:function(){return false;}});
            }   
        );
    </script>
    <fieldset class="categories">
        <legend>
            <asp:Literal ID="litCategories" runat="server" meta:resourcekey="litCategories" />
        </legend>
        <asp:TreeView ID="tvCategories" runat="server" ShowCheckBoxes="All" OnTreeNodePopulate="tvCategories_TreeNodePopulate"
            ShowLines="true" OnTreeNodeCheckChanged="tvCategories_TreeNodeCheckChanged" EnableClientScript="true" />
    </fieldset>
</div>
