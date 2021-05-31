<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Listagem</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
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

	<div style="background-color: white;">
	<br>
		<h3 style="text-align: center;">Lista de administradores</h3>
		<table class="table table-hover">
			<thead class="thead-dark">
				<tr>
					<th scope="col">Id</th>
					<th scope="col">Nome</th>
					<th scope="col">CPF</th>
					<th scope="col">E-mail</th>
					<th scope="col">Editar</th>
					<th scope="col">Excluir</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${administradores}" var="adm">
					<tr>
						<td><c:out value="${adm.id}"></c:out></td>
						<td><c:out value="${adm.nome}"></c:out></td>
						<td><c:out value="${adm.cpf}"></c:out></td>
						<td><c:out value="${adm.email}"></c:out></td>
						<td><a
							href="CadastroAdministradorServlet?acao=editAdm&user=${adm.email}"><img
								alt="Editar" title="Editar Empresa"
								src="resources/img/edit_icon.png" width="20px" height="20px"></a></td>
						<td><a
							href="CadastroAdministradorServlet?acao=removeAdm&user=${adm.email}"><img
								alt="Excluir" title="Excluir Empresa"
								src="resources/img/exclude_icon.png" width="20px" height="20px"></a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<br>
	</div>

</body>
</html>