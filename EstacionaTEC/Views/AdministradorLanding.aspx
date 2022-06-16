<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdministradorLanding.aspx.cs" Inherits="EstacionaTEC.Views.AdministradorLanding" %>
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
        <div class="col-sm-3" >
            <h3><strong>Gestión de Usuarios</strong></h3>
            <p class="text-center">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:ImageButton ID="ImageButton1" runat="server" HorizontalAlign="Center" ImageUrl="~/Imagenes/registrarFuncionario.png" Height="67px" Width="86px" OnClick="ImageButton1_Click" />
            </p>
            <p class="text-center">
                Registrar Funcionario</p>
            <p class="text-center">
                <asp:ImageButton ID="ImageButton2" runat="server" Height="83px" ImageUrl="~/Imagenes/registrarOperador.png" Width="73px" OnClick="ImageButton2_Click" />
            </p>
            <p class="text-center">
                Registrar Operador</p>
            <p class="text-center">
                <asp:ImageButton ID="ImageButton3" runat="server" Height="67px" ImageUrl="~/Imagenes/editarUsuario.png" Width="81px" OnClick="ImageButton3_Click" />
            </p>
            <p class="text-center">
                Editar Usuario</p>
        </div>
        <div class="col-sm-3">
            <h3 class="text-center"><strong>Gestión de Parqueos</strong></h3>
            <p>
                <asp:ImageButton ID="ImageButton4" runat="server" Height="61px" ImageUrl="~/Imagenes/crearEstacionamiento.png" Width="73px" OnClick="ImageButton4_Click" />
            </p>
            <p>Crear Estacionamiento</p>
            <p>
                <asp:ImageButton ID="ImageButton5" runat="server" Height="70px" ImageUrl="~/Imagenes/agregarEspacio.png" Width="69px" OnClick="ImageButton5_Click" />
            </p>
            <p>Agregar Espacio</p>
        </div>
        <div class="col-sm-3"></div>
    </div>
    <div class="row">
        <div class="col-md-4"></div>
        <div class="col-md-4">
            <h3><strong>Informes y Estadísticas</strong></h3>
            <p>

                <asp:ImageButton ID="ImageButton6" runat="server" Height="67px" ImageUrl="~/Imagenes/statistics.png" OnClick="ImageButton6_Click" Width="69px" />

            </p>
            <p>

                Informes y Estadísticas</p>
            <p>

                <asp:SqlDataSource ID="sqlGetNombre" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoDisennoConnectionString %>" SelectCommand="SELECT [nombreCompleto] FROM [Persona] WHERE ([identificacion] = @identificacion)">
                    <SelectParameters>
                        <asp:SessionParameter Name="identificacion" SessionField="ID" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>

            </p>
        </div>   
    </div>

</asp:Content>
