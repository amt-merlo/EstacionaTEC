<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AgregarEspacio.aspx.cs" Inherits="EstacionaTEC.AgregarEspacio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Agregar Espacio<br />
            <br />
            Tipo<br />
            <br />
        </div>
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem Value="0">Normal</asp:ListItem>
            <asp:ListItem Value="1">Servicios Especiales</asp:ListItem>
            <asp:ListItem Value="2">Vehiculos Oficiales</asp:ListItem>
            <asp:ListItem Value="3">Jefaturas</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        Estacionamiento<br />
        <br />
        <asp:DropDownList ID="DropDownList2" runat="server">
        </asp:DropDownList>
        <br />
        <br />
        Numeración<br />
        <br />
        <asp:TextBox ID="NumeracionText" runat="server">Numeración</asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Agregarbutton" runat="server" Text="Agregar" />
    </form>
</body>
</html>
