<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="uploadimage.aspx.cs" Inherits="_1624963_CO5027.admin.uploadimage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Heading1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Heading2" runat="server">
    Image Upload
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MainContent" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="Gmap" runat="server">
    <form id="form1" runat="server">
        <asp:FileUpload ID="ID_UploadControl" runat="server" />
        <br />
        <asp:Button ID="BTN_upload" runat="server" OnClick="BTN_upload_Click" Text="Upload" />
    </form>
</asp:Content>
