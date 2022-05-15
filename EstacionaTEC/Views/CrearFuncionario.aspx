<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CrearFuncionario.aspx.cs" Inherits="EstacionaTEC.Views.CrearFuncionario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <h1 class="text-center" style="text-align: center">EstacionaTEC</h1>
    </div>
    <div class="row">
        <div class="col-md-4">
            <p class="text-right">
                Funcionario:
                <asp:Label ID="lblNombre" runat="server" Text=""></asp:Label>
            </p>
            <p class="text-right">
                &nbsp;</p>
            <h2 class="text-left">Registrar Nuevo Funcionario</h2>
            <p class="text-left">Por favor ingrese la información correspondiente del funcionario que desea registrar</p>
            <p class="text-left">&nbsp;</p>
            <p class="text-left">Número de Cédula:
                <asp:TextBox ID="txtBoxIdentificacion" runat="server" Width="161px" ForeColor="Black"></asp:TextBox>
            </p>
            <p class="text-left">Nombre completo:
                <asp:TextBox ID="txtBoxNombre" runat="server" Width="168px" ForeColor="Black"></asp:TextBox>
            </p>
            <p class="text-left">Teléfono:
                <asp:TextBox ID="txtBoxTelefono" runat="server" Width="221px" ForeColor="Black"></asp:TextBox>
            </p>
            <p class="text-left">Correo Institucional:
                <asp:TextBox ID="txtBoxCorreo" runat="server" Width="154px" ForeColor="Black" Height="23px"></asp:TextBox>
            &nbsp;
                <asp:Label ID="lblCorreo" runat="server" Text="" style="color: #CC0000"></asp:Label>
            </p>
            <p class="text-left">Departamento:
                <asp:DropDownList ID="ddListDepartamento" runat="server" Height="28px" Width="193px" DataSourceID="sqlGetDepartamentos" DataTextField="tipo" DataValueField="tipo" ForeColor="Black">
                </asp:DropDownList>
            </p>
            <p class="text-left">¿El funcionario ocupa un cargo de jefatura?<asp:RadioButtonList ID="radButtonJefatura" runat="server">
                <asp:ListItem>No</asp:ListItem>
                <asp:ListItem>Si</asp:ListItem>
                </asp:RadioButtonList>
            </p>
            <p class="text-left">
                ¿Desea brindarle a este funcionario permisos de administrador?</p>
            <p class="text-left">
                <asp:RadioButtonList ID="radButtonAdmin" runat="server">
                    <asp:ListItem>No</asp:ListItem>
                    <asp:ListItem>Si</asp:ListItem>
                </asp:RadioButtonList>
            </p>
            <p class="text-left">
                Servicios Especiales</p>
            <p class="text-left">
                <asp:RadioButtonList ID="radButtonNecesidadesEspeciales" runat="server">
                    <asp:ListItem>No</asp:ListItem>
                    <asp:ListItem>Si</asp:ListItem>
                </asp:RadioButtonList>
            </p>
            <p class="text-left">
                ¿El funcionario labora para el sector administrativo?</p>
            <p class="text-left">
                <asp:RadioButtonList ID="radButtonAdministrativo" runat="server">
                    <asp:ListItem>No</asp:ListItem>
                    <asp:ListItem>Si</asp:ListItem>
                </asp:RadioButtonList>
            </p>
            <p class="text-left">
                ¿El funcionario se encuentra en planilla?</p>
            <p class="text-left">
                <asp:RadioButtonList ID="radButtonPlanilla" runat="server">
                    <asp:ListItem>No</asp:ListItem>
                    <asp:ListItem>Si</asp:ListItem>
                </asp:RadioButtonList>
            </p>
            <p class="text-left">
                &nbsp;</p>
            <p class="text-left">
                Por favor ingrese la contraseña con la que el funcionario podrá ingresar al sistema de reserva de estacionamientos.</p>
            <p class="text-left">
                <asp:TextBox ID="txtBoxContrasenna" runat="server" ForeColor="Black" Height="23px" Width="263px"></asp:TextBox>
            </p>
            <p class="text-left">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnRegistrar" runat="server" OnClick="Button1_Click" Text="Registrar" Width="149px" Height="32px" />
            </p>
            <p class="text-left">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="btnMenu" runat="server" Text="Menú Principal" Width="147px" OnClick="btnMenu_Click" />
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
            <p class="text-center">
                <asp:SqlDataSource ID="sqlGetDepartamentos" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoDisennoConnectionString %>" SelectCommand="SELECT [tipo] FROM [Departamento]"></asp:SqlDataSource>
            </p>
            <p class="text-center">
                <asp:Label ID="lblPrueba" runat="server" ForeColor="#3333FF"></asp:Label>
            </p>
        </div>   
    </div>
</asp:Content>
