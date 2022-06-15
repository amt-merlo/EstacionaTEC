<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="EstacionaTEC._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1 class="text-center">Estaciona<span style="color: #6666FF">TEC</span></h1>
    </div>

    <div>
        <div>
            <h2 class="text-center">Iniciar Sesión&nbsp; </h2>
            <p class="text-center">
                Dirección de correo electrónico:&nbsp;&nbsp;&nbsp;</p>
            <p class="text-center">
                <asp:TextBox ID="txtBoxCorreo" runat="server" Wrap="False" Font-Bold="True" ForeColor="#0033CC" Height="24px" Width="204px"></asp:TextBox>
            </p>
            <p>
                &nbsp;&nbsp;&nbsp;
                &nbsp;Contraseña:&nbsp;</p>
            <p class="text-center">
                <asp:TextBox ID="txtBoxContrasenna" runat="server" TextMode="Password" Font-Bold="True" ForeColor="#0033CC" Height="25px" Width="199px"></asp:TextBox>
            </p>
            <p>
                &nbsp;</p>
            <p class="text-center">
                &nbsp;&nbsp;&nbsp;
                &nbsp;<asp:Button ID="Button1" runat="server" Text="Iniciar Sesión" Width="140px" Height="33px" OnClick="Button1_Click" />
            &nbsp;&nbsp;
                &nbsp;
                </p>
            <p class="text-center">
                <asp:Label ID="lblMensaje" runat="server" Text="" style="color: #CC0000"></asp:Label>
                </p>
            <p>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoDisennoConnectionString %>" SelectCommand="checkLogin" SelectCommandType="StoredProcedure">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="txtBoxCorreo" Name="inCorreo" PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="txtBoxContrasenna" Name="inContrasenna" PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </p>
        </div>
        <div class="col-md-4">
            <p>
                &nbsp;</p>
        </div>
    </div>

</asp:Content>
