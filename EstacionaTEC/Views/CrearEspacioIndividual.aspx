<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CrearEspacioIndividual.aspx.cs" Inherits="EstacionaTEC.Views.CrearEspacioIndividual" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <h1 class="text-center" style="text-align: center">EstacionaTEC</h1>
    </div>
    <div class="row" align="center">
        <div class="col-md-4">
            <h2 class="text-left" style="text-align: center">Agregar Espacio</h2>
            <h4>Bienvenido(a)
                <asp:Label ID="lblNombre" runat="server" Text=""></asp:Label>
            </h4>
            <h2>Información del Parqueo</h2>
            <p class="text-left">ID:&nbsp;
                <asp:Label ID="lblID" runat="server" Text=""></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </p>
            <p class="text-left">Nombre:&nbsp;
                <asp:Label ID="lblNombreEstacionamiento" runat="server" Text=""></asp:Label>
            </p>
            <p class="text-left">Tipo de Parqueo:&nbsp;
                <asp:Label ID="lblTipo" runat="server" Text=""></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </p>
            <p class="text-left">Ubicación:
                <asp:Label ID="lblUbicacion" runat="server" Text=""></asp:Label>
            </p>
            <p class="text-left">&nbsp;</p>
            <p class="text-left">Total de espacios registrados:
                <asp:Label ID="lblCantEspaciosTotal" runat="server" Text=""></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp; 
            </p>
            <p class="text-left">Espacios disponibles:&nbsp;&nbsp;
                <asp:Label ID="lblCantEspaciosDisponibles" runat="server" Text=""></asp:Label>
            </p>
            <p class="text-left">Hora de apertura:&nbsp;
                <asp:Label ID="lblHoraApertura" runat="server" Text=""></asp:Label>
            </p>
            <p class="text-left">Hora de cierre:&nbsp;
                <asp:Label ID="lblHoraCierre" runat="server" Text=""></asp:Label>
            </p>
            <h3 style="text-align: center">&nbsp;</h3>
            <h3 style="text-align: center">&nbsp;</h3>
            <h2 style="text-align: center">Información del nuevo espacio</h2>
            <p class="text-center" style="text-align: center">
                Por favor seleccione el tipo de espacio que desea agregar al estacionamiento</p>
            <p class="text-center" style="text-align: center">
                <asp:DropDownList ID="ddListTipoEspacio" runat="server" DataSourceID="sqlGetTipoEspacio" DataTextField="tipo" DataValueField="tipo" ForeColor="Black" Height="27px" Width="140px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="sqlGetTipoEspacio" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoDisennoConnectionString %>" SelectCommand="SELECT [tipo] FROM [TipoEspacio]"></asp:SqlDataSource>
            </p>
            <p class="text-center" style="text-align: center">
                &nbsp;</p>
            <p class="text-center" style="text-align: center">
                ¿El espacio posee alguna forma de numeración?</p>
            <p class="text-center" style="text-align: center">
                <asp:RadioButtonList ID="radButtonNumeracion" runat="server">
                    <asp:ListItem>No</asp:ListItem>
                    <asp:ListItem>Si</asp:ListItem>
                </asp:RadioButtonList>
            </p>
            <p class="text-center" style="text-align: center">
                &nbsp;</p>
            <p class="text-center" style="text-align: center">
                Ingrese la numeración :
                <asp:TextBox ID="txtBoxNumeracion" runat="server"></asp:TextBox>
            </p>
            <p class="text-center" style="text-align: center">
                &nbsp;</p>
            <p class="text-center" style="text-align: center">
                <asp:Button ID="btnAgregar" runat="server" Text="Agregar Espacio" Height="31px" OnClick="btnAgregar_Click" />
            </p>
            <p class="text-center" style="text-align: center">
                &nbsp;</p>
            <h2 style="text-align: center">
                Espacios registrados en el estacionamiento</h2>
            <p>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ID" DataSourceID="sqlGetEspacios" ForeColor="#333333" GridLines="None" Width="652px" ShowFooter="True" ShowHeaderWhenEmpty="True">
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
                <asp:SqlDataSource ID="sqlGetEspacios" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoDisennoConnectionString %>" SelectCommand="SELECT Espacio.id as ID, Espacio.numeracion as Numeración, T.tipo as Tipo FROM [Espacio] INNER JOIN TipoEspacio  as T ON Espacio.idTipo = T.id 
WHERE ([idEstacionamiento] = @idEstacionamiento) ">
                    <SelectParameters>
                        <asp:SessionParameter Name="idEstacionamiento" SessionField="Estacionamiento" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </p>
            <p class="text-center" style="text-align: center">
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
