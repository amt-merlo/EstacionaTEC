<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="verUnFuncionario.aspx.cs" Inherits="EstacionaTEC.Views.verUnFuncionario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <h1 class="text-center" style="text-align: center">EstacionaTEC</h1>
    </div>
    <div align="center" class="row">
        <div class="col-md-4">
            <h2 class="text-left" style="text-align: center">Informe sobre un funcionario</h2>
            <h4>Bienvenido(a)
                <asp:Label ID="lblNombre" runat="server" Text=""></asp:Label>
            </h4>
            <asp:SqlDataSource ID="sqlGetNombre" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoDisennoConnectionString %>" SelectCommand="SELECT [nombreCompleto] FROM [Persona] WHERE ([identificacion] = @identificacion)">
                <SelectParameters>
                    <asp:SessionParameter Name="identificacion" SessionField="ID" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <p class="text-center" style="text-align: center">
                &nbsp;</p>
            Digite la identificación de la persona que desea buscar
            <p class="text-center" style="text-align: center">
                <asp:TextBox ID="txtIdentificacion" runat="server" ForeColor="Black"></asp:TextBox>
&nbsp;&nbsp;
                <asp:Button ID="btnBuscar" runat="server" OnClick="btnBuscar_Click" Text="Buscar" />
            </p>
            <h2 style="text-align: center">
                <asp:Label ID="lblId" runat="server" Text="Label" Visible="False"></asp:Label>
                Personas</h2>
            <p>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="identificacion" DataSourceID="sqlGetPersonas" ForeColor="#333333" GridLines="None" ShowFooter="True" ShowHeaderWhenEmpty="True" Width="1241px" >
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="identificacion" HeaderText="identificacion" ReadOnly="True" SortExpression="identificacion" />
                        <asp:BoundField DataField="nombreCompleto" HeaderText="nombreCompleto" SortExpression="nombreCompleto" />
                        <asp:BoundField DataField="celular" HeaderText="celular" SortExpression="celular" />
                        <asp:BoundField DataField="correoInstitucional" HeaderText="correoInstitucional" SortExpression="correoInstitucional" />
                        <asp:BoundField DataField="correoAlterno" HeaderText="correoAlterno" SortExpression="correoAlterno" />
                        <asp:BoundField DataField="Departamento" HeaderText="Departamento" SortExpression="Departamento" />
                        <asp:CheckBoxField DataField="esJefatura" HeaderText="esJefatura" SortExpression="esJefatura" />
                        <asp:CheckBoxField DataField="esAdmin" HeaderText="esAdmin" SortExpression="esAdmin" />
                        <asp:CheckBoxField DataField="serviciosEspeciales" HeaderText="serviciosEspeciales" SortExpression="serviciosEspeciales" />
                        <asp:CheckBoxField DataField="estaEnPlanilla" HeaderText="estaEnPlanilla" SortExpression="estaEnPlanilla" />
                        <asp:CheckBoxField DataField="esAdministrativo" HeaderText="esAdministrativo" SortExpression="esAdministrativo" />
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
                <asp:SqlDataSource ID="sqlGetPersonas" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoDisennoConnectionString %>" SelectCommand="SELECT [identificacion], [nombreCompleto], [celular], [correoInstitucional], [correoAlterno], D.tipo AS Departamento, [esJefatura], [esAdmin], [serviciosEspeciales], [estaEnPlanilla], [esAdministrativo] FROM [Persona] AS P INNER JOIN [Departamento] AS D ON  P.idDepartamento = D.Id WHERE ([identificacion] = @identificacion)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="txtIdentificacion" Name="identificacion" PropertyName="Text" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </p>
            <p class="text-center">
                &nbsp;</p>
        </div>
    </div>
</asp:Content>
