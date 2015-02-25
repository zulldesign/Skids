<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="Magelia.WebStore.Admin.Administration.Scheduler.Edit" MasterPageFile="~/App_Masters/DefaultLayout.Master" %>

<%@ Import Namespace="Magelia.WebStore.Data.Entities" %>

<asp:Content ContentPlaceHolderID="cphBarTitle" runat="server">
    <asp:Literal ID="litTask" runat="server" meta:resourcekey="litTask" />
</asp:Content>
<asp:Content ContentPlaceHolderID="cphBarContent" runat="server">
    <ul>
        <li>
            <asp:HyperLink runat="server" Text='<%$ resources:global,Cancel %>' SkinID="Minor" NavigateUrl="~/Administration/Scheduler/List.aspx" />
        </li>
        <mag:FeaturePanel runat="server" Tag="Li" Level="Edit">
            <asp:LinkButton ID="lbtnSave" runat="server" Text='<%$ resources:global,Save %>' SkinID="Major" ValidationGroup="vgTask" OnClick="lbtnSave_Click" />
        </mag:FeaturePanel>
    </ul>
</asp:Content>
<asp:Content ContentPlaceHolderID="cphBody" runat="server">
    <asp:ValidationSummary runat="server" HeaderText="<%$ Resources:Global, ErrorMsgText %>" ValidationGroup="vgTask" />
    <div class="form">
        <fieldset>
            <legend>
                <asp:Literal runat="server" Text='<%$ resources:global, Properties %>' />
            </legend>
            <div class="field inline">
                <asp:Label ID="lblCode" runat="server" meta:resourcekey="lblCode" AssociatedControlID="tbxCode" />
                <asp:TextBox ID="tbxCode" runat="server" MaxLength="50" />
                <asp:RequiredFieldValidator ID="rfvCode" runat="server" ControlToValidate="tbxCode" ValidationGroup="vgTask" meta:resourcekey="rfvCode" />
                <asp:RegularExpressionValidator ID="revCodeLength" runat="server" ControlToValidate="tbxCode" ValidationExpression="^.{2,50}$" ValidationGroup="vgTask" meta:resourcekey="revCodeLength" />
                <asp:CustomValidator ID="cvCodeIdUnique" runat="server" ValidationGroup="vgTask" ControlToValidate="tbxCode" OnServerValidate="cvCodeIsUnique_ServerValidate" meta:resourcekey="cvCodeIsUnique" />
            </div>
            <div class="field inline break">
                <asp:Label ID="lblTimeout" runat="server" meta:resourcekey="lblTimeout" AssociatedControlID="mtpTimeout" />
                <mag:timepicker runat="server" id="mtpTimeout" />
            </div>
            <div class="field inline break">
                <asp:Label ID="lblIsActive" runat="server" meta:resourcekey="lblIsActive" AssociatedControlID="cbxIsActive" />
                <asp:CheckBox ID="cbxIsActive" runat="server" />
            </div>
            <div class="field inline break">
                <asp:Label ID="lblDescription" runat="server" meta:resourcekey="lblDescription" AssociatedControlID="tbxDescription" />
                <asp:TextBox ID="tbxDescription" runat="server" TextMode="MultiLine" />
            </div>
        </fieldset>
        <fieldset>
            <legend>
                <asp:Literal runat="server" Text='<%$ resources:global,Action %>' />
            </legend>
            <mag:componentConfigurator id="mccJobType" runat="server" ValidationGroup="vgTask" meta:resourceKey="mccJobType" />
        </fieldset>
        <fieldset>
            <legend>
                <asp:Literal runat="server" meta:resourceKey="litTriggers" />
            </legend>
            <asp:ListView runat="server" ID="lvTriggers" OnItemDataBound="lvTriggers_ItemDataBound" DataKeyNames="TaskTriggerId" OnItemDeleting="lvTriggers_ItemDeleting">
                <LayoutTemplate>
                    <ul class="triggers">
                        <asp:PlaceHolder ID="ItemPlaceholder" runat="server" />
                    </ul>
                </LayoutTemplate>
                <ItemTemplate>
                    <li>
                        <div class="buttons">
                            <ul>
                                <li>
                                    <asp:ImageButton ID="imgBtnDeleteTrigger" runat="server" CommandName="Delete" SkinID="Delete" />
                                </li>
                            </ul>
                        </div>
                        <asp:UpdatePanel runat="server" UpdateMode="Conditional">
                            <ContentTemplate>
                                <mag:componentConfigurator runat="server" id="mccTaskTrigger" ValidationGroup="vgTask" meta:resourceKey="mccTaskTrigger" />
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </li>
                </ItemTemplate>
            </asp:ListView>
            <div class="buttons">
                <ul>
                    <li>
                        <asp:LinkButton runat="server" ID="lbtnAddTrigger" OnClick="lbtnAddTrigger_Click" Text='<%$ resources:global, AddNew %>' SkinID="Minor" />
                    </li>
                </ul>
            </div>
        </fieldset>
    </div>
</asp:Content>
