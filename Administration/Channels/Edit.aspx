<%@ Page Title="" Language="C#" MasterPageFile="~/App_Masters/DefaultLayout.Master" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="Magelia.WebStore.Admin.Administration.Channels.Edit" %>

<asp:Content ContentPlaceHolderID="cphBarTitle" runat="server">
    <asp:Literal ID="litChannel" runat="server" meta:resourcekey="litChannel" />
</asp:Content>
<asp:Content ContentPlaceHolderID="cphBarContent" runat="server">
    <ul>
        <li>
            <asp:HyperLink runat="server" NavigateUrl="~/Administration/Channels/List.aspx" SkinID="Minor" Text='<%$ resources:global, Cancel %>' />
        </li>
        <li id="iSave" runat="server">
            <asp:LinkButton ID="lbtnSave" runat="server" ValidationGroup="vgChannel" Text='<%$ resources:global, Save %>' SkinID="Major" OnClick="lbtnSave_Click" />
        </li>
    </ul>
</asp:Content>
<asp:Content ContentPlaceHolderID="cphBody" runat="server">
    <asp:ValidationSummary runat="server" ValidationGroup="vgChannel" HeaderText='<%$ Resources: Global, ErrorMsgText %>' />
    <mag:TabStrip runat="server" ValidationGroup="vgRegion" MultiViewID="mvGlobal">
        <TabItems>
            <mag:TabItem meta:resourceKey="mtiGeneral" Text='<%$ resources:global, General %>' />
            <mag:TabItem meta:resourceKey="mtiContentItems" Text='<%$ resources:global, ContentItems %>' />
        </TabItems>
    </mag:TabStrip>
    <div class="form">
        <asp:MultiView ID="mvGlobal" runat="server" ActiveViewIndex="0">
            <asp:View runat="server">
                <fieldset>
                    <legend>
                        <asp:Literal runat="server" Text='<%$ resources:global, Properties %>' />
                    </legend>
                    <div class="field inline">
                        <asp:Label ID="lblCode" runat="server" meta:resourcekey="lblCode" AssociatedControlID="tbxCode" />
                        <asp:TextBox ID="tbxCode" runat="server" />
                        <asp:RequiredFieldValidator ID="rvfCode" runat="server" meta:resourcekey="rfvCode" ValidationGroup="vgChannel" ControlToValidate="tbxCode" />
                        <asp:RegularExpressionValidator ID="revCodeLength" runat="server" ValidationGroup="vgChannel" ControlToValidate="tbxCode" ValidationExpression="^.{0,50}$" meta:resourcekey="revCodeLength" />
                        <asp:CustomValidator ID="cvCodeIsUnique" runat="server" ValidationGroup="vgChannel" ControlToValidate="tbxCode" meta:resourcekey="cvCodeIsUnique" OnServerValidate="cvCodeIsUnique_ServerValidate" />
                    </div>
                </fieldset>
                <fieldset>
                    <legend>
                        <asp:Literal runat="server" Text='<%$ resources:global, Localizations %>' />
                    </legend>
                    <mag:Localizer ID="mlChannel" runat="server">
                        <localizablefields>
                            <mag:LocalizableField Editor="SingleLineString" PropertyName="Name" MaxLength="50" meta:resourcekey="mlfName" />
                            <mag:LocalizableField Editor="MultiLineString" PropertyName="Description" Required="false" meta:resourcekey="mlfDescription" />
                        </localizablefields>
                    </mag:Localizer>
                </fieldset>
            </asp:View>
            <asp:View runat="server">
                <mag:AssociatedContentItems ID="mAssociatedContentItems" runat="server" ValidationGroup="vgChannel" />
            </asp:View>
        </asp:MultiView>
    </div>
</asp:Content>
