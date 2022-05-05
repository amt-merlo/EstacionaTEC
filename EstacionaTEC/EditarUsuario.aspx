<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditarUsuario.aspx.cs" Inherits="EstacionaTEC.EditarUsuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Editar Usurario</div>
        <p>
            Identificación</p>
        <p>
            <input id="IdText" type="text" value="Identificacion" /></p>
        <p>
            <asp:Button ID="BuscarButton" runat="server" Text="Buscar" />
        </p>
        <p hidden="hidden">
            Identificación</p>
        <p>
            <input id="IdText0" type="text" hidden="hidden" value="Identificacion" /></p>
        <p hidden="hidden">
            Nombre Completo</p>
        <p>
            <input id="NombreText" type="text" hidden="hidden" value="Nombre Completo" /></p>
        <p hidden="hidden">
            Telefono Celular</p>
        <p>
            <input id="TelefonoText" type="text" hidden="hidden" value="Telefono Celular" /></p>
        <p hidden="hidden">
            Correo Institucional</p>
        <p>
            <input id="CorreoText" type="text" hidden="hidden" value="Correo Insitucional" /></p>
        <p hidden="hidden">
            Departamento</p>
        <p>
            <input id="DepartamentoText" type="text" hidden="hidden" value="Departamento" /></p>
        <p>
            <asp:CheckBox ID="DocenteBox" runat="server" Text="¿Docente?" Visible="False" />
        </p>
        <p>
            <asp:CheckBox ID="SedeBox" runat="server" Text="¿Es parte de la sede de San José?" Visible="False" />
        </p>
        <p>
            <asp:CheckBox ID="ServiciosBox" runat="server" Text="¿Servicios especiales?" Visible="False" />
        </p>
        <p>
            <asp:Button ID="EditarButton" runat="server" Text="Editar" Visible="False" />
        </p>
    </form>
</body>
</html>
