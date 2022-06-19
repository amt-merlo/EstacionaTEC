<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CrearReserva.aspx.cs" Inherits="EstacionaTEC.Views.CrearReserva" %>
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
            <asp:GridView ID="gridEstacionamiento" HorizontalAlign="Center" runat="server" Width="636px" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="5" GridLines="Vertical" AutoGenerateColumns="False" AutoGenerateSelectButton="True" CellSpacing="5" DataSourceID="sqlEstacionamientos" OnSelectedIndexChanged="gridEstacionamiento_SelectedIndexChanged" DataKeyNames="ID">
                <AlternatingRowStyle BackColor="#DCDCDC" />
                <Columns>
                    <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" InsertVisible="False" ReadOnly="True" />
                    <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                    <asp:BoundField DataField="Ubicación" HeaderText="Ubicación" SortExpression="Ubicación" />
                    <asp:BoundField DataField="Cantidad de espacios actual" HeaderText="Cantidad de espacios actual" SortExpression="Cantidad de espacios actual" />
                    <asp:BoundField DataField="Hora apertura" HeaderText="Hora apertura" SortExpression="Hora apertura" />
                    <asp:BoundField DataField="Hora cierre" HeaderText="Hora cierre" SortExpression="Hora cierre" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#EEEEEE" ForeColor="Black" HorizontalAlign="Center" VerticalAlign="Middle" />
                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#000065" />
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
