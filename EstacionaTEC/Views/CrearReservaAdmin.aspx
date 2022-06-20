<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CrearReservaAdmin.aspx.cs" Inherits="EstacionaTEC.Views.CrearReservaAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <h1 class="text-center">Estaciona<span style="color: #6666FF; ">TEC</span></h1>
    </div>
    <div align="center">
        <h2 class="text-center">Estacionamientos Disponibles</h2>
            <h4 class="text-center">Bienvenido(a)
                <asp:Label ID="lblNombre" runat="server" Text=""></asp:Label>
            </h4>
        <p class="text-center">A continuación se encuentra la lista de estacionamientos disponibles para realizar reservas</p>
        <p class="text-center">Por favor, seleccione el parqueo en el que desea reservar un espacio</p>
        <p class="text-center">
            <asp:SqlDataSource ID="sqlEstacionamientos" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoDisennoConnectionString %>" SelectCommand="mostrarEstacionamientosPorTipoEspacio" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:SessionParameter DefaultValue="1" Name="inTipo" SessionField="Tipo" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </p>
        *<p class="text-center">
            <asp:GridView ID="gridEstacionamiento" HorizontalAlign="Center" runat="server" Width="664px" CellPadding="4" GridLines="None" AutoGenerateColumns="False" AutoGenerateSelectButton="True" DataSourceID="sqlEstacionamientos" OnSelectedIndexChanged="gridEstacionamiento_SelectedIndexChanged" DataKeyNames="ID" ForeColor="#333333">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" InsertVisible="False" ReadOnly="True" />
                    <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                    <asp:BoundField DataField="Ubicación" HeaderText="Ubicación" SortExpression="Ubicación" />
                    <asp:BoundField DataField="Cantidad de espacios actual" HeaderText="Cantidad de espacios actual" SortExpression="Cantidad de espacios actual" />
                    <asp:BoundField DataField="Hora apertura" HeaderText="Hora apertura" SortExpression="Hora apertura" />
                    <asp:BoundField DataField="Hora cierre" HeaderText="Hora cierre" SortExpression="Hora cierre" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" ForeColor="White" Font-Bold="True" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" HorizontalAlign="Center" VerticalAlign="Middle" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            </p>
        <p class="text-center">
            <asp:SqlDataSource ID="sqlTipoUsuario" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoDisennoConnectionString %>" SelectCommand="getTipoUsuario" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:SessionParameter Name="inIdentificacion" SessionField="ID" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            </p>
        <p class="text-center">
            &nbsp;</p>
    </div>
</asp:Content>
