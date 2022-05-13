<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AgregarEspacio.aspx.cs" Inherits="EstacionaTEC.Views.AgregarEspacio" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <h1 class="text-center">EstacionaTEC</h1>
    </div>
    <div class="row" align="center">
        <div class="col-md-4">
            <h2 class="text-center">Agregar Espacio en Estacionamiento</h2>
            <h4 class="text-center">Bienvenido(a)
                <asp:Label ID="lblNombre" runat="server" Text=""></asp:Label>
            </h4>
            <p class="text-center">
                  
                <asp:GridView ID="gridViewEstacionamientos" runat="server" Width="1142px" OnSelectedIndexChanged="gridViewEstacionamientos_SelectedIndexChanged" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="None" AllowSorting="True" AutoGenerateSelectButton="True" Height="166px" HorizontalAlign="Center" OnDisposed="gridViewEstacionamientos_Disposed" ShowFooter="True" ShowHeaderWhenEmpty="True">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                        <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
                        <asp:BoundField DataField="ubicacion" HeaderText="ubicacion" SortExpression="ubicacion" />
                        <asp:BoundField DataField="cantidadEspaciosTotal" HeaderText="cantidadEspaciosTotal" SortExpression="cantidadEspaciosTotal" />
                        <asp:BoundField DataField="horaApertura" HeaderText="horaApertura" SortExpression="horaApertura" />
                        <asp:BoundField DataField="horaCierre" HeaderText="horaCierre" SortExpression="horaCierre" />
                        <asp:BoundField DataField="nombreContacto" HeaderText="nombreContacto" SortExpression="nombreContacto" />
                        <asp:BoundField DataField="telefonoContacto" HeaderText="telefonoContacto" SortExpression="telefonoContacto" />
                        <asp:BoundField DataField="contrato" HeaderText="contrato" SortExpression="contrato" />
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" HorizontalAlign="Center" VerticalAlign="Middle" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle" Wrap="False" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" HorizontalAlign="Center" VerticalAlign="Middle" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
                  
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoDisennoConnectionString %>" SelectCommand="SELECT [id], [nombre], [ubicacion], [cantidadEspaciosTotal], [horaApertura], [horaCierre], [nombreContacto], [telefonoContacto], [contrato] FROM [Estacionamiento]"></asp:SqlDataSource>
                  
            </p>
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
