<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="AssociatedContentItems.ascx.cs" Inherits="Magelia.WebStore.Admin.App_UserControls.ContentTypes.AssociatedContentItems" %>
<%@ Register TagPrefix="mag" TagName="Unauthorized" Src="~/App_UserControls/Generics/Unauthorized.ascx" %>
<asp:MultiView ID="mvContentItems" runat="server">
    <asp:View ID="vUnauthorized" runat="server">
        <mag:Unauthorized runat="server" />
    </asp:View>
    <asp:View ID="vEmpty" runat="server">
        <p class="message warning">
            <asp:Literal ID="litNoContentTypeAvailable" runat="server" meta:resourcekey="litNoContentTypeAvailable" />
        </p>
    </asp:View>
    <asp:View ID="vContentItems" runat="server">
        <script type="text/javascript">
            $(document).ready(
                function () {
                    var bContentItems = $('#<%=this.bContentItems.ClientID%>');
                    $('.localized label:first-child', bContentItems).after($('<span class="localized" title="<%:this.CurrentEditCulture.DisplayName%>" style="background-image:url(<%:this.Page.ResolveUrl("~/App_themes/New/Images/Flags/" + (this.CurrentEditCulture.IsNeutralCulture ? this.CurrentEditCulture : this.CurrentEditCulture.Parent).Name + ".gif)")%>"></span>'));
                    bContentItems.find('div.left>div>div>div').each(
                        function () {
                            var container = $(this);
                            var lastLine = container.children('table').last();
                            if ($.trim(lastLine.find('a').last().text()) == '{new}') {
                                var parent = container.prev('table');
                                var cells = lastLine.find('td');
                                cells.eq(cells.length - 2).appendTo(parent.find('tbody>tr'));
                                lastLine.remove();
                            }
                        }
                    );
                }
            );
        </script>
        <div id="bContentItems" runat="server" class="contentItems form">
            <div class="left">
                <asp:TreeView ID="tvMenu" runat="server" SkinID="ContentTypes" OnSelectedNodeChanged="tvMenu_SelectedNodeChanged" />
            </div>
            <div class="right">
                <asp:MultiView runat="server" ID="mvGlobal">
                    <asp:View runat="server" ID="vListContentItems">
                        <mag:SearchPanel runat="server" DefaultButton="lbtnSearch">
                            <div class="field">
                                <asp:Label runat="server" AssociatedControlID="tbxCode" meta:resourcekey="lblCode" />
                                <asp:TextBox ID="tbxCode" runat="server" />
                            </div>
                            <div class="field">
                                <asp:Label runat="server" AssociatedControlID="tbxContent" meta:resourcekey="lblContent" />
                                <asp:TextBox ID="tbxContent" runat="server" />
                            </div>
                            <div class="field">
                                <asp:Label runat="server" AssociatedControlID="ddlStatus" meta:resourcekey="lblStatus" />
                                <asp:DropDownList runat="server" ID="ddlStatus">
                                    <asp:ListItem Selected="True" Text="" Value="" />
                                    <asp:ListItem Value="0" meta:resourceKey="liActive" />
                                    <asp:ListItem Value="1" meta:resourceKey="liDraft" />
                                    <asp:ListItem Value="2" meta:resourceKey="liWaitingApproval" />
                                    <asp:ListItem Value="3" meta:resourceKey="liRejected" />
                                    <asp:ListItem Value="4" meta:resourceKey="liArchived" />
                                </asp:DropDownList>
                            </div>
                            <div class="field">
                                <asp:Label runat="server" AssociatedControlID="tbxCreatorUserName" meta:resourcekey="lblCreatoreUserName" />
                                <asp:TextBox ID="tbxCreatorUserName" runat="server" />
                            </div>
                            <div class="field">
                                <asp:Label runat="server" AssociatedControlID="tbxLastModificatorUserName" meta:resourcekey="lblLastModificatorUserName" />
                                <asp:TextBox ID="tbxLastModificatorUserName" runat="server" />
                            </div>
                            <div class="field">
                                <asp:Label runat="server" AssociatedControlID="dpCreationDate" meta:resourcekey="lblCreationDate" />
                                <asp:DropDownList ID="ddlCreationDateOperator" runat="server" CssClass="autoSize operator">
                                    <asp:ListItem Text="=" Value="=" />
                                    <asp:ListItem Text="!=" Value="!=" />
                                    <asp:ListItem Text="&lt;" Value="&lt;" />
                                    <asp:ListItem Text="&lt;=" Value="&lt;=" />
                                    <asp:ListItem Text="&gt;" Value="&gt;" />
                                    <asp:ListItem Text="&gt;=" Value="&gt;=" />
                                </asp:DropDownList>
                                <mag:DatePicker ID="dpCreationDate" runat="server" />
                            </div>
                            <div class="field">
                                <asp:Label runat="server" AssociatedControlID="dpLastModificationDate" meta:resourcekey="lblLastModificationDate" />
                                <asp:DropDownList ID="ddlLastModificationDateOperator" runat="server" CssClass="autoSize operator">
                                    <asp:ListItem Text="=" Value="=" />
                                    <asp:ListItem Text="!=" Value="!=" />
                                    <asp:ListItem Text="&lt;" Value="&lt;" />
                                    <asp:ListItem Text="&lt;=" Value="&lt;=" />
                                    <asp:ListItem Text="&gt;" Value="&gt;" />
                                    <asp:ListItem Text="&gt;=" Value="&gt;=" />
                                </asp:DropDownList>
                                <mag:DatePicker ID="dpLastModificationDate" runat="server" />
                            </div>
                            <div class="buttons">
                                <ul>
                                    <li>
                                        <asp:LinkButton ID="lbtnReset" runat="server" Text="<%$ Resources:Global, Reset %>" SkinID="Minor" OnClick="lbtnReset_Click" />
                                    </li>
                                    <li>
                                        <asp:LinkButton ID="lbtnSearch" runat="server" Text="<%$ Resources:Global, Search %>" SkinID="Major" ValidationGroup="vgSearch" OnClick="lbtnSearch_Click" />
                                    </li>
                                </ul>
                            </div>
                        </mag:SearchPanel>
                        <mag:Gridview runat="server" ID="mgvContentItems" DataKeyNames="ContentItemId" OnCommand="mgvContentItems_Command" onsorti>
                            <commandbuttons>
                                <mag:CommandButton Text="<%$ Resources: Global, Delete %>" CommandName="DeleteContentItems" OnClientClick='<%$ resources:global, ClientClickConfirmDeletion %>' />
                            </commandbuttons>
                            <columns>
                                <mag:GridViewColumn AllowSorting="true" SortExpression="Code" meta:resourcekey="mgvcCode">
                                    <celltemplate>
                                        <asp:Literal runat="server" Text='<%# Eval("Code") %>'/>
                                    </celltemplate>
                                </mag:GridViewColumn>
                                <mag:GridViewColumn AllowSorting="true" SortExpression="StatusValue" meta:resourcekey="mgvcStatus">
                                    <celltemplate>
                                        <asp:multiview runat="server" ActiveViewIndex='<%# (byte)Eval("StatusValue") %>'>
                                            <asp:View runat="server"><asp:Literal runat="server" meta:resourceKey="litActive" /></asp:View>
                                            <asp:View runat="server"><asp:Literal runat="server" meta:resourceKey="litDraft" /></asp:View>
                                            <asp:View runat="server"><asp:Literal runat="server" meta:resourceKey="litWaitingApproval" /></asp:View>
                                            <asp:View runat="server"><asp:Literal runat="server" meta:resourceKey="litRejected" /></asp:View>
                                            <asp:View runat="server"><asp:Literal runat="server" meta:resourceKey="litArchived" /></asp:View>
                                        </asp:multiview>
                                    </celltemplate>
                                </mag:GridViewColumn>
                                <mag:GridViewColumn AllowSorting="true" CssClass="numeric" SortExpression="CreationDate" meta:resourcekey="mgvcCreationDate">
                                    <celltemplate>
                                        <asp:Literal runat="server" Text='<%# ((Magelia.WebStore.Runtime.ContentTypes.ContentType.ContentItemBase)Container.DataItem).CreationDate.ToUserTimeZoneString() %>'/>
                                    </celltemplate>
                                </mag:GridViewColumn>
                                <mag:GridViewColumn AllowSorting="true" SortExpression="CreatorUserName" meta:resourcekey="mgvcCreatorUserName">
                                    <celltemplate>
                                        <asp:Literal runat="server" Text='<%# Eval("CreatorUserName") %>'/>
                                    </celltemplate>
                                </mag:GridViewColumn>
                                <mag:GridViewColumn AllowSorting="true" CssClass="numeric" SortExpression="LastModificationDate" meta:resourcekey="mgvcLastModificationDate">
                                    <celltemplate>
                                        <asp:Literal runat="server" Text='<%# ((Magelia.WebStore.Runtime.ContentTypes.ContentType.ContentItemBase)Container.DataItem).LastModificationDate.ToUserTimeZoneString() %>'/>
                                    </celltemplate>
                                </mag:GridViewColumn>
                                <mag:GridViewColumn AllowSorting="true" SortExpression="LastModificatorUserName" meta:resourcekey="mgvcLastModificatorUserName">
                                    <celltemplate>
                                        <asp:Literal runat="server" Text='<%# Eval("LastModificatorUserName") %>'/>
                                    </celltemplate>
                                </mag:GridViewColumn>
                                <mag:GridViewColumn Name="<%$ Resources: Global, Action %>">
                                    <celltemplate>
                                        <ul>
                                            <li>
                                                <asp:ImageButton runat="server" SkinID="Edit" ToolTip='<%$ resources:global,Edit %>' CommandName="EditContentItem" />
                                            </li>
                                            <li runat="server" visible='<%# this.CanCreateAndDeleteCurrentContentType %>'>
                                                <asp:ImageButton runat="server" SkinID="Delete" ToolTip='<%$ resources:global,Delete %>' OnClientClick='<%$ resources:global, ClientClickConfirmDeletion %>' CommandName="DeleteContentItem" />
                                            </li>
                                        </ul>
                                    </celltemplate>
                                </mag:GridViewColumn>
                            </columns>
                        </mag:Gridview>
                    </asp:View>
                    <asp:View runat="server" ID="vEditContentItem">
                        <p id="pContainer" runat="server" class="message information">
                            <asp:Label ID="litContainer" runat="server" />
                        </p>
                        <asp:ListView runat="server" ID="lvContentItemCulture" DataKeyNames="CultureId" OnSelectedIndexChanged="lvContentItemCulture_SelectedIndexChanged" OnSelectedIndexChanging="lvContentItemCulture_SelectedIndexChanging">
                            <LayoutTemplate>
                                <ul class="tabStrip">
                                    <asp:PlaceHolder runat="server" ID="itemPlaceHolder" />
                                </ul>
                            </LayoutTemplate>
                            <ItemTemplate>
                                <li class='<%#((Boolean)Eval("IsCurrent")) ? "selected" : String.Empty %>'>
                                    <asp:LinkButton runat="server" CommandName="select"><span class="<%#((Boolean)Eval("IsEdit")) ? "edit" : "add" %>">&nbsp;</span><asp:label runat="server" Text='<%#Eval("DisplayName") %>' /></asp:LinkButton>
                                </li>
                            </ItemTemplate>
                        </asp:ListView>
                        <div>
                            <fieldset>
                                <legend>
                                    <asp:Literal runat="server" Text='<%$ resources:global,Properties %>' />
                                </legend>
                                <asp:ValidationSummary runat="server" ID="vsContentItem" HeaderText="<%$ Resources: Global, ErrorMsgText %>" />
                                <asp:CustomValidator runat="server" ID="cvCheckCodeUnique" OnServerValidate="cvCheckCodeUnique_ServerValidate" meta:resourceKey="cvCheckCodeUnique" />
                                <mag:GenericControl runat="server" ID="mgContentItem" OnChanged="mgContentItem_Changed" />
                            </fieldset>
                            <asp:PlaceHolder ID="phCancel" runat="server">
                                <div class="buttons edit">
                                    <ul>
                                        <li>
                                            <asp:LinkButton ID="lbtnCancel" runat="server" SkinID="Major" Text='<%$ resources:global, Cancel %>' OnClick="lbtnCancel_Click" CausesValidation="false" />
                                        </li>
                                    </ul>
                                </div>
                            </asp:PlaceHolder>
                            <div class="infos">
                                <asp:Label runat="server" ID="lblCreationInfo" meta:resourceKey="lblCreationInfo" />
                                <asp:Label runat="server" ID="lblEditInfo" meta:resourceKey="lblEditInfo" />
                            </div>
                        </div>
                    </asp:View>
                </asp:MultiView>
            </div>
        </div>
    </asp:View>
</asp:MultiView>
<script type="text/javascript">
    Magelia.WebStore.HelpManager.Instance.setHelpKeyByResourceKey('ContentItem');
</script>