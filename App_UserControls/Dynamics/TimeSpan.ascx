<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="TimeSpan.ascx.cs" Inherits="Magelia.WebStore.Admin.App_UserControls.Dynamics.TimeSpan" %>

<asp:TextBox runat="server" ID="tbxTimespan" OnTextChanged="tbxTimespan_TextChanged" />
<asp:RequiredFieldValidator runat="server" ID="rfvTimespan" ControlToValidate="tbxTimespan" Display="Dynamic" Text="*" meta:resourceKey="rfvTimespan" />
<asp:CustomValidator runat="server" ID="cvTimespan" ControlToValidate="tbxTimespan" Display="Dynamic" Text="*" meta:resourceKey="cvTimespan" OnServerValidate="cvTimespan_ServerValidate" />