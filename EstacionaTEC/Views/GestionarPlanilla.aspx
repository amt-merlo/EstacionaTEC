<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="GestionarPlanilla.aspx.cs" Inherits="EstacionaTEC.Views.GestionarPlanilla" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <h1 class="text-center" style="text-align: center">EstacionaTEC</h1>
    </div>
    <div align="center" class="row">
        <div class="col-md-4">
            <h2 class="text-left">Gestionar Planilla del Departamento</h2>
            <asp:SqlDataSource ID="sqlGetNombre" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoDisennoConnectionString %>" SelectCommand="SELECT [nombreCompleto] FROM [Persona] WHERE ([identificacion] = @identificacion)">
                <SelectParameters>
                    <asp:SessionParameter Name="identificacion" SessionField="ID" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <p class="text-left">
                &nbsp;</p>
            <h3 class="text-left">
                Información del Funcionario Seleccionado</h3>
            <p class="text-left">
                Identificación: 
                <asp:Label ID="lblIdentificacion" runat="server" Text=""></asp:Label>
            </p>
            <p class="text-left">
                Nombre: <asp:Label ID="lblNombre" runat="server" Text=""></asp:Label>
            </p>
            <p class="text-left">
                En planilla: 
                <asp:Label ID="lblPlanilla" runat="server" Text=""></asp:Label>
            </p>
            <p class="text-left">
                ¿Desea cambiar el estado del funcionario con respecto a la planilla?<asp:RadioButtonList ID="radButtonPlanilla" runat="server" Width="608px">
                    <asp:ListItem>No</asp:ListItem>
                    <asp:ListItem>Si</asp:ListItem>
                </asp:RadioButtonList>
            </p>
            <p class="text-left">
                <asp:Button ID="btnAceptar" runat="server" Text="Aceptar" OnClick="btnAceptar_Click" />
            &nbsp;</p>
            <p class="text-left">
                <asp:Label ID="lblMensaje" runat="server" Text=""></asp:Label>
            </p>
            <h2 style="text-align: center" class="text-left">Funcionarios</h2>
            <p>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AutoGenerateSelectButton="True" CellPadding="4" DataKeyNames="Identificación" DataSourceID="sqlGetPersonas" ForeColor="#333333" GridLines="None" ShowFooter="True" ShowHeaderWhenEmpty="True" Width="563px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="Identificación" HeaderText="Identificación" ReadOnly="True" SortExpression="Identificación" />
                        <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                        <asp:BoundField DataField="Correo Institucional" HeaderText="Correo Institucional" SortExpression="Correo Institucional" />
                        <asp:CheckBoxField DataField="En Planilla" HeaderText="En Planilla" SortExpression="En Planilla" />
                    </Columns>
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
                <asp:SqlDataSource ID="sqlGetPersonas" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoDisennoConnectionString %>" SelectCommand="SELECT [identificacion] as Identificación, [nombreCompleto] as Nombre, [correoInstitucional] as 'Correo Institucional', [estaEnPlanilla] as 'En Planilla' FROM [Persona] WHERE ([idDepartamento] = @idDepartamento)">
                    <SelectParameters>
                        <asp:SessionParameter Name="idDepartamento" SessionField="Departamento" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </p>
            <p class="text-center">
                &nbsp;</p>
        </div>
    </div>
</asp:Content>
