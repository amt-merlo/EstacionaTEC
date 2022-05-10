<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="EstacionaTEC._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1 class="text-center">EstacionaTEC</h1>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Iniciar Sesión&nbsp; </h2>
            <p>
                Dirección de correo electrónico:&nbsp;&nbsp;&nbsp;</p>
            <p>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </p>
            <p>
                &nbsp;Contraseña:&nbsp;</p>
            <p>
                &nbsp;<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </p>
            <p>
                &nbsp;&nbsp;&nbsp;
                &nbsp;<asp:Button ID="Button1" runat="server" Text="Iniciar Sesión" Width="140px" Height="33px" />
            </p>
        </div>
        <div class="col-md-4">
            <p>
                &nbsp;</p>
        </div>
    </div>

</asp:Content>
