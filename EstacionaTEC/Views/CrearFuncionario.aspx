<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CrearFuncionario.aspx.cs" Inherits="EstacionaTEC.Views.CrearFuncionario" %>
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
            <p class="text-letf">
                &nbsp;</p>
            <h2 class="text-left">Registrar Nuevo Funcionario</h2>
            <p class="text-left" style="text-align: left">Por favor ingrese la información correspondiente del funcionario que desea registrar</p>
            <p class="text-left" style="text-align: center">&nbsp;</p>
            <p class="text-left" style="text-align: left">Número de Cédula:
                <asp:TextBox ID="txtBoxIdentificacion" runat="server" Width="161px" ForeColor="Black"></asp:TextBox>
            </p>
            <p class="text-right">Nombre completo:
                <asp:TextBox ID="txtBoxNombre" runat="server" Width="168px" ForeColor="Black"></asp:TextBox>
            </p>
            <p class="text-left" style="text-align: left">Teléfono:
                <asp:TextBox ID="txtBoxTelefono" runat="server" Width="221px" ForeColor="Black"></asp:TextBox>
            </p>
            <p class="text-left" style="text-align: left">Correo Institucional:
                <asp:TextBox ID="txtBoxCorreo" runat="server" Width="154px" ForeColor="Black" Height="23px"></asp:TextBox>
            &nbsp;
                <asp:Label ID="lblCorreo" runat="server" Text="" style="color: #CC0000"></asp:Label>
            </p>
            <p class="text-left" style="text-align: left">Departamento:
                <asp:DropDownList ID="ddListDepartamento" runat="server" Height="28px" Width="193px" DataSourceID="sqlGetDepartamentos" DataTextField="tipo" DataValueField="tipo" ForeColor="Black">
                </asp:DropDownList>
            </p>
            <p class="text-left" style="text-align: center">
                <div class="text-right">
                    ¿El funcionario ocupa un cargo de jefatura?</div>
                <asp:RadioButtonList ID="radButtonJefatura" runat="server" Width="305px">
                <asp:ListItem>No</asp:ListItem>
                <asp:ListItem>Si</asp:ListItem>
                </asp:RadioButtonList>
            </p>
            <p class="text-left" style="text-align: left">
                ¿Desea brindarle a este funcionario permisos de administrador?</p>
            <p class="text-left">
                <asp:RadioButtonList ID="radButtonAdmin" runat="server" Width="313px">
                    <asp:ListItem>No</asp:ListItem>
                    <asp:ListItem>Si</asp:ListItem>
                </asp:RadioButtonList>
            </p>
            <p class="text-left">
                ¿Requiere el funcionario de servicios especiales?</p>
            <p class="text-left">
                <asp:RadioButtonList ID="radButtonNecesidadesEspeciales" runat="server" Width="322px">
                    <asp:ListItem>No</asp:ListItem>
                    <asp:ListItem>Si</asp:ListItem>
                </asp:RadioButtonList>
            </p>
            <p class="text-left">
                ¿El funcionario labora para el sector administrativo?</p>
            <p class="text-left">
                <asp:RadioButtonList ID="radButtonAdministrativo" runat="server" Width="328px">
                    <asp:ListItem>No</asp:ListItem>
                    <asp:ListItem>Si</asp:ListItem>
                </asp:RadioButtonList>
            </p>
            <p class="text-left">
                ¿El funcionario se encuentra en planilla?</p>
            <p class="text-left">
                <asp:RadioButtonList ID="radButtonPlanilla" runat="server" Width="327px">
                    <asp:ListItem>No</asp:ListItem>
                    <asp:ListItem>Si</asp:ListItem>
                </asp:RadioButtonList>
            </p>
            <p class="text-left">
                &nbsp;</p>
            <p class="text-center">
                Por favor ingrese la contraseña con la que el funcionario podrá ingresar al sistema de reserva de estacionamientos.</p>
            <p class="text-center">
                <asp:TextBox ID="txtBoxContrasenna" runat="server" ForeColor="Black" Height="23px" Width="263px"></asp:TextBox>
            </p>
            <p class="text-center">
                &nbsp;
                <asp:Button ID="btnRegistrar" runat="server" OnClick="Button1_Click" Text="Registrar" Width="149px" Height="32px" />
            </p>
            <p class="text-center">
                &nbsp; &nbsp;<asp:Button ID="btnMenu" runat="server" Text="Menú Principal" Width="147px" OnClick="btnMenu_Click" Height="33px" />
            </p>
            <p class="text-left">
                <asp:SqlDataSource ID="sqlGetNombre" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoDisennoConnectionString %>" SelectCommand="SELECT [nombreCompleto] FROM [Persona] WHERE ([identificacion] = @identificacion)">
                    <SelectParameters>
                        <asp:SessionParameter Name="identificacion" SessionField="ID" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </p>
            <p class="text-left">
                <asp:SqlDataSource ID="sqlGetTipoEstacionamiento" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoDisennoConnectionString %>" SelectCommand="SELECT [tipo] FROM [TipoEstacionamiento]"></asp:SqlDataSource>
            </p>
            <p class="text-left">
                <asp:SqlDataSource ID="sqlGetDepartamentos" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoDisennoConnectionString %>" SelectCommand="SELECT [tipo] FROM [Departamento]"></asp:SqlDataSource>
            </p>
            <p class="text-left">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblPrueba" runat="server" ForeColor="#3333FF" style="text-align: center"></asp:Label>
            </p>
        </div>  
        <div class="col-md-4"></div>
    </div>
</asp:Content>
