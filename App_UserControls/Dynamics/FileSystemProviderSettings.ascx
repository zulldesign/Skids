<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="FileSystemProviderSettings.ascx.cs" Inherits="Magelia.WebStore.Admin.App_UserControls.Dynamics.FileSystemProviderSettings" %>

<%@ Register TagPrefix="local" TagName="FilePicker" Src="~/App_UserControls/Generics/FilePicker.ascx" %>

<local:FilePicker ID="mfpSource" runat="server" AllowedFileType="All" AllowedSelection="One" />
<asp:CustomValidator ID="cvSourceRequired" runat="server" OnServerValidate="cvSourceRequired_ServerValidate" meta:resourcekey="cvSourceRequired" />