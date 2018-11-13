<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sistema.aspx.cs" Inherits="Lojinha.sistema" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <br />

    <form id="form1" runat="server">
        <div>
            <br />


            <div class="container-fluid">
                <div class="row">

                    <div class="col-md-9">
                        <div class="col-md-11 form">
                            <table class="table table-hover" id="tb-produto" data-page-length="50">
                                <thead>
                                    <tr>
                                         <th>Código</th>
                                         <th scope="col">Código Fornecedor</th>
                                         <th scope="col">Nome do Produto</th>
                                         <th scope="col">Saldo</th>
                                         <th scope="col">Descrição</th>
                                         <th scope="col">Valor</th>
                                         <th scope="col">Categoria</th>
                                         <th scope="col">Validade</th>

                                    </tr>

                                </thead>
                                <tbody>
                                    <tr>
                                        <td class="text-center" colspan="5">Você ainda não possui produtos cadastrados.</td>
                                    </tr>
                                </tbody>
                            </table>
                            <br />
                            <br />

                             <table class="table table-hover" id="tb-usuario" data-page-length="50">
                                <thead>
                                    <tr>
                                        <th>Código</th>
                                        <th scope="col">Nome</th>
                                        <th scope="col">Senha</th>
                                        <th scope="col">CPF</th>
                                        <th scope="col">E-mail</th>
                                        <th scope="col">Endereço</th>
                                        <th scope="col">Telefone</th>
                                        <th scope="col">Sexo</th>


                                    </tr>

                                </thead>
                                <tbody>
                                    <tr>
                                        <td class="text-center" colspan="5">Você ainda não possui usuários cadastrados.</td>
                                    </tr>
                                </tbody>
                            </table>
                            @Html.Hidden("JSON")
                            </div>
                        </div>
                    </div>
                </div>
            </div>

    </form>
</body>
</html>

