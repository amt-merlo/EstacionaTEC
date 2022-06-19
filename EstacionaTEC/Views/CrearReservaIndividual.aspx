<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CrearReservaIndividual.aspx.cs" Inherits="EstacionaTEC.Views.CrearReservaIndividual" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <h1 class="text-center">Estaciona<span style="color: #6666FF; ">TEC</span></h1>
    </div>
    <div >
        <h2 class="text-right" >Reservar Espacio</h2>
            <h4 class="text-right">Bienvenido(a)
                <asp:Label ID="lblNombre" runat="server" Text=""></asp:Label>
            </h4>
        <p class="text-right">Bienvenido al módulo de reservas de Estaciona<span style="color: #6666FF">TEC</span>, a continuación se le brindará la información necesaria para completar el proceso de la reserva exitosamente, para reservar un espacio por favor siga las siguientes instrucciones.</p>
        <p class="text-right">&nbsp;</p>
        <h4>Intrucciones</h4>
        <p class="text-right">1. Indicar la hora de entrada y la hora de salida.</p>
        <p class="text-right">2. Seleccionar la placa del vehículo con el que va a ingresar al estacionamiento <span style="color: #6666FF">(Si la placa no se encuentra en las opciones que se le presentan, deberá dirigirse al módulo de Editar Información Personal para registrar el vehículo).</span></p>
        <p class="text-right">3. Seleccionar el espacio que desea reservar.</p>
        <p class="text-right">4. Presionar el botón &quot;Reservar&quot;</p>
        <p class="text-right">5. Esperar el mensaje de confirmación de la página con la indicación de que la reserva se realizó exitosamente</p>
        <p class="text-right">&nbsp;</p>
        <p >
            <asp:SqlDataSource ID="sqlGetNombre" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoDisennoConnectionString %>" SelectCommand="SELECT [nombreCompleto] FROM [Persona] WHERE ([identificacion] = @identificacion)">
                <SelectParameters>
                    <asp:SessionParameter Name="identificacion" SessionField="ID" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            </p>
        <h4>
            <strong>Información del parqueo seleccionado</strong></h4>
        <p >
            <asp:GridView ID="GridView1" runat="server" HorizontalAlign="Left" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ID" DataSourceID="sqlEstacionamiento" ForeColor="#333333" GridLines="None" Width="688px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                    <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                    <asp:BoundField DataField="Ubicación" HeaderText="Ubicación" SortExpression="Ubicación" />
                    <asp:BoundField DataField="Cantidad de espacio total" HeaderText="Cantidad de espacio total" SortExpression="Cantidad de espacio total" />
                    <asp:BoundField DataField="Cantidad de espacios disponibles" HeaderText="Cantidad de espacios disponibles" SortExpression="Cantidad de espacios disponibles" />
                    <asp:BoundField DataField="Hora de Apertura" HeaderText="Hora de Apertura" SortExpression="Hora de Apertura" />
                    <asp:BoundField DataField="Hora de Cierre" HeaderText="Hora de Cierre" SortExpression="Hora de Cierre" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
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
            &nbsp;</p>
        <p class="text-center">
            &nbsp;</p>
        <p class="text-center">
            &nbsp;</p>
        <p class="text-center">
            &nbsp;</p>
        <p class="text-center">
            &nbsp;</p>
        <h4 style="color: #000000" class="text-right" >
            Franjas Horarias Registradas</h4>
        <p  style="color: #6666FF" class="text-right">
            Recuerde que solo puede tramitar reservas dentro de su horario de trabajo*</p>
        <p style="color: #000000">
            <asp:GridView ID="GridView2" runat="server" HorizontalAlign="Left" AutoGenerateColumns="False" CellPadding="4" DataSourceID="sqlFranjas" ForeColor="#333333" GridLines="None" Width="358px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="Día" HeaderText="Día" SortExpression="Día" />
                    <asp:BoundField DataField="Hora de Inicio" HeaderText="Hora de Inicio" SortExpression="Hora de Inicio" />
                    <asp:BoundField DataField="Hora de Fin" HeaderText="Hora de Fin" SortExpression="Hora de Fin" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
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
        <p style="color: #000000">
            &nbsp;</p>
        <p style="color: #000000">
            &nbsp;</p>
        <p style="color: #000000">
            &nbsp;</p>
        <p style="color: #000000">
            &nbsp;</p>
        <p style="color: #000000">
            <asp:SqlDataSource ID="sqlFranjas" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoDisennoConnectionString %>" SelectCommand="SELECT DiasSemana.[dia] as Día, FranjaHoraria.[inicio] as 'Hora de Inicio', FranjaHoraria.[fin] as 'Hora de Fin' FROM [FranjaHoraria]  INNER JOIN DiasSemana ON FranjaHoraria.idDia = DiasSemana.id WHERE ([idPersona] = @idPersona)">
                <SelectParameters>
                    <asp:SessionParameter Name="idPersona" SessionField="ID" />
                </SelectParameters>
            </asp:SqlDataSource>
        </p>
        <p style="color: #000000">
            &nbsp;</p>
        <p style="color: #000000">
            &nbsp;</p>
        <h4 style="color: #000000" class="text-right">
            <strong>Horario</strong></h4>
    </div>
    <p style="color: #000000" class="text-right">
        Indique el periodo de tiempo por el que desea realizar la reserva</p>
    <p class="text-right">
                <strong>Hora de entrada</strong></p>
            <p class="text-right">
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
            <p class="text-right">
                <strong>Hora de salida</strong></p>
            <p class="text-right">
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
    <p class="text-right">
                &nbsp;</p>
    <h4>
                <strong>Vehículo</strong></h4>
    <p class="text-right">
                Por favor indique la placa del vehículo que va a utilizar</p>
    <p class="text-right">
                Placa:
                <asp:DropDownList ID="ddlistPlacas" runat="server" Height="97px" Width="143px" DataSourceID="sqlPlacas" DataTextField="placa" DataValueField="placa" ForeColor="Black">
                </asp:DropDownList>
            </p>
    <p class="text-right">
                &nbsp;</p>
    <h4>
                <strong>Espacio</strong></h4>
    <p class="text-right">
                <asp:GridView ID="gridEspacios" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="324px" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="sqlEspacios" OnSelectedIndexChanged="GridView3_SelectedIndexChanged" AutoGenerateSelectButton="True">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                        <asp:BoundField DataField="numeracion" HeaderText="numeracion" SortExpression="numeracion" />
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
    <p class="text-right">
                Espacio seleccionado:
                <asp:Label ID="lblEspacio" runat="server" Text=""></asp:Label>
    </p>
    <p class="text-right">
                &nbsp;</p>
    <p class="text-right">
                <asp:SqlDataSource ID="sqlEspacios" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoDisennoConnectionString %>" SelectCommand="SELECT [id], [numeracion] FROM [Espacio] WHERE (([idEstacionamiento] = @idEstacionamiento) AND ([idTipo] = @idTipo))">
                    <SelectParameters>
                        <asp:SessionParameter Name="idEstacionamiento" SessionField="EstacionamientoSeleccionado" Type="Int32" />
                        <asp:SessionParameter Name="idTipo" SessionField="Tipo" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
    </p>
    <p class="text-right">
                <asp:Button ID="btnReservar" runat="server" Text="Reservar" Width="119px" Height="34px" OnClick="btnReservar_Click" />
            &nbsp;
                <asp:Button ID="btnVolver" runat="server" Text="Volver" Width="119px" Height="34px" OnClick="btnVolver_Click" />
            </p>
    <br />
    <div class="text-right">
        
        <p class="text-right">
            &nbsp;</p>
        <p class="text-right">
            <asp:SqlDataSource ID="sqlEstacionamiento" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoDisennoConnectionString %>" SelectCommand="SELECT [id] as ID, [nombre] as Nombre, [ubicacion] as Ubicación, [cantidadEspaciosTotal] as 'Cantidad de espacio total', [cantidadEspaciosActual] as 'Cantidad de espacios disponibles', [horaApertura] as 'Hora de Apertura', [horaCierre] as 'Hora de Cierre' FROM [Estacionamiento] WHERE ([id] = @id)">
                <SelectParameters>
                    <asp:SessionParameter Name="id" SessionField="EstacionamientoSeleccionado" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            </p>
        <p class="text-right">
            <asp:SqlDataSource ID="sqlPlacas" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoDisennoConnectionString %>" SelectCommand="SELECT [placa] FROM [Vehiculo] WHERE (([idPersona] = @idPersona) AND ([visible] = @visible))">
                <SelectParameters>
                    <asp:SessionParameter Name="idPersona" SessionField="ID" Type="Int32" />
                    <asp:Parameter DefaultValue="True" Name="visible" Type="Boolean" />
                </SelectParameters>
            </asp:SqlDataSource>
            </p>
    </div>
</asp:Content>
