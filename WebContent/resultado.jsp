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
	<c:import url="menuHome.jsp" />

	<h1 align="center"></h1>
	
	<footer class="container-fluid bg-footer margin footer ul-footer"
		style="margin-top: 12px; margin-bottom: 12px;">
		<p class="footer-title">Desenvolvido por</p>
		<div class="container">
			<div class="row">
				<div class="col-lg-1"></div>
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
				<div class="col-lg-1"></div>
			</div>
		</div>
	</footer>
</body>
</html>