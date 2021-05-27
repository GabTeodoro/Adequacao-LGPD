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
		<h4>Sed ut perspiciatis unde omnis iste natus error sit
			voluptatem accusantium doloremque laudantium, totam rem aperiam,
			eaque ipsa quae ab illo inventore veritatis et quasi architecto
			beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia
			voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur
			magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro
			quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur,
			adipisci velit, sed quia non numquam eius modi tempora incidunt ut
			labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima
			veniam, quis nostrum.</h4>


		<div style="margin-top: 50px; background-color: white;">
			<h3>Sobre o nosso teste!</h3>
			<h4>At vero eos et accusamus et iusto odio dignissimos ducimus
				qui blanditiis praesentium voluptatum deleniti atque corrupti quos
				dolores et quas molestias excepturi sint occaecati cupiditate non
				provident, similique sunt in culpa qui officia deserunt mollitia
				animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis
				est et expedita distinctio. Nam libero tempore, cum soluta nobis est
				eligendi optio cumque nihil impedit quo minus id quod maxime placeat
				facere possimus, omnis voluptas assumenda est, omnis dolor
				repellendus. Temporibus autem quibusdam et aut officiis debitis aut
				rerum necessitatibus saep.</h4>
		</div>
	</div>
</body>
</html>