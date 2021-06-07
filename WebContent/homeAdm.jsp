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
		style="margin-top: 400px; background-color: white;">
		<br>
		<h3 style="margin-left: 150px">Meus Dados</h3>
		<div class="row" style="margin-left: 90px">
			<div class="col-sm-6">
				<br>
				<form>
					<table>
						<tr>
							<td><label>Id: </label></td>
							<td><input readonly="readonly" type="text" id="id" name="id"
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
		</div>
	</div>
</body>
</html>