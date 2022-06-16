<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FuncionarioLanding.aspx.cs" Inherits="EstacionaTEC.Views.FuncionarioLanding" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <h1 class="text-center">Estaciona<span style="color: #6666FF">TEC</span></h1>
    </div>
    <div class="row">
        <h2 class="text-center">Menú principal</h2>
            <h4 class="text-center">Bienvenido(a)
                <asp:Label ID="lblNombre" runat="server" Text=""></asp:Label>
            </h4>
        <div class="col-sm-3"></div>

        <div class="col-sm-3">
            <h3>Gestionar Reservas</h3>
            <p>
                <asp:ImageButton ID="ImageButton1" runat="server" Height="88px" ImageUrl="~/Imagenes/reservar.png" OnClick="ImageButton1_Click" />
            </p>
            <p>Reservar</p>
            <p>
                <asp:ImageButton ID="ImageButton2" runat="server" Height="88px" ImageUrl="~/Imagenes/verReservas.png" OnClick="ImageButton2_Click" />
            </p>
            <p>Mis reservas</p>
            

            
            <p class="text-center">
                <asp:SqlDataSource ID="sqlGetNombre" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoDisennoConnectionString %>" SelectCommand="SELECT [nombreCompleto] FROM [Persona] WHERE ([identificacion] = @identificacion)">
                    <SelectParameters>
                        <asp:SessionParameter Name="identificacion" SessionField="ID" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </p>
        </div>  
        <div class="col-sm-3">
            <h3>Información Personal</h3>
            <p>
                <asp:ImageButton ID="ImageButton3" runat="server" Height="88px" ImageUrl="~/Imagenes/editarPerfil.png" OnClick="ImageButton3_Click" />
            </p>
            <p>Editar datos personales</p>
            <p></p>
        </div>
        <div class="col-sm-3"></div>

    </div>
    <div class="row">
        <div class="col-md-4"></div>
        <div class="col-md-4">
            <h3>Informes y Estadísticas</h3>
            <p>
                <asp:ImageButton ID="ImageButton4" runat="server" Height="88px" ImageUrl="~/Imagenes/statistics.png" OnClick="ImageButton4_Click" />
            </p>
            <p>Informes y Estadísticas</p>
            <p></p>
        </div>
    </div>

</asp:Content>
