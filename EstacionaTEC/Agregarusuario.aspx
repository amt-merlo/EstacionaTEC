<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Agregarusuario.aspx.cs" Inherits="EstacionaTEC.Agregarusuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Agregar Usuario</div>
        <p>
            Identificación</p>
        <p>
            <input id="IdText" type="text" value="Identificacion" /></p>
        <p>
            Nombre Completo</p>
        <p>
            <input id="NombreText" type="text" value="Nombre Completo" /></p>
        <p>
            Telefono Celular</p>
        <p>
            <input id="TelefonoText" type="text" value="Telefono Celular" /></p>
        <p>
            Correo Institucional</p>
        <p>
            <input id="CorreoText" type="text" value="Correo Insitucional" /></p>
        <p>
            Departamento</p>
        <p>
            <input id="DepartamentoText" type="text" value="Departamento" /></p>
        <p>
            <asp:CheckBox ID="DocenteBox" runat="server" Text="¿Docente?" />
        </p>
        <p>
            <asp:CheckBox ID="SedeBox" runat="server" Text="¿Es parte de la sede de San José?" />
        </p>
        <p>
            <asp:CheckBox ID="ServiciosBox" runat="server" Text="¿Servicios especiales?" />
        </p>
        <p>
            <asp:Button ID="RegistarButton" runat="server" Text="Registrar" />
        </p>
    </form>
    <p>
        &nbsp;</p>
</body>
</html>
