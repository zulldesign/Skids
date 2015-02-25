<%@ Page Title="" Language="C#" MasterPageFile="~/App_Masters/DefaultLayout.Master"
    EnableEventValidation="false" AutoEventWireup="true" CodeBehind="Edit.aspx.cs"
    Inherits="Magelia.WebStore.Admin.Administration.Cultures.Edit" %>

<asp:Content ContentPlaceHolderID="cphBarTitle" runat="server">
    <asp:Literal ID="litCulture" runat="server" meta:resourcekey="litCulture" />
</asp:Content>
<asp:Content ContentPlaceHolderID="cphBarContent" runat="server">
    <ul>
        <li>
            <asp:HyperLink runat="server" Text='<%$ resources:global, Cancel %>'
                NavigateUrl="~/Administration/Cultures/List.aspx" SkinID="Minor" />
        </li>
        <li>
            <asp:LinkButton ID="lbtnSave" runat="server" Text='<%$ resources:global, Save %>'
                SkinID="Major" OnClick="lbnSave_Click" ValidationGroup="vgCultureEdit" />
        </li>
    </ul>
</asp:Content>
<asp:Content ContentPlaceHolderID="cphBody" runat="server">
    <div class="form">
        <fieldset>
            <legend>
                <asp:Literal runat="server" Text='<%$ resources:global,properties %>' />
            </legend>
            <div class="field inline">
                <asp:Label ID="lblCode" runat="server" AssociatedControlID="tbxCode" meta:resourcekey="lblCode" />
                <asp:TextBox ID="tbxCode" runat="server" ReadOnly="true" />
            </div>
        </fieldset>
        <fieldset>
            <legend>
                <asp:Literal runat="server" Text='<%$ resources:global, Localizations %>' />
            </legend>
            <mag:Localizer ID="mlCulture" runat="server">
                <localizablefields>
                    <mag:LocalizableField PropertyName="Name" Editor="SingleLineString" MaxLength="100" meta:resourcekey="lfName" />
                </localizablefields>
            </mag:Localizer>
        </fieldset>
    </div>
</asp:Content>
