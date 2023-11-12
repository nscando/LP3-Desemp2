<%@ Page Title="Formulario de Registro" Language="C#" MasterPageFile="~/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="RegistroForm.aspx.cs" Inherits="LP3_Desemp2.RegistroForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container mt-5 border p-4 shadow form-control form-control-sm">
        <h1 class="mb-4">Formulario de Registro</h1>

        <div class="mb-3 mx-auto">
            <asp:Label ID="Label2" runat="server" Text="Email *" CssClass="form-label"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TbEmail" ErrorMessage="El email es obligatorio" ForeColor="#CC0000" Display="None"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TbEmail" ErrorMessage="El Email no es Válido" ForeColor="#CC0000" ValidationExpression="^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$" Display="None"></asp:RegularExpressionValidator>
            <asp:TextBox ID="TbEmail" runat="server" CssClass="form-control" placeholder="Ingrese su Correo electrónico" TextMode="Email" ToolTip="Ingresá tu email"></asp:TextBox>
        </div>

        <div class="mb-3">
            <asp:Label ID="Label3" runat="server" Text="Username *" CssClass="form-label"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TbUsername" ErrorMessage="El nombre de usuario es obligatorio" ForeColor="#CC0000" Display="None"></asp:RequiredFieldValidator>
            <asp:TextBox ID="TbUsername" runat="server" CssClass="form-control" placeholder="Ingrese su Nombre de Usuario"></asp:TextBox>
        </div>

        <div class="mb-3">
            <asp:Label ID="Label4" runat="server" Text="Edad *" CssClass="form-label"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TbEdad" ErrorMessage="La edad es obligatoria" ForeColor="#CC0000" Display="None"></asp:RequiredFieldValidator>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TbEdad" ErrorMessage=" La Edad debe estar entre 15 y 99" ForeColor="#CC0000" MaximumValue="99" MinimumValue="15" Type="Integer" Display="None"></asp:RangeValidator>
            <asp:TextBox ID="TbEdad" runat="server" CssClass="form-control" placeholder="Ingrese su Edad"></asp:TextBox>
        </div>

        <div class="mb-3">
            <asp:Label ID="Label5" runat="server" Text="Password *" CssClass="form-label"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TbPassword" ErrorMessage="La Contraseña es obligatoria" ForeColor="#CC0000" Display="None"></asp:RequiredFieldValidator>
            <asp:TextBox ID="TbPassword" runat="server" TextMode="Password" CssClass="form-control" placeholder="Ingrese su Contraseña" ToolTip="Ingresar Password"></asp:TextBox>
        </div>

        <div class="mb-3">
            <asp:Label ID="Label1" runat="server" Text="Repetir Password *" CssClass="form-label"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TbRepeatPassword" ErrorMessage="Reingresar la Contraseña es obligatorio" ForeColor="#CC0000" Display="None"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TbPassword" ControlToValidate="TbRepeatPassword" ErrorMessage="Las Contraseñas NO Coinciden" ForeColor="#CC0000" Display="None"></asp:CompareValidator>
            <asp:TextBox ID="TbRepeatPassword" runat="server" TextMode="Password" CssClass="form-control" placeholder="Ingrese nuevamente su Contraseña" ToolTip="Re-Ingrersar Password"></asp:TextBox>
        </div>

        <asp:Button ID="btnRegistrarse" CssClass="btn btn-primary btn-lg " runat="server" Text="Registrar" OnClick="btnRegistrarse_Click" />
        <br />
        <br />
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="#CC0000" HeaderText="Verificá el formulario" />
    </div>
</asp:Content>
