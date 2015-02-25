<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="AttributeEditor.ascx.cs" Inherits="Magelia.WebStore.Admin.App_UserControls.Products.AttributeEditor" %>
<asp:MultiView ID="mvEditor" runat="server">
    <asp:View ID="vBoolean" runat="server">
        <asp:CheckBox ID="cbxBoolean" runat="server" />
    </asp:View>
    <asp:View ID="vInteger" runat="server">
        <asp:TextBox ID="tbxInteger" runat="server" CssClass="numeric" />
        <asp:RequiredFieldValidator ID="rfvInteger" runat="server" ControlToValidate="tbxInteger" meta:resourcekey="rfvInteger" />
        <asp:CompareValidator ID="cvInteger" runat="server" ControlToValidate="tbxInteger" Type="Integer" Operator="DataTypeCheck" meta:resourcekey="cvInteger" />
    </asp:View>
    <asp:View ID="vDecimal" runat="server">
        <asp:TextBox ID="tbxDecimal" runat="server" CssClass="numeric" />
        <asp:RequiredFieldValidator ID="rfvDecimal" runat="server" ControlToValidate="tbxDecimal" meta:resourcekey="rfvDecimal" />
        <asp:CompareValidator ID="cvDecimal" runat="server" ControlToValidate="tbxDecimal" meta:resourcekey="cvDecimal" Type="Double" Operator="DataTypeCheck" />
    </asp:View>
    <asp:View ID="vDateTime" runat="server">
        <mag:DateTimePicker ID="mdtpDate" runat="server" />
        <asp:RequiredFieldValidator ID="rfvDate" runat="server" ControlToValidate="mdtpDate" meta:resourcekey="rfvDate" />
    </asp:View>
    <asp:View ID="vEnum" runat="server">
        <asp:DropDownList ID="ddlEnum" runat="server" CssClass="autoSize" AppendDataBoundItems="true">
            <asp:ListItem />
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="rfvEnum" runat="server" ControlToValidate="ddlEnum" meta:resourcekey="rfvEnum" />
    </asp:View>
    <asp:View ID="vString" runat="server">
        <asp:TextBox ID="tbxString" runat="server" />
        <asp:RequiredFieldValidator ID="rfvString" runat="server" ControlToValidate="tbxString" meta:resourcekey="rfvString" />
    </asp:View>
    <asp:View ID="vFilePicker" runat="server">
        <mag:FilePicker ID="mfpFiles" runat="server" />
        <asp:CustomValidator ID="cvFiles" runat="server" OnServerValidate="cvFiles_ServerValidate" meta:resourcekey="cvFiles" />
    </asp:View>
</asp:MultiView>