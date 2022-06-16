<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="verUnFuncionario.aspx.cs" Inherits="EstacionaTEC.Views.verUnFuncionario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <h1 class="text-center" style="text-align: center">Estaciona<span style="color: #6666FF">TEC</span></h1>
    </div>

    <div align="center" class="row">
        <div class="col-md-4"></div>
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
                &nbsp;<asp:Label ID="lblInfo" runat="server" Text=""></asp:Label>
            </h2>
            
        </div>
    </div>
    <div class="row" align="center">
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
        <p>
                &nbsp;</p>
        <h2 class="text-center">
                <asp:Label ID="lblVehiculos" runat="server" Text=""></asp:Label>
        </h2>
        <p class="text-center">
                <asp:GridView ID="GridView2" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="453px" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="sqlVehiculos">
                    <AlternatingRowStyle BackColor="White" HorizontalAlign="Center" VerticalAlign="Middle" />
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                        <asp:BoundField DataField="placa" HeaderText="placa" SortExpression="placa" />
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" HorizontalAlign="Center" VerticalAlign="Middle" />
                    <EmptyDataRowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle" />
                    <RowStyle BackColor="#EFF3FB" HorizontalAlign="Center" VerticalAlign="Middle" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" HorizontalAlign="Center" VerticalAlign="Middle" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" HorizontalAlign="Center" VerticalAlign="Middle" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" HorizontalAlign="Center" VerticalAlign="Middle" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" HorizontalAlign="Center" VerticalAlign="Middle" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:GridView>
            </p>
        <p class="text-center">
                <asp:SqlDataSource ID="sqlVehiculos" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoDisennoConnectionString %>" SelectCommand="SELECT [Id], [placa] FROM [Vehiculo] WHERE ([idPersona] = @idPersona)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="txtIdentificacion" Name="idPersona" PropertyName="Text" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </p>
        <h2 class="text-center">
                <asp:Label ID="lblFranjas" runat="server" Text=""></asp:Label>
            </h2>
        <p class="text-center">
                <asp:GridView ID="GridView3" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="449px" AutoGenerateColumns="False" DataSourceID="sqlFranjas">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="Día" HeaderText="Día" SortExpression="Día" />
                        <asp:BoundField DataField="Hora de Inicio" HeaderText="Hora de Inicio" SortExpression="Hora de Inicio" />
                        <asp:BoundField DataField="Hora de Fin" HeaderText="Hora de Fin" SortExpression="Hora de Fin" />
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
        <p class="text-center">
                <asp:SqlDataSource ID="sqlFranjas" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoDisennoConnectionString %>" SelectCommand="SELECT DiasSemana.[dia] as Día, FranjaHoraria.[inicio] as 'Hora de Inicio', FranjaHoraria.[fin] as 'Hora de Fin' FROM [FranjaHoraria]  INNER JOIN DiasSemana ON FranjaHoraria.idDia = DiasSemana.id WHERE ([idPersona] = @idPersona)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="txtIdentificacion" Name="idPersona" PropertyName="Text" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </p>
            <p>
                <asp:Button ID="btnVolver" runat="server" Text="Volver" OnClick="btnVolver_Click" />
            </p>
            <p class="text-center">
                &nbsp;</p>
    </div>
</asp:Content>
