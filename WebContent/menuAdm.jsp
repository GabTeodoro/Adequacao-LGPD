<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Menu</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
</head>
<style>
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
<body>
	<nav class="navbar navbar-expand-sm navbar-transparent">
		<div class="container">
			<a class="navbar-brand" href="homeAdm.jsp">Logo </a>
		</div>
		<ul class="navbar-nav">
			<li class="nav-item"><a class="btn btn-outline-light active "
				style="border-radius: 25px" href="CadastroAdministradorServlet?acao=addAdm&user=${user.email}">Cadastro</a></li>
			<li></li>
			<li class="nav-item"><a class="btn btn-outline-light active"
				style="border-radius: 25px" href="CadastroAdministradorServlet?acao=listAdm&user=${user.email}">Admins</a></li>
			<li></li>
			<li class="nav-item"><a class="btn btn-outline-light active"
				style="border-radius: 25px" href="cadastroQuestao.jsp">Questões</a></li>
			<li></li>
		</ul>
	</nav>

</body>
</html>