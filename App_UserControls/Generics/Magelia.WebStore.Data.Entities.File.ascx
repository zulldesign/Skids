<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Magelia.WebStore.Data.Entities.File.ascx.cs" Inherits="Magelia.WebStore.Admin.App_UserControls.Generics.Magelia_WebStore_Data_Entities_File" %>
<%@ Register TagName="FilePicker" TagPrefix="local" Src="FilePicker.ascx" %>

<local:FilePicker runat="server" ID="fpGlobal" AllowedSelection="One" onchanged="fpGlobal_Changed" />
<asp:CustomValidator runat="server" ID="cvFilePicker" meta:resourceKey="cvFilePicker" OnServerValidate="cvFilePicker_ServerValidate" text="*" />