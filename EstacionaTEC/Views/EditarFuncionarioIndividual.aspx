<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditarFuncionarioIndividual.aspx.cs" Inherits="EstacionaTEC.Views.EditarFuncionarioIndividual" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <h1 class="text-center">EstacionaTEC</h1>
    </div>
    <div class="row" align="center">
        <div class="col-md-4">
            <h2 class="text-left">Editar Información Personal de Funcionario</h2>
            <h4 class="text-left">Bienvenido(a)
                <asp:Label ID="lblNombre" runat="server" Text=""></asp:Label>
            </h4>
            <p class="text-left">
                &nbsp;</p>
            <p class="text-left">
                Identificación:
                <asp:Label ID="lblIdentificacion" runat="server" Text=""></asp:Label>
            </p>
            <p class="text-left">
                Nombre: <asp:TextBox ID="txtBoxNombre" runat="server" ForeColor="Black"></asp:TextBox>
            </p>
            <p class="text-left">
                Celular:
                <asp:TextBox ID="txtBoxCelular" runat="server" ForeColor="Black"></asp:TextBox>
            </p>
            <p class="text-left">
                Correo Institucional:<asp:TextBox ID="txtBoxCorreo" runat="server" ForeColor="Black"></asp:TextBox>
            </p>
            <p class="text-left">
                Departamento:
                <asp:DropDownList ID="ddListDepartamento" runat="server" DataSourceID="sqlDepartamentos" DataTextField="tipo" DataValueField="tipo" ForeColor="Black">
                </asp:DropDownList>
                <asp:SqlDataSource ID="sqlDepartamentos" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoDisennoConnectionString %>" SelectCommand="SELECT [tipo] FROM [Departamento]"></asp:SqlDataSource>
            </p>
            <p class="text-left">
                &nbsp;</p>
            <p class="text-left">
                ¿El funcionario ocupa un cargo de jefatura?</p>
            <p class="text-left">
                <asp:RadioButtonList ID="radButtonJefatura" runat="server">
                    <asp:ListItem>No</asp:ListItem>
                    <asp:ListItem>Si</asp:ListItem>
                </asp:RadioButtonList>
            </p>
            <p class="text-left">
                ¿El funcionario tiene permisos de adminstrador?</p>
            <p class="text-left">
                <asp:RadioButtonList ID="radButtonAdmin" runat="server">
                    <asp:ListItem>No</asp:ListItem>
                    <asp:ListItem>Si</asp:ListItem>
                </asp:RadioButtonList>
            </p>
            <p class="text-left">
                ¿El funcionario tiene servicios especiales?</p>
            <p class="text-left">
                <asp:RadioButtonList ID="radButtonServiciosEspeciales" runat="server">
                    <asp:ListItem>No</asp:ListItem>
                    <asp:ListItem>Si</asp:ListItem>
                </asp:RadioButtonList>
            </p>
            <p class="text-left">
                <asp:Button ID="btnGuardar" runat="server" Text="Guardar Cambios" OnClick="btnGuardar_Click" />
            &nbsp;&nbsp;
                <asp:Button ID="btnDescartar" runat="server" Text="Descartar" />
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
