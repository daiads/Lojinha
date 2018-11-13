<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Lojinha._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Compraki</h1>
        
    </div>

    <div>
            <asp:Label ID="Label1" runat="server" Text="Login"></asp:Label>
            <br />

            <asp:TextBox ID="txtlogin" runat="server"></asp:TextBox>

        </div>

          <div>
            <asp:Label ID="Label2" runat="server" Text="Senha"></asp:Label>
            <br />
            <asp:TextBox ID="txtsenha" runat="server" TextMode="Password"></asp:TextBox>
              
        </div>
        <br />

        <asp:Button ID="btnEntrar" runat="server" Text="Entrar" OnClick="btnEntrar_Click" />
        
</asp:Content>
