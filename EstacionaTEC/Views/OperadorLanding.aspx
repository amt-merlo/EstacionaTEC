<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="OperadorLanding.aspx.cs" Inherits="EstacionaTEC.Views.OperadorLanding" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <h1 class="text-center">Estaciona<span style="color: #6666FF; ">TEC</span></h1>
    </div>
    <div class="row">
        <h2 class="text-center">Menú principal</h2>
            <h4 class="text-center">Bienvenido(a)
                <asp:Label ID="lblNombre" runat="server" Text=""></asp:Label>
            </h4>
        <p class="text-center">
            <asp:SqlDataSource ID="sqlGetNombre" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoDisennoConnectionString %>" SelectCommand="SELECT [Nombre] FROM [Operador] WHERE ([ID] = @ID)">
                <SelectParameters>
                    <asp:SessionParameter Name="ID" SessionField="ID" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            </p>
        <div class="col-sm-6"></div>
    </div>
</asp:Content>
