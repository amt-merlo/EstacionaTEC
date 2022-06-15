<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdministradorLanding.aspx.cs" Inherits="EstacionaTEC.Views.AdministradorLanding" %>
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
                <asp:Button ID="btnCrearEstacionamiento" runat="server" Text="Crear Estacionamiento" OnClick="btnCrearEstacionamiento_Click" Height="36px" Width="232px" />
            </p>
            <p class="text-center">
                <asp:Button ID="btnAgregarEspacio" runat="server" Text="Agregar Espacio" Height="34px" Width="231px" OnClick="btnAgregarEspacio_Click" />
            </p>
            <p class="text-center">
                <asp:Button ID="btnRegistrarUsuario" runat="server" Text="Registrar Funcionario" Height="34px" Width="230px" OnClick="btnRegistrarUsuario_Click" />
            </p>
            <p class="text-center">
                <asp:Button ID="btnEditarUsuario" runat="server" Text="Editar Funcionarios" Height="37px" Width="231px" OnClick="btnEditarUsuario_Click" />
            </p>
            <p class="text-center">
                <asp:Button ID="btnInformes" runat="server" Text="Informes y Estadísticas" Height="35px" Width="233px" OnClick="btnInformes_Click" />
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
