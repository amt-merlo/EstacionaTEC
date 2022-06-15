<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CrearEspacioIndividual.aspx.cs" Inherits="EstacionaTEC.Views.CrearEspacioIndividual" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <h1 class="text-center" style="text-align: center">Estaciona<span style="color: #6666FF">TEC</span></h1>
    </div>
    <div class="row">
        <div class="col-md-4"></div>
        <div class="col-md-4">
            <h3 style="text-align: center" >Agregar Espacio</h3>
            <p>Bienvenido(a)
                <asp:Label ID="lblNombre" runat="server" Text=""></asp:Label>
            </p>
            <h2 class="text-center">&nbsp;</h2>
            <h3 class="text-center">Información del Parqueo</h3>
            <p class="text-center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>&nbsp;ID:</strong>&nbsp;
                <asp:Label ID="lblID" runat="server" Text=""></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </p>
            <p class="text-center" ><strong>Nombre:</strong>&nbsp;
                <asp:Label ID="lblNombreEstacionamiento" runat="server" Text=""></asp:Label>
                &nbsp;
            </p>
            <p class="text-center" ><strong>Ubicación:
                </strong>
                <asp:Label ID="lblUbicacion" runat="server" Text=""></asp:Label>
            </p>
            <p class="text-center" >&nbsp;</p>
            <p class="text-center" >&nbsp;&nbsp;&nbsp; <strong>Total de espacios registrados:</strong>&nbsp;&nbsp;&nbsp; &nbsp;
                <asp:Label ID="lblCantEspaciosTotal" runat="server" Text=""></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp; 
            </p>
            <p class="text-center" ><strong>Espacios disponibles:</strong>&nbsp;&nbsp;&nbsp; &nbsp;
                <asp:Label ID="lblCantEspaciosDisponibles" runat="server" Text=""></asp:Label>
                &nbsp;</p>
            <p class="text-center" ><strong>Hora de apertura:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong>
                <asp:Label ID="lblHoraApertura" runat="server" Text=""></asp:Label>
            </p>
            <p class="text-center" ><strong>Hora de cierre:&nbsp;</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblHoraCierre" runat="server" Text=""></asp:Label>
            </p>
            <h3 >&nbsp;</h3>
            <h3 class="text-center" style="color: #6666FF" >Información del nuevo espacio</h3>
            <p class="text-center" >
                Por favor seleccione el tipo de espacio que desea agregar al estacionamiento</p>
            <p >
                <asp:DropDownList ID="ddListTipoEspacio" runat="server" DataSourceID="sqlGetTipoEspacio" DataTextField="tipo" DataValueField="tipo" ForeColor="Black" Height="27px" Width="140px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="sqlGetTipoEspacio" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoDisennoConnectionString %>" SelectCommand="SELECT [tipo] FROM [TipoEspacio]"></asp:SqlDataSource>
            </p>
            <p class="text-center">
                ¿El espacio posee alguna forma de numeración?</p>
            <p class="text-center">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:RadioButtonList ID="radButtonNumeracion" HorizontalAlign="Center" runat="server" OnSelectedIndexChanged="radButtonNumeracion_SelectedIndexChanged" AutoPostBack="True" Width="220px" Height="16px">
                    <asp:ListItem>No</asp:ListItem>
                    <asp:ListItem>Si</asp:ListItem>
                </asp:RadioButtonList>
            </p>
            <p >
                &nbsp;<asp:Label ID="lblNumeracion" runat="server" Text="Ingrese la numeración: "></asp:Label>
&nbsp;
                <asp:TextBox ID="txtBoxNumeracion" runat="server" ForeColor="Black"></asp:TextBox>
            </p>
            <p >
                <asp:Label ID="lblMensaje" runat="server" Text=""></asp:Label>
            </p>
            <p >
                <asp:Button ID="btnAgregar" runat="server" Text="Agregar Espacio" Height="31px" OnClick="btnAgregar_Click" />
            </p>
            <p >
                &nbsp;</p>
            <h2 class="text-center">
                Espacios registrados en el estacionamiento</h2>
            <p class="text-center">
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ID" DataSourceID="sqlGetEspacios" ForeColor="#333333" GridLines="None" Width="451px" ShowFooter="True" ShowHeaderWhenEmpty="True">
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
                </asp:GridView></p>
            <p >
                &nbsp;</p>
            <p>
                <asp:SqlDataSource ID="sqlGetEspacios" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoDisennoConnectionString %>" SelectCommand="SELECT Espacio.id as ID, Espacio.numeracion as Numeración, T.tipo as Tipo FROM [Espacio] INNER JOIN TipoEspacio  as T ON Espacio.idTipo = T.id 
WHERE ([idEstacionamiento] = @idEstacionamiento) ">
                    <SelectParameters>
                        <asp:SessionParameter Name="idEstacionamiento" SessionField="Estacionamiento" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </p>
            <p >
                <asp:Button ID="btnVolver" runat="server" Text="Volver" OnClick="btnVolver_Click" />
            </p>
            <p >
                <asp:SqlDataSource ID="sqlGetNombre" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoDisennoConnectionString %>" SelectCommand="SELECT [nombreCompleto] FROM [Persona] WHERE ([identificacion] = @identificacion)">
                    <SelectParameters>
                        <asp:SessionParameter Name="identificacion" SessionField="ID" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </p>
        </div>  
        <div class="col-md-4"></div>
    </div>

</asp:Content>
