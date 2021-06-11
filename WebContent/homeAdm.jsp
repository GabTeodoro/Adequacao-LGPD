<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/css/cadastroStyle.css">
<style>
h1 {
	color: white;
	font-size: 34px;
	text-transform: inherit;
	font-weight: 1000;
}

h2 {
	color: white;
	font-size: 29px;
	text-transform: inherit;
	font-weight: 800;
}

h3 {
	color: black;
	font-size: 24px;
	text-transform: inherit;
	font-weight: 600;
	margin-bottom: 20px;
}

h4 {
	font-size: 19px;
	line-height: 1.375em;
	font-weight: 400;
	margin-bottom: 30px;
}

a {
	color: white;
}

li {
	padding-right: 20px;
}

/* Estilo do Menu */
nav.navbar {
	font-size: 14px;
}

/*Estilo da Barra de Pesquisa */
body {
	font-family: Arial;
	background-color: #1E90FF;
}
/* Estilo do Footer */
.footer-title {
    font-size: 25px;
    color: white;
    text-align: center;
}
.ul-footer {
  list-style-type: none;
  font-size: 14px;
  margin: 0;
  padding: 0;
  color: white;
  background-color: #1E90FF;
}
* {
	box-sizing: border-box;
}
</style>
</head>
<body>
	<c:import url="menuAdm.jsp" />

	<div class="container" style="margin-top: 80px">
		<img alt="Logo" src="resources/img/logo.png" align="right" width="600">
		<br> <br> <br> <br>
		<h1 align="center">Olá ${primeiroNome},</h1>
		<h1 align="center">A MELHOR FERRAMENTA DE LGPD!</h1>
	</div>
	<div class="container-fluid"
		style="padding-top: 50px; margin-top: 400px; background-color: white;">
		<div class="row" style="display: flex; justify-content: center; align-items: center;">
			<div class="col-sm-4 d-flex justify-content-center">
				<form>
					<table>
						<thead>
							<tr>
								<th colspan="2" class="text-center">
									<h3>Meus Dados</h3>
								</th>
							</tr>
						</thead>
						<tr>
							<td><label></label></td>
							<td><input readonly="readonly" type="hidden" id="id" name="id"
								placeholder="Id" value="${user.id}"></td>
						</tr>
						<tr>
							<td><label>Nome: </label></td>
							<td><input readonly="readonly" type="text" id="nome"
								name="nome" placeholder="Nome Completo" value="${user.nome}"></td>
						</tr>
						<tr>
							<td><label>CPF: </label></td>
							<td><input readonly="readonly" type="text" id="cpf"
								name="cpf" placeholder="CPF" value="${user.cpf}"></td>
						</tr>
						<tr>
							<td><label>E-mail: </label></td>
							<td><input readonly="readonly" type="text" id="email"
								name="email" placeholder="E-mail" value="${user.email}"></td>
						</tr>
						<tr>
							<td><label>Senha: </label></td>
							<td><input readonly="readonly" type="password" id="senha"
								name="senha" placeholder="Senha" value="${user.senha}"></td>
						</tr>
						<tr>
							<td></td>
							<td><a class="btn btn-outline-dark activated"
						style="border-radius: 25px; margin-bottom: 25px;"
						href="CadastroAdministradorServlet?acao=editAdm&user=${user.email}">Editar</a></td>
						</tr>
					</table>
				</form>
			</div>
			<div class="col-sm-2 text-center">
			<a class="btn btn-primary btn-lg" style="background-color: #1E90FF; width: 90%;"
				href="CadastroQuestaoServlet?acao=AddQuestion&user=${user.email}">Cadastrar Nova Questão</a>
			</div>
			<div class="col-sm-2 text-center">
			<a class="btn btn-primary btn-lg" style="background-color: #1E90FF;"
							href="CadastroQuestaoServlet?acao=AddQuestionTrueOrFalse&user=${user.email}">Cadastrar Nova Questão de Verdadeiro ou Falso</a>
			</div>
		</div>
	</div>
	<footer class="container-fluid bg-footer margin footer ul-footer" style="margin-top: 12px; margin-bottom: 12px;">
        <p class="footer-title">Desenvolvido por</p>
        <div class="container">
            <div class="row">
                <div class="col-lg-1">
                </div>
                <div class="col-lg-2">
                    <ul class="ul-footer">
                        <li><a>Evanilson Peres</a></li>
                        <li><a href="#">Linkedin</a></li>
                        <li><a href="#">GitHub</a></li>
                        <li><a href="#">evanilson@mail.com</a></li>
                    </ul>
                </div>
                <div class="col-lg-2">
                    <ul class="ul-footer">
                        <li><a>Gabriel Teodoro</a></li>
                        <li><a href="#">Linkedin</a></li>
                        <li><a href="#">GitHub</a></li>
                        <li><a href="#">gabriel@mail.com</a></li>
                    </ul>
                </div>
                <div class="col-lg-2">
                    <ul class="ul-footer">
                        <li><a>Isabelle Aguiar Silva</a></li>
                        <li><a href="#">Linkedin</a></li>
                        <li><a href="#">GitHub</a></li>
                        <li><a href="#">isabelle@mail.com</a></li>
                    </ul>
                </div>
                <div class="col-lg-2">
                    <ul class="ul-footer">
                        <li><a>Ivan Souto</a></li>
                        <li><a href="#">Linkedin</a></li>
                        <li><a href="#">GitHub</a></li>
                        <li><a href="#">ivan@mail.com</a></li>
                    </ul>
                </div>
                <div class="col-lg-2">
                    <ul class="ul-footer">
                        <li><a>Matheus Jatobá</a></li>
                        <li><a href="#">Linkedin</a></li>
                        <li><a href="#">GitHub</a></li>
                        <li><a href="#">matheus@mail.com</a></li>
                    </ul>
                </div>
                <div class="col-lg-1">
                </div>
            </div>
        </div>
    </footer>
</body>
</html>