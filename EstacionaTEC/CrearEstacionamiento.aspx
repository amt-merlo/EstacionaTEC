<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CrearEstacionamiento.aspx.cs" Inherits="EstacionaTEC.CrearEstacionamiento" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #NombreEstacionamientoText {
            width: 169px;
        }
        #HoraAperturaText {
            width: 163px;
        }
        #HoraCierreText {
            width: 164px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Crear Estacionamiento</div>
        <p>
            Nombre</p>
        <p>
            <input id="NombreEstacionamientoText" type="text" value="Nombre" /></p>
        <p>
            Ubicación</p>
        <p>
            <textarea id="UbicacionText" cols="20" name="S1" rows="2"></textarea></p>
        <p>
            Tipo de Parqueo</p>
        <asp:DropDownList ID="DropDownList1" runat="server" Width="177px">
            <asp:ListItem Value="0">Principal</asp:ListItem>
            <asp:ListItem Value="1">Campus</asp:ListItem>
            <asp:ListItem Value="2">Subcontratado</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        Hora de Apertura<br />
        <br />
        <input id="HoraAperturaText" type="text" value="Hora de Apertura ej: 7:30" /><br />
        <br />
        Hora de Cierre<br />
        <br />
        <input id="HoraCierreText" type="text" value="Hora de Cierre ej: 20:30" /><p>
            <asp:Button ID="agregarEstacionamientoButton" runat="server" Text="Agregar Estacionamiento" />
        </p>
    </form>
</body>
</html>
