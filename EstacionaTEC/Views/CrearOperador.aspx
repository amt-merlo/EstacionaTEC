<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CrearOperador.aspx.cs" Inherits="EstacionaTEC.Views.CrearOperador" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <div class="jumbotron">
        <h1 class="text-center" style="text-align: center">Estaciona<span style="color: #6666FF">TEC</span></h1>
    </div>
    <div class="row">
        <div class="col-md-4"></div>

        <div class="col-md-4">
            <p class="text-left" style="text-align: left">
                Funcionario:
                <asp:Label ID="lblNombre" runat="server" Text=""></asp:Label>
            </p>
            <h2>
                Registrar Nuevo Operador</h2>
            <p>
                Por favor ingrese la información del operador que desea registrar</p>
            <p>
                Número de cédula:&nbsp;
                <asp:TextBox ID="txtBoxCedula" runat="server" ForeColor="Black"></asp:TextBox>
            </p>
            <p>
                Nombre completo:&nbsp;
                <asp:TextBox ID="txtBoxNombre" runat="server" ForeColor="Black"></asp:TextBox>
            </p>
            <p>
                Correo electrónico:&nbsp;
                <asp:TextBox ID="txtBoxCorreo" runat="server" ForeColor="Black"></asp:TextBox>
            </p>
            <p>
                Teléfono:&nbsp;
                <asp:TextBox ID="txtBoxTelefono" runat="server" ForeColor="Black"></asp:TextBox>
            </p>
            <p>
                &nbsp;</p>
            <p>
                &nbsp;</p>
            
        </div>
    </div>
    <div class="text-center" >
        
        <p class="center">
                Seleccione el estacionamiento que el operador tendrá a cargo:</p>
            <p class="center">
                <asp:GridView ID="gridEstacionamientos" runat="server"  CellPadding="4" ForeColor="#333333" GridLines="None" Width="700px" AutoGenerateSelectButton="True" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="sqlEstacionamientos" OnSelectedIndexChanged="gridEstacionamientos_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                        <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                        <asp:BoundField DataField="Ubicación" HeaderText="Ubicación" SortExpression="Ubicación" />
                        <asp:BoundField DataField="Hora de Apertura" HeaderText="Hora de Apertura" SortExpression="Hora de Apertura" />
                        <asp:BoundField DataField="Hora de Cierre" HeaderText="Hora de Cierre" SortExpression="Hora de Cierre" />
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
            <p>
                <strong>Estacionamiento seleccionado:</strong>
                <asp:Label ID="lblIDEstacionamiento" runat="server" Text="Label"></asp:Label>
            </p>
            <p>
                &nbsp;</p>
            <p>
                <asp:Label ID="lblMensaje" runat="server" Text="" style="color: #CC0000"></asp:Label>
            </p>
            <p>
                <asp:Button ID="btnRegistrar" runat="server" Text="Registrar" OnClick="btnRegistrar_Click" />
            </p>
            <p>
                <asp:SqlDataSource ID="sqlEstacionamientos" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoDisennoConnectionString %>" SelectCommand="SELECT [id] as ID, [nombre] as Nombre, [ubicacion] as Ubicación, [horaApertura] as 'Hora de Apertura', [horaCierre] as 'Hora de Cierre' FROM [Estacionamiento] WHERE ([idTipo] = @idTipo)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="1" Name="idTipo" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </p>
                <asp:SqlDataSource ID="sqlGetNombre" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoDisennoConnectionString %>" SelectCommand="SELECT [nombreCompleto] FROM [Persona] WHERE ([identificacion] = @identificacion)">
                    <SelectParameters>
                        <asp:SessionParameter Name="identificacion" SessionField="ID" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            <p>
                &nbsp;</p>
          
    </div>
</asp:Content>
