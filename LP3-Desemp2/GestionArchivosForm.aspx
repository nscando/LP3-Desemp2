<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="GestionArchivosForm.aspx.cs" Inherits="LP3_Desemp2.GestionArchivosForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="LabelCookie" runat="server" Text="Label"></asp:Label>
   <div class="container mt-5">
    <h1 class="display-4">Gestión de Archivos</h1>

    <div class="mb-3">
        <asp:Label ID="lblMensaje" runat="server" Visible="false"></asp:Label>
        <asp:FileUpload ID="FileUpload" runat="server" CssClass="form-control" ToolTip="Seleccione un archivo" BackColor="#DFF4FF"  />
    </div>

    <asp:Button ID="btnSubir" runat="server" Text="Subir Archivo" CssClass="btn btn-primary" OnClick="btnSubir_Click" />
</div>
</asp:Content>
