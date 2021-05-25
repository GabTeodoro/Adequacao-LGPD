<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script src="js/jquery.min.js"></script>
<style>
h1 {
	color: white;
}

h2 {
	color: white;
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
	<nav class="navbar navbar-expand-sm navbar-transparent">
		<!-- Logo Com foto -->
		<div class="container">
			<a class="navbar-brand" href="home.jsp">Logo </a>
		</div>
		<!-- Links No Menu de Acesso a outras Páginas -->
		<ul class="navbar-nav">
			<li class="nav-item"><a class="btn btn-outline-light active  "
				style="border-radius: 25px" href="#">Ferramenta</a></li>
			<li></li>
			<li class="nav-item"><a class="btn btn-outline-light active "
				style="border-radius: 25px" href="#">Conta</a></li>
			<li></li>
			<li class="nav-item"><a class="btn btn-outline-light active"
				style="border-radius: 25px" href="#">Empresa</a></li>
			<li></li>
		</ul>
	</nav>

	<div class="container" style="margin-top: 80px">
		<img alt="Logo" src="resources/img/logo.png" align="right" width="600">
		<br> <br> <br> <br>
		<h1 align="center">Olá ${primeiroNome},</h1>
		<h1 align="center">A MELHOR FERRAMENTA DE LGPD!</h1>
	</div>
</body>
</html>