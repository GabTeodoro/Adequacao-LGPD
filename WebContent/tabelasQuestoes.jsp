<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Questões</title>
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


	<!-- Tabela de Questões de Múltipla Escolha -->
	
	<div class="container-fluid text-center"
		style="margin-top: 200px; padding-top: 60px; padding-bottom: 150px; background-color: white; place-content: center;">
		<br>
		<div class="row d-flex justify-content-center">
			<div class="col-sm-10">
				<h2 style="color:black">Questões de Múltipla Escolha</h2>
				<button class="btn btn-outline-dark activated align-content-lg-end" style="border-radius: 25px; margin-bottom: 25px;"
				href="">Cadastrar Nova Questão</button>
				<table class="table table-hover table-bordered">
					<thead class="thead-dark">
						<tr>
							<th scope="col">Questão</th>
							<th scope="col">Resposta</th>
							<th scope="col">Resposta Falsa 1</th>
							<th scope="col">Resposta Falsa 2</th>
							<th scope="col">Resposta Falsa 3</th>
							<th scope="col">Editar</th>
							<th scope="col">Excluir</th>
						</tr>
					</thead>
					<tbody>
						<!-- Cadastrar valores faltantes-->
						
							<tr>
								<td><c:out value=""></c:out></td>
								<td><c:out value=""></c:out></td>
								<td><c:out value=""></c:out></td>
								<td><c:out value=""></c:out></td>
								<td><c:out value=""></c:out></td>
								<td><a
									href=""><img
										alt="Editar" title="Editar Questão" src="resources/img/edit_icon.png" width="20px"
										height="20px"></a></td>
								<td><a
									href=""><img
										alt="Excluir" title="Excluir Questão" src="resources/img/exclude_icon.png" width="20px"
										height="20px"></a></td>
							</tr>
						
					</tbody>
				</table>
			</div>
		</div>
	</div>


	<!-- Tabela de Questões Verdadeiro ou Falso -->

	<div class="container-fluid text-center" style="padding-bottom: 60px; background-color: white; place-content: center;">
		<br>
		<div class="row d-flex justify-content-center">
			<div class="col-sm-10">
							<h2 style="color: black;">Questões Verdadeiro ou Falso</h2>
							<button class="btn btn-outline-dark activated align-content-lg-end" style="border-radius: 25px; margin-bottom: 25px;"
							href="">Cadastrar Nova Questão</button>
				<table class="table table-hover table-bordered">
					<thead class="thead-dark">
						<tr>
							<th scope="col">Questão</th>
							<th scope="col">Resposta</th>
							<th scope="col">Editar</th>
							<th scope="col">Excluir</th>
						</tr>
					</thead>
					<tbody>
						<!-- Cadastrar valores faltantes-->
						
							<tr>
								<td><c:out value=""></c:out></td>
								<td><c:out value=""></c:out></td>
								<td><a
									href=""><img
										alt="Editar" title="Editar Questão" src="resources/img/edit_icon.png" width="20px"
										height="20px"></a></td>
								<td><a
									href=""><img
										alt="Excluir" title="Excluir Questão" src="resources/img/exclude_icon.png" width="20px"
										height="20px"></a></td>
							</tr>
						
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<c:import url="footer.jsp"/>
</body>
</html>