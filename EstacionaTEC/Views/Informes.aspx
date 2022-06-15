<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Informes.aspx.cs" Inherits="EstacionaTEC.Views.Informes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <div class="jumbotron">
        <h1 class="text-center">Estaciona<span style="color: #6666FF">TEC</span></h1>
    </div>
    <div>
        <div>
            <h2 class="text-left">Informes y Estadísticas</h2>
            <h4 class="text-left">Bienvenido(a)
                <asp:Label ID="lblNombre" runat="server" Text=""></asp:Label>
            </h4>
            <p class="text-center">
                <asp:Button ID="btnInfoEstacionamientos" runat="server" Text="Informe de Estacionamientos" OnClick="btnInfoEstacionamientos_Click" Width="245px" />
            </p>
            <p class="text-center">
                &nbsp;<asp:Button ID="btnInfoFuncionarios" runat="server" Text="Informe de Funcionarios" OnClick="btnInfoFuncionarios_Click" Width="241px" />
                &nbsp;</p>
            <p class="text-center">
                <asp:Button ID="btnEstadisticasFranjasHorarias" runat="server" Text="Estadísticas de Franjas Horarias" OnClick="btnEstadisticasFranjasHorarias_Click" Width="245px" />
            </p>
            <p class="text-center">
                <asp:Button ID="btnVerUnFuncionario" runat="server" Text="Ver un Funcionario" OnClick="btnVerUnFuncionario_Click" Width="245px" />
            </p>
            <p class="text-center">
                <asp:Button ID="btnModificarPlanilla" runat="server" Text="Gestionar Planilla" Width="241px" OnClick="btnModificarPlanilla_Click" />
            </p>
            <p class="text-center">
                &nbsp;</p>
            <p class="text-center">
                &nbsp;</p>
            <h3>
                Regresar</h3>
            <p class="text-center">
                <asp:Button ID="btnMenu" runat="server" Text="Menú Principal" OnClick="btnMenu_Click" />
            </p>
            <p class="text-center">
                &nbsp;</p>
            
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
