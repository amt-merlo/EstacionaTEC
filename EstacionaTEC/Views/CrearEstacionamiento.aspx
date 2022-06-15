<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CrearEstacionamiento.aspx.cs" Inherits="EstacionaTEC.Views.CrearEstacionamiento" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <h1 class="text-center" style="text-align: center">Estaciona<span style="color: #6666FF">TEC</span></h1>
    </div>
    <div class="row">
        <div class="col-md-4">
          
        </div>
        <div class="col-md-4">
            <p class="center">
                Funcionario:
                <asp:Label ID="lblNombre" runat="server" Text=""></asp:Label>
            </p>
            <p class="center">
                &nbsp;</p>
            <h2 class="text-center">Registrar Nuevo Estacionamiento</h2>
            <p class="center">Indique el tipo de estacionamiento que desea registrar:
            </p>
            <p class="center">&nbsp;</p>
                <asp:RadioButtonList ID="radButtonTipoParqueo" HorizontalAlign="Center" runat="server" DataSourceID="sqlGetTipoEstacionamiento" DataTextField="tipo" DataValueField="tipo" AutoPostBack="True" OnSelectedIndexChanged="radButtonTipoParqueo_SelectedIndexChanged" TabIndex="1" Height="18px">
                </asp:RadioButtonList>
            <h3 class="text-center">Información del Parqueo 
            </h3>
            <p class="center">
                Nombre:
                <asp:TextBox ID="txtBoxNombre" runat="server" ForeColor="Black" Width="188px"></asp:TextBox>
            </p>
            <p class="text-center">
                Dirección:
                <asp:TextBox ID="txtBoxDireccion" runat="server" ForeColor="Black"></asp:TextBox>
            </p>
            <p class="text-center">
                &nbsp;</p>
            <p class="text-center">
                Hora de aperturas</p>
            <p class="text-center">
                Hora:
                <asp:DropDownList ID="ddListHoraApertura" runat="server" ForeColor="#000099" Height="16px" Width="50px">
                    <asp:ListItem>0</asp:ListItem>
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
&nbsp;Minutos:
                <asp:DropDownList ID="ddListMinutosApertura" runat="server" ForeColor="#000099">
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
&nbsp;</p>
            <p class="text-center">
                Hora de cierre</p>
            <p class="text-center">
                Hora
                <asp:DropDownList ID="ddListHoraCierre" runat="server" ForeColor="#000099" Height="16px" Width="51px">
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
&nbsp;Minutos:
                <asp:DropDownList ID="ddListMinutosCierre" runat="server" ForeColor="#000099">
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
                &nbsp;</p>
            <p class="text-center">
                <asp:Label ID="lblNumContrato" runat="server" Text="Número de contrato: "></asp:Label>
                &nbsp;<asp:TextBox ID="txtBoxNumContrato" runat="server" Width="178px" Height="21px" ForeColor="Black"></asp:TextBox>
            </p>
            <p class="text-center">
                &nbsp;</p>
            <h3 class="text-center">
                <asp:Label ID="lblSubtituloContacto" runat="server" Text="Información de Contacto" style="text-align: center"></asp:Label>
            </h3>
            <p class="text-center">
                &nbsp;<asp:Label ID="lblNombreContacto" runat="server" Text="Nombre: "></asp:Label>
                <asp:TextBox ID="txtBoxNombreContacto" runat="server" Width="250px" Height="21px" ForeColor="Black"></asp:TextBox>
            </p>
            <p class="text-center">
                <asp:Label ID="lblTelefono" runat="server" Text="Telefono: "></asp:Label>
                <asp:TextBox ID="txtBoxTelefonoContacto" runat="server" Width="244px" ForeColor="Black"></asp:TextBox>
            </p>
            <p class="text-center">
                &nbsp;<asp:Button ID="btnRegistrar" runat="server" OnClick="Button1_Click" Text="Registrar" Width="149px" Height="32px" />
            &nbsp;</p>
            <p class="text-center">
                <asp:Button ID="btnVolver" runat="server" Height="31px" Text="Menu Principal" Width="153px" OnClick="btnVolver_Click" />
            </p>
            <p class="text-center">
                <asp:SqlDataSource ID="sqlGetNombre" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoDisennoConnectionString %>" SelectCommand="SELECT [nombreCompleto] FROM [Persona] WHERE ([identificacion] = @identificacion)">
                    <SelectParameters>
                        <asp:SessionParameter Name="identificacion" SessionField="ID" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </p>
            <p class="text-center">
                <asp:SqlDataSource ID="sqlGetTipoEstacionamiento" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoDisennoConnectionString %>" SelectCommand="SELECT [tipo] FROM [TipoEstacionamiento]"></asp:SqlDataSource>
            </p>
            <p class="text-center">
                <asp:Label ID="lblPrueba" runat="server" ForeColor="#3333FF"></asp:Label>
            </p>
        </div>   
    </div>
</asp:Content>
