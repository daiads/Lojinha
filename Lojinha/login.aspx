<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Lojinha._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div>
        <h1>Cadastro Compraki</h1>
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

        <asp:Label ID="lblMensagem" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Comic Sans MS" Font-Size="Small"></asp:Label>
        <br />
    <br />
        <asp:Button ID="btnEntrar" runat="server" Text="Entrar" OnClick="btnEntrar_Click" />
    <br />
    <br />
</asp:Content>
