<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditarInfoPersonal.aspx.cs" Inherits="EstacionaTEC.Views.EditarInfoPersonal" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
      <div class="jumbotron">
        <h1 class="text-center">EstacionaTEC</h1>
    </div>
    <div class="row" align="center">
        <div class="col-md-4">
            <h2 class="text-center">Información Personal</h2>
            <h4 class="text-center">Bienvenido(a)
                <asp:Label ID="lblNombre" runat="server" Text=""></asp:Label>
            &nbsp;</h4>
            <p class="text-center">Si desea agregar o modificar su correo alterno para el envío de notificaciones del sistema puede hacerlo a continuación</p>
            <p class="text-center">
                <asp:TextBox ID="txtBoxCorreoAlterno" runat="server" ForeColor="Black" Width="170px"></asp:TextBox>
            &nbsp;
                <asp:Button ID="btnGuardarCorreo" runat="server" Text="Guardar" Width="127px" OnClick="btnGuardarCorreo_Click" />
            &nbsp;</p>
            <p class="text-center">
                <asp:Label ID="lblMensajeCorreo" runat="server" Text=""></asp:Label>
            </p>
            <h3>
                Vehículos Registrados</h3>
            <p class="text-center">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ID" DataSourceID="sqlGetVehiculos" ForeColor="#333333" GridLines="None" ShowFooter="True" ShowHeaderWhenEmpty="True" Width="280px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                        <asp:BoundField DataField="Placa" HeaderText="Placa" SortExpression="Placa" />
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
                <asp:SqlDataSource ID="sqlGetVehiculos" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoDisennoConnectionString %>" SelectCommand="SELECT [Id] as ID, [placa] as Placa FROM [Vehiculo] WHERE ([idPersona] = @idPersona)">
                    <SelectParameters>
                        <asp:SessionParameter Name="idPersona" SessionField="ID" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </p>
            <h3>
                Registrar Nuevo Vehículo</h3>
            <p class="text-center">
                Ingrese el número de placa del vehículo:
                <asp:TextBox ID="txtBoxPlaca" runat="server" ForeColor="Black" Height="22px"></asp:TextBox>
            </p>
            <p class="text-center">
                &nbsp;</p>
            <p class="text-center">
                <asp:Button ID="btnRegistrarVehiculo" runat="server" Text="Registrar Vehículo" OnClick="btnRegistrarVehiculo_Click" />
            </p>
            <p class="text-center">
                &nbsp;</p>
            <p class="text-center">
                &nbsp;</p>
            <p class="text-center">
                &nbsp;</p>
            <p class="text-center">
                &nbsp;</p>
            
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
