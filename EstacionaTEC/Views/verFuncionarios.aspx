<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="verFuncionarios.aspx.cs" Inherits="EstacionaTEC.Views.verFuncionarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <h1 class="text-center" style="text-align: center">EstacionaTEC</h1>
    </div>
    <div align="center" class="row">
        <div class="col-md-4">
            <h2 class="text-left" style="text-align: center">Informe sobre todos los funcionarios</h2>
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
            ¿Desea filtrar los funcionarios por departamento?<asp:RadioButtonList ID="radButtonFiltro" runat="server" OnSelectedIndexChanged="radButtonFiltro_SelectedIndexChanged">
                <asp:ListItem>No</asp:ListItem>
                <asp:ListItem>Si</asp:ListItem>
                </asp:RadioButtonList>
            <p class="text-center" style="text-align: center">
                &nbsp;</p>
            <p class="text-center" style="text-align: center">
                <asp:Label ID="lblFiltro" runat="server" Text=""></asp:Label>
            </p>
            <p class="text-center" style="text-align: center">
                <asp:DropDownList ID="ddListDepartamento" runat="server" DataSourceID="sqlGetDepartamentos" DataTextField="tipo" DataValueField="tipo" ForeColor="Black" Height="27px" Width="140px" OnSelectedIndexChanged="ddListDepartamento_SelectedIndexChanged">
                </asp:DropDownList>
                <asp:SqlDataSource ID="sqlGetDepartamentos" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoDisennoConnectionString %>" SelectCommand="SELECT [tipo] FROM [Departamento]"></asp:SqlDataSource>
            </p>
            <p class="text-center" style="text-align: center">
                &nbsp;</p>
            <h2 style="text-align: center">Personas</h2>
            <p>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ID" DataSourceID="sqlGetEspacios" ForeColor="#333333" GridLines="None" ShowFooter="True" ShowHeaderWhenEmpty="True" Width="652px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                        <asp:BoundField DataField="Numeración" HeaderText="Numeración" SortExpression="Numeración" />
                        <asp:BoundField DataField="Tipo" HeaderText="Tipo" SortExpression="Tipo" />
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
                <asp:SqlDataSource ID="sqlGetPersonas" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoDisennoConnectionString %>" SelectCommand="buscarPersonasPorDepartamento" SelectCommandType="StoredProcedure">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="ddListDepartamento" DefaultValue="-1" Name="inIdDepartamento" PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </p>
            <p class="text-center">
                &nbsp;</p>
        </div>
    </div>
</asp:Content>
