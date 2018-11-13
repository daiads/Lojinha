<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Produtos.aspx.cs" Inherits="Lojinha.Produtos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
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
                            @Html.Hidden("JSON")
                            </div>
                        </div>
                    </div>
                </div>
            </div>




            <style>
                .table-dark {
                    background-color: #6904b7
                }
            </style>
    </form>
</body>
</html>
