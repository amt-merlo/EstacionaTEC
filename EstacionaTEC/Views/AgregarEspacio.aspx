<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AgregarEspacio.aspx.cs" Inherits="EstacionaTEC.Views.AgregarEspacio" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <h1 class="text-center" style="text-align: center">Estaciona<span style="color: #6666FF">TEC</span></h1>
    </div>
    <div >
        <div class="text-center" >
            <h2 class="text-center">
                <div style="text-align: center">
                    Agregar Espacio en Estacionamiento</div>
                <asp:SqlDataSource ID="sqlGetNombre" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoDisennoConnectionString %>" SelectCommand="SELECT [nombreCompleto] FROM [Persona] WHERE ([identificacion] = @identificacion)">
                    <SelectParameters>
                        <asp:SessionParameter Name="identificacion" SessionField="ID" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </h2>
            <h4 class="text-left">Bienvenido(a)
                <asp:Label ID="lblNombre" runat="server" Text=""></asp:Label>
            </h4>
            <h3 class="text-left">Estacionamientos Propios</h3>
            <p class="text-center">
                  
                <asp:GridView ID="gridViewEstacionamientoPropio" runat="server" AutoGenerateColumns="False" AutoGenerateSelectButton="True" CellPadding="4" DataKeyNames="id" DataSourceID="sqlGetEstacionamientosPropios" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" ShowFooter="True" Width="1120px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                        <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
                        <asp:BoundField DataField="ubicacion" HeaderText="ubicacion" SortExpression="ubicacion" />
                        <asp:BoundField DataField="cantidadEspaciosTotal" HeaderText="cantidadEspaciosTotal" SortExpression="cantidadEspaciosTotal" />
                        <asp:BoundField DataField="horaApertura" HeaderText="horaApertura" SortExpression="horaApertura" />
                        <asp:BoundField DataField="horaCierre" HeaderText="horaCierre" SortExpression="horaCierre" />
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
                <asp:SqlDataSource ID="sqlGetEstacionamientosPropios" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoDisennoConnectionString %>" SelectCommand="SELECT [id], [nombre], [ubicacion], [cantidadEspaciosTotal], [horaApertura], [horaCierre] FROM [Estacionamiento] WHERE ([idTipo] = @idTipo)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="1" Name="idTipo" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
                  
            </p>
            <p class="text-center">
                  
                &nbsp;</p>
            <h3 class="text-left">
                  
                Estacionamientos del Campus</h3>
                  
                <p class="text-center">
                  
                    <asp:GridView ID="gridViewEstacionamientoCampus" runat="server" AutoGenerateColumns="False" AutoGenerateSelectButton="True" CellPadding="4" DataKeyNames="id" DataSourceID="sqlGetEstacionamientosCampus" ForeColor="#333333" GridLines="None" ShowFooter="True" Width="1132px" OnSelectedIndexChanged="gridViewEstacionamientoCampus_SelectedIndexChanged">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                            <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
                            <asp:BoundField DataField="ubicacion" HeaderText="ubicacion" SortExpression="ubicacion" />
                            <asp:BoundField DataField="cantidadEspaciosTotal" HeaderText="cantidadEspaciosTotal" SortExpression="cantidadEspaciosTotal" />
                            <asp:BoundField DataField="cantidadEspaciosActual" HeaderText="cantidadEspaciosActual" SortExpression="cantidadEspaciosActual" />
                            <asp:BoundField DataField="horaApertura" HeaderText="horaApertura" SortExpression="horaApertura" />
                            <asp:BoundField DataField="horaCierre" HeaderText="horaCierre" SortExpression="horaCierre" />
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
                    <asp:SqlDataSource ID="sqlGetEstacionamientosCampus" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoDisennoConnectionString %>" SelectCommand="SELECT [id], [nombre], [ubicacion], [cantidadEspaciosTotal], [cantidadEspaciosActual], [horaApertura], [horaCierre] FROM [Estacionamiento] WHERE ([idTipo] = @idTipo)">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="2" Name="idTipo" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                  
            </p>
            <p class="text-center">
                  
                    &nbsp;</p>
            <h3 class="text-left">
                  
                    Estacionamientos Subcontratados</h3>
            <asp:GridView ID="gridViewEstacionamientoSubcontratado" runat="server" AutoGenerateColumns="False" AutoGenerateSelectButton="True" CellPadding="4" DataKeyNames="ID" DataSourceID="sqlGetEstacionamientosSubcontratados" ForeColor="#333333" GridLines="None" ShowFooter="True" Width="1132px" OnSelectedIndexChanged="gridViewEstacionamientoSubcontratado_SelectedIndexChanged">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                    <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                    <asp:BoundField DataField="Ubicación" HeaderText="Ubicación" SortExpression="Ubicación" />
                    <asp:BoundField DataField="Espacios" HeaderText="Espacios" SortExpression="Espacios" />
                    <asp:BoundField DataField="Disponibilidad" HeaderText="Disponibilidad" SortExpression="Disponibilidad" />
                    <asp:BoundField DataField="Apertura" HeaderText="Apertura" SortExpression="Apertura" />
                    <asp:BoundField DataField="Cierre" HeaderText="Cierre" SortExpression="Cierre" />
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
            <div>
            <br />
            <asp:Button ID="btnMenu" runat="server" Text="Menú Principal" OnClick="btnMenu_Click" />
            </div>
            <asp:SqlDataSource ID="sqlGetEstacionamientosSubcontratados" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoDisennoConnectionString %>" SelectCommand="SELECT [id] as ID, [nombre] as Nombre, [ubicacion] as Ubicación, [cantidadEspaciosTotal] as Espacios, [cantidadEspaciosActual] as Disponibilidad, [horaApertura] as Apertura, [horaCierre] as Cierre FROM [Estacionamiento] WHERE ([idTipo] = @idTipo)">
                <SelectParameters>
                    <asp:Parameter DefaultValue="3" Name="idTipo" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <div>
            <br />
            </div>
            <p class="text-center">
                &nbsp;</p>
        </div>   
    </div>
</asp:Content>
