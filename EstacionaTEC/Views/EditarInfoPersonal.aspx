<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditarInfoPersonal.aspx.cs" Inherits="EstacionaTEC.Views.EditarInfoPersonal" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
      <div class="jumbotron">
        <h1 class="text-center">Estaciona<span style="color: #6666FF">TEC</span></h1>
    </div>
    <div>
        <div>
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
            <h3 class="text-center">
                Vehículos Registrados</h3>
            <p class="text-center">
                <asp:GridView ID="GridView1" runat="server" HorizontalAlign="Center" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ID" DataSourceID="sqlGetVehiculos" ForeColor="#333333" GridLines="None" ShowFooter="True" ShowHeaderWhenEmpty="True" Width="280px">
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
            <h3 class="text-center">
                Registrar Nuevo Vehículo</h3>
            <p class="text-center">
                Ingrese el número de placa del vehículo:
                <asp:TextBox ID="txtBoxPlaca" runat="server" ForeColor="Black" Height="22px"></asp:TextBox>
            </p>
            <p class="text-center">
                <asp:Button ID="btnRegistrarVehiculo" runat="server" Text="Registrar Vehículo" OnClick="btnRegistrarVehiculo_Click" />
            </p>
            <p class="text-center">
                &nbsp;</p>
            <h3>
                Franjas Horarias de Trabajo Registradas</h3>
            <p class="text-left">
                Horario Semanal</p>
            <p class="text-center">
                <asp:GridView ID="GridView2" runat="server" HorizontalAlign="Center" AutoGenerateColumns="False" CellPadding="4" DataSourceID="sqlGetFranjas" ForeColor="#333333" GridLines="None" Width="395px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="idDia" HeaderText="idDia" SortExpression="idDia" />
                        <asp:BoundField DataField="inicio" HeaderText="inicio" SortExpression="inicio" />
                        <asp:BoundField DataField="fin" HeaderText="fin" SortExpression="fin" />
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
            <asp:SqlDataSource ID="sqlGetFranjas" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoDisennoConnectionString %>" SelectCommand="SELECT [idDia], [inicio], [fin] FROM [FranjaHoraria] WHERE ([idPersona] = @idPersona)">
                <SelectParameters>
                    <asp:SessionParameter Name="idPersona" SessionField="ID" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <h3>
                Agregar Franja</h3>
            <p class="text-center">
                Si desea agregar una franja horaria a su horario por favor indique el periodo de la misma en los campos indicados a continuación</p>
            <p class="text-center">
                Día:
                <asp:DropDownList ID="ddListDia" runat="server" DataSourceID="sqlGetDiaSemana" DataTextField="dia" DataValueField="dia" ForeColor="Black">
                </asp:DropDownList>
                <asp:SqlDataSource ID="sqlGetDiaSemana" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoDisennoConnectionString %>" SelectCommand="SELECT [dia] FROM [DiasSemana]"></asp:SqlDataSource>
            </p>
            <p class="text-center">
                <strong>Hora de inicio</strong></p>
            <p class="text-center">
                Hora:&nbsp;
                <asp:DropDownList ID="ddListHoraInicio" runat="server" Height="16px" Width="66px" ForeColor="Black">
                    <asp:ListItem>00</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                    <asp:ListItem>8</asp:ListItem>
                    <asp:ListItem>9</asp:ListItem>
                    <asp:ListItem>10</asp:ListItem>
                    <asp:ListItem>11</asp:ListItem>
                    <asp:ListItem>12</asp:ListItem>
                    <asp:ListItem>13</asp:ListItem>
                    <asp:ListItem>14</asp:ListItem>
                    <asp:ListItem>15</asp:ListItem>
                    <asp:ListItem>16</asp:ListItem>
                    <asp:ListItem>17</asp:ListItem>
                    <asp:ListItem>18</asp:ListItem>
                    <asp:ListItem>19</asp:ListItem>
                    <asp:ListItem>20</asp:ListItem>
                    <asp:ListItem>21</asp:ListItem>
                    <asp:ListItem>22</asp:ListItem>
                    <asp:ListItem>23</asp:ListItem>
                </asp:DropDownList>
&nbsp; Minutos:
                <asp:DropDownList ID="ddListMinutosInicio" runat="server" Width="63px" ForeColor="Black">
                    <asp:ListItem>00</asp:ListItem>
                    <asp:ListItem>05</asp:ListItem>
                    <asp:ListItem>10</asp:ListItem>
                    <asp:ListItem>15</asp:ListItem>
                    <asp:ListItem>20</asp:ListItem>
                    <asp:ListItem>25</asp:ListItem>
                    <asp:ListItem>30</asp:ListItem>
                    <asp:ListItem>35</asp:ListItem>
                    <asp:ListItem>40</asp:ListItem>
                    <asp:ListItem>45</asp:ListItem>
                    <asp:ListItem>50</asp:ListItem>
                    <asp:ListItem>55</asp:ListItem>

                </asp:DropDownList>
            </p>
            <p class="text-center">
                <strong>Hora de fin</strong></p>
            <p class="text-center">
                Hora:
                <asp:DropDownList ID="ddListHoraFin" runat="server" ForeColor="Black">
                    <asp:ListItem>00</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                    <asp:ListItem>8</asp:ListItem>
                    <asp:ListItem>9</asp:ListItem>
                    <asp:ListItem>10</asp:ListItem>
                    <asp:ListItem>11</asp:ListItem>
                    <asp:ListItem>12</asp:ListItem>
                    <asp:ListItem>13</asp:ListItem>
                    <asp:ListItem>14</asp:ListItem>
                    <asp:ListItem>15</asp:ListItem>
                    <asp:ListItem>16</asp:ListItem>
                    <asp:ListItem>17</asp:ListItem>
                    <asp:ListItem>18</asp:ListItem>
                    <asp:ListItem>19</asp:ListItem>
                    <asp:ListItem>20</asp:ListItem>
                    <asp:ListItem>21</asp:ListItem>
                    <asp:ListItem>22</asp:ListItem>
                    <asp:ListItem>23</asp:ListItem>
                </asp:DropDownList>
&nbsp; Minutos:
                <asp:DropDownList ID="ddListMinutosFin" runat="server" ForeColor="Black">
                    <asp:ListItem>00</asp:ListItem>
                    <asp:ListItem>05</asp:ListItem>
                    <asp:ListItem>10</asp:ListItem>
                    <asp:ListItem>15</asp:ListItem>
                    <asp:ListItem>20</asp:ListItem>
                    <asp:ListItem>25</asp:ListItem>
                    <asp:ListItem>30</asp:ListItem>
                    <asp:ListItem>35</asp:ListItem>
                    <asp:ListItem>40</asp:ListItem>
                    <asp:ListItem>45</asp:ListItem>
                    <asp:ListItem>50</asp:ListItem>
                    <asp:ListItem>55</asp:ListItem>
                </asp:DropDownList>
            </p>
            <p class="text-center">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnRegistrarFranja" runat="server" Text="Registrar Franja" OnClick="btnRegistrarFranja_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </p>
            <p class="text-center">
                <asp:Label ID="lblMensajeFranja" runat="server" Text="" style="color: #CC0000"></asp:Label>
            </p>
            <p class="text-center">
                &nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnMenu" runat="server" Text="Menu Principal" Width="168px" OnClick="btnMenu_Click" />
            </p>
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
