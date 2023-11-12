<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="LP3_Desemp2.Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="https://unpkg.com/@dotlottie/player-component@latest/dist/dotlottie-player.mjs" type="module"></script>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat&display=swap">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container text-center ms-auto mx-auto mt-5">
        <h1 class="display-3">¡Bienvenido al SISTEMA DE GESTIÓN LP3!</h1>
        <div class="my-5 ms-auto">
              <dotlottie-player src="https://lottie.host/9154859d-df5e-453a-8da0-7a9e5a4fca9a/XwLYhRvL5y.json" background="transparent" speed="1" style="width: 700px; height: 700px;" loop autoplay></dotlottie-player>
        </div>
    </div>

</asp:Content>
