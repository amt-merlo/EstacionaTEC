<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CrearOperador.aspx.cs" Inherits="EstacionaTEC.Views.CrearOperador" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <div class="jumbotron">
        <h1 class="text-center" style="text-align: center">Estaciona<span style="color: #6666FF">TEC</span></h1>
    </div>
    <div class="row">
        <div class="col-md-4"></div>

        <div class="col-md-4">
            <p class="text-left" style="text-align: left">
                Funcionario:
                <asp:Label ID="lblNombre" runat="server" Text=""></asp:Label>
            </p>
            <h2>
                Registrar Nuevo Operador</h2>
            <p>
                Por favor ingrese la información del operador que desea registrar</p>
            <p>
                Número de cédula:&nbsp;
                <asp:TextBox ID="txtBoxCedula" runat="server"></asp:TextBox>
            </p>
            <p>
                Nombre completo:&nbsp;
                <asp:TextBox ID="txtBoxNombre" runat="server"></asp:TextBox>
            </p>
            <p>
                Correo electrónico:&nbsp;
                <asp:TextBox ID="txtBoxCorreo" runat="server"></asp:TextBox>
            </p>
            <p>
                Teléfono:&nbsp;
                <asp:TextBox ID="txtBoxTelefono" runat="server"></asp:TextBox>
            </p>
            <p>
                Seleccione el estacionamiento que el operador tendrá a cargo:</p>
            <p>
                <asp:GridView ID="gridEstacionamientos" runat="server" HorizontalAlign="Center" CellPadding="4" ForeColor="#333333" GridLines="None" Width="424px" AutoGenerateSelectButton="True">
                    <AlternatingRowStyle BackColor="White" />
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
            </p>
            <p>
                Estacionamiento seleccionado:
                <asp:Label ID="lblIDEstacionamiento" runat="server" Text="Label"></asp:Label>
            </p>
            <p>
                <asp:Button ID="btnRegistrar" runat="server" Text="Registrar" />
            </p>
            <p>
                &nbsp;</p>
        </div>
    </div>
</asp:Content>
