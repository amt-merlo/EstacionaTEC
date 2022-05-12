<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CrearEstacionamiento.aspx.cs" Inherits="EstacionaTEC.Views.CrearEstacionamiento" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <h1 class="text-center" style="text-align: center">EstacionaTEC</h1>
    </div>
    <div class="row" align="center">
        <div class="col-md-4">
            <p class="text-right">
                Funcionario:
                <asp:Label ID="lblNombre" runat="server" Text=""></asp:Label>
            </p>
            <p class="text-right">
                &nbsp;</p>
            <h2 class="text-left">Registrar Nuevo Estacionamiento</h2>
            <p class="text-left">Indique el tipo de estacionamiento que desea registrar:
                <asp:DropDownList ID="ddTipoEstacionamiento" runat="server" DataSourceID="sqlGetTipoEstacionamiento" DataTextField="tipo" DataValueField="tipo" ForeColor="#000099" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                </asp:DropDownList>
            </p>
            <p class="text-left">
                <asp:Label ID="lblPrueba" runat="server" Text="Label"></asp:Label>
            </p>
            <p class="text-left">
                Nombre:
                <asp:TextBox ID="txtBoxNombre" runat="server"></asp:TextBox>
            </p>
            <p class="text-left">
                Ubicación:
                <asp:TextBox ID="txtBoxUbicacion" runat="server"></asp:TextBox>
            </p>
            <p class="text-left">
                Hora de apertura:
                <asp:TextBox ID="txtBoxHoraApertura" runat="server"></asp:TextBox>
            </p>
            <p class="text-left">
                Hora de cierre:
                <asp:TextBox ID="txtBoxHoraCierra" runat="server"></asp:TextBox>
            </p>
            <p class="text-left">
                Número de contrato:
                <asp:TextBox ID="txtBoxNumContrato" runat="server"></asp:TextBox>
            </p>
            <h3>
                Información de contacto</h3>
            <p class="text-left">
                &nbsp;<asp:Label ID="lblNombreContacto" runat="server" Text="Nombre: "></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </p>
            <p class="text-left">
                <asp:Label ID="lblTelefono" runat="server" Text="Telefono: "></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </p>
            <p class="text-left">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnRegistrar" runat="server" OnClick="Button1_Click" Text="Registrar" Width="129px" />
            </p>
            <p class="text-center">
                <asp:SqlDataSource ID="sqlGetNombre" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoDisennoConnectionString %>" SelectCommand="SELECT [nombreCompleto] FROM [Persona] WHERE ([identificacion] = @identificacion)">
                    <SelectParameters>
                        <asp:SessionParameter Name="identificacion" SessionField="ID" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </p>
            <p class="text-center">
                <asp:SqlDataSource ID="sqlGetTipoEstacionamiento" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoDisennoConnectionString %>" SelectCommand="SELECT [tipo] FROM [TipoEstacionamiento]"></asp:SqlDataSource>
            </p>
        </div>   
    </div>
</asp:Content>
