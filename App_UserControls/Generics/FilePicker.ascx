<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="FilePicker.ascx.cs" Inherits="Magelia.WebStore.Admin.App_UserControls.Generics.FilePicker" %>
<%@ Register TagPrefix="mag" TagName="FileManager" Src="~/App_UserControls/Generics/FileManager.ascx" %>
<%@ Register TagPrefix="mag" TagName="Unauthorized" Src="~/App_UserControls/Generics/Unauthorized.ascx" %>
<asp:MultiView ID="mvFilePicker" runat="server">
    <asp:View ID="vConfigured" runat="server">
        <div id="bFilePicker" runat="server" class="filePicker">
            <mag:FeaturePanel runat="server" Level="Edit" Tag="Div" CssClass="buttons">
                <ul>
                    <li>
                        <asp:LinkButton ID="lbtnClear" runat="server" meta:resourcekey="lbtnClear" SkinID="Minor" OnClick="lbtnClear_Click" />
                    </li>
                    <li>
                        <asp:LinkButton ID="lbtnRefresh" runat="server" meta:resourcekey="lbtnRefresh" SkinID="Minor" OnClick="lbtnRefresh_Click" />
                    </li>
                    <li>
                        <asp:LinkButton ID="lbtnAddFiles" runat="server" meta:resourcekey="lbtnAddFiles" SkinID="Major" OnClick="lbtnAddFiles_Click" />
                    </li>
                </ul>
            </mag:FeaturePanel>
            <asp:UpdatePanel runat="server" ChildrenAsTriggers="true" UpdateMode="Always">
                <ContentTemplate>
                    <asp:Repeater ID="rptSelectedFiles" runat="server" OnItemDataBound="rptSelectedFiles_ItemDataBound" OnItemCommand="rptSelectedFiles_ItemCommand">
                        <ItemTemplate>
                            <li id="iFile" runat="server">
                                <mag:FeaturePanel runat="server" Level="Edit">
                                    <asp:ImageButton runat="server" SkinID="Delete" ToolTip='<%$ resources:global,Delete %>' CommandName='<%# Magelia.WebStore.Admin.App_UserControls.Generics.FilePicker.RemoveFileCommandeName %>' CommandArgument='<%# Eval("FileId") %>' CausesValidation="false" />
                                </mag:FeaturePanel>
                                <p>
                                    <asp:Literal ID="litFileName" runat="server" />
                                </p>
                            </li>
                        </ItemTemplate>
                        <HeaderTemplate>
                            <ul class="files">
                        </HeaderTemplate>
                        <FooterTemplate>
                            </ul>
                        </FooterTemplate>
                    </asp:Repeater>
                    <p id="pInstructions" runat="server" class="message information">
                        <asp:Literal ID="litInstructionAddFiles" runat="server" meta:resourcekey="litInstructionAddFiles" />
                    </p>
                </ContentTemplate>
            </asp:UpdatePanel>
            <asp:PlaceHolder runat="server" ID="phBottomButtons">
                <mag:FeaturePanel runat="server" Level="Edit" Tag="Div" CssClass="buttons">
                    <ul>
                        <li>
                            <asp:LinkButton ID="lbtnClear2" runat="server" meta:resourcekey="lbtnClear" SkinID="Minor" OnClick="lbtnClear_Click" />
                        </li>
                        <li>
                            <asp:LinkButton ID="lbtnRefresh2" runat="server" meta:resourcekey="lbtnRefresh" SkinID="Minor" OnClick="lbtnRefresh_Click" />
                        </li>
                        <li>
                            <asp:LinkButton ID="lbtnAddFiles2" runat="server" meta:resourcekey="lbtnAddFiles" SkinID="Major" OnClick="lbtnAddFiles_Click" />
                        </li>
                    </ul>
                </mag:FeaturePanel>
            </asp:PlaceHolder>
            <div id="bFileManagerPopin" class="popin fileManagerPopin" runat="server">
                <header>
                    <h4>
                        <asp:Literal ID="litFileManager" runat="server" meta:resourcekey="litFileManager" />
                    </h4>
                </header>
                <div>
                    <mag:FileManager ID="mfmFiles" runat="server" OnAddToSelection="FileManager_AddToSelection" />
                </div>
            </div>
            <script type="text/javascript">
                Sys.Application.add_load(
                    function () {
                        var list = $('#<%= this.bFilePicker.ClientID %> ul.files')
                        if (!list.data('initialized')) {
                            new Magelia.WebStore.File.ImagePicker({ list: list, paths: list.data('paths') });
                            list.data('initialized', true);
                        }
                    }
                );
                $(document).ready(
                    function () {
                        var bFileManagerPopinHeaderContent = $('#<%= this.bFileManagerPopin.ClientID %> div.header div.content');
                        if (bFileManagerPopinHeaderContent.children('a.help').length == 0) {
                            $('<a/>')
                                .text('<%= this.GetLocalResourceObject("Help") %>')
                                .addClass('help')
                                .appendTo(bFileManagerPopinHeaderContent)
                                .click(
                                    function () {
                                        if (!helpWindow || helpWindow.closed) {
                                            helpWindow = window.open('<%= this.HelpPath %>' + 'filemanager' + '?help=true', 'HelpWindow', 'width=720,height=600,scrollbars=yes,resizable=yes,directories=no,location=no,menubar=no,status=no,toolbar=no');
                                        }
                                        if (helpWindow) { helpWindow.focus(); }
                                    }
                                );
                        }
                    }
                );
            </script>
        </div>
    </asp:View>
    <asp:View ID="vUnconfigured" runat="server">
        <p class="message error">
            <asp:Literal ID="litConfigurationMessage" runat="server" meta:resourcekey="litConfigurationMessage" />
        </p>
    </asp:View>
    <asp:View ID="vUnauthorized" runat="server">
        <mag:Unauthorized runat="server" />
    </asp:View>
    <asp:View ID="vEmpty" runat="server">
        <p class="message warning">
            <asp:Literal ID="litNoFiles" runat="server" meta:resourcekey="litNoFiles" />
        </p>
    </asp:View>
</asp:MultiView>
