<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdministradorLanding.aspx.cs" Inherits="EstacionaTEC.AdministradorLanding" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <p>
            &nbsp;</p>
        <p>
            <asp:LinkButton runat="server" id="crearEstacionamiento" href="CrearEstacionamiento.aspx" CssClass="btn btn-primary btn-sm">Crear Estacionamiento</asp:LinkButton>
        </p>
        <p>
             <asp:LinkButton runat="server" id="agregarEspacio" href="AgregarEspacio.apsx" CssClass="btn btn-primary btn-sm">Agregar Espacio</asp:LinkButton>
        </p>
        <p>
             <asp:LinkButton runat="server" id="crearUsuario" href="Agregarusuario.aspx" CssClass="btn btn-primary btn-sm">Crear Usuario</asp:LinkButton>
        </p>
        <p>
             <asp:LinkButton runat="server" id="editarUsuario" href="EditarUsuario.aspx" CssClass="btn btn-primary btn-sm">Editar Usuario</asp:LinkButton>
        </p>
    </form>
</body>
</html>
