<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
<title>Menu</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
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
	<nav class="navbar navbar-expand-sm navbar-transparent">
		<!-- Logo Com foto -->
		<div class="container">
			<a class="navbar-brand" href="index.jsp">Logo </a>
		</div>
		<!-- Links No Menu de Acesso a outras Páginas -->
		<ul class="navbar-nav">
			<li class="nav-item"><a class="btn btn-outline-light active  "
				style="border-radius: 25px" href="#">Ferramenta</a></li>
			<li></li>
			<li class="nav-item"><a class="btn btn-outline-light active "
				style="border-radius: 25px" href="cadastroUsuario.jsp">Cadastro</a></li>
			<li></li>
			<li class="nav-item"><a class="btn btn-outline-light active"
				style="border-radius: 25px" href="loginUsuario.jsp">Login</a></li>
			<li></li>
		</ul>
	</nav>

	<div class="container" style="margin-top: 80px">
		<img alt="Logo" src="resources/img/logo.png" align="right" width="600">
		<br> <br> <br> <br>
		<h1 align="center">BEM-VINDO(A)</h1>
		<h1 align="center">A MELHOR FERRAMENTA DE LGPD!</h1>
		<input type="text" type="email" id="email" name="email"
			style="border-radius: 25px; margin-top: 50px; width: 350px"
			placeholder="  meuEmail@mail.com">
		<button type="submit" class="btn btn-outline-light active"
			style="border-radius: 25px">Ir!</button>
		<br> <a style="color: white;">Insira seu e-mail e prossiga
			com o cadastro.</a>
	</div>

	<div class="container-fluid"
		style="margin-top: 200px; background-color: white;">
		<br>
		<h3>O que é a LGPD?</h3>
		<h4>It is a long established fact that a reader will be
			distracted by the readable content of a page when looking at its
			layout. The point of using Lorem Ipsum is that it has a more-or-less
			normal distribution of letters, as opposed to using 'Content here,
			content here', making it look like readable English. Many desktop
			publishing packages and web page editors now use Lorem Ipsum as their
			default model text, and a search for 'lorem ipsum' will uncover many
			web sites still in their infancy. Various versions have evolved over
			the years, sometimes by accident, sometimes on purpose (injected
			humour and the like).</h4>


		<div style="margin-top: 50px; background-color: white;">
			<h3>Sobre o nosso teste!</h3>
			<h4>It is a long established fact that a reader will be
				distracted by the readable content of a page when looking at its
				layout. The point of using Lorem Ipsum is that it has a more-or-less
				normal distribution of letters, as opposed to using 'Content here,
				content here', making it look like readable English. Many desktop
				publishing packages and web page editors now use Lorem Ipsum as
				their default model text, and a search for 'lorem ipsum' will
				uncover many web sites still in their infancy. Various versions have
				evolved over the years, sometimes by accident, sometimes on purpose
				(injected humour and the like).</h4>
		</div>
	</div>
</body>
</html>