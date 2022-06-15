﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FuncionarioLanding.aspx.cs" Inherits="EstacionaTEC.Views.FuncionarioLanding" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <h1 class="text-center">Estaciona<span style="color: #6666FF">TEC</span></h1>
    </div>
    <div>
        <div>
            <h2 class="text-center">Menú principal</h2>
            <h4 class="text-center">Bienvenido(a)
                <asp:Label ID="lblNombre" runat="server" Text=""></asp:Label>
            </h4>
            <p class="text-center">
                <asp:Button ID="btnReservar" runat="server" Text="Reservar"  Width="240px" />
            </p>
            <p class="text-center">
                <asp:Button ID="btnInformes" runat="server" Text="Informes y Estadísticas" OnClick="btnInformes_Click" Width="240px" />
            </p>
            <p class="text-center">
                <asp:Button ID="btnModificarDatos" runat="server" Text="Información Personal" Width="240px" OnClick="btnModificarDatos_Click" />
            </p>
            
            <p class="text-center">
                <asp:SqlDataSource ID="sqlGetNombre" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoDisennoConnectionString %>" SelectCommand="SELECT [nombreCompleto] FROM [Persona] WHERE ([identificacion] = @identificacion)">
                    <SelectParameters>
                        <asp:SessionParameter Name="identificacion" SessionField="ID" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </p>
        </div>   
    </div>

</asp:Content>
