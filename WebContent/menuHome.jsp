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
	<nav class="navbar d-block navbar-expand-lg navbar-light">
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<c:if test="${not empty logado}">
				<div class="container-fluid">
					<a class="navbar-brand"
						href="CadastroUsuarioServlet?acao=listar&user=${logado.email}"><img
						src="resources/img/logo_icon4.png" width="70"></a>

					<ul class="navbar-nav me-auto mb-2 mb-lg-0">
						<li class="nav-item"><a
							class="btn btn-outline-light active  "
							style="border-radius: 25px" href="dicasTeste.jsp">Teste</a></li>
						<li class="nav-item"></li>
						<li class="nav-item"><a class="btn btn-outline-light active"
							style="border-radius: 25px"
							href="CadastroEmpresaServlet?acao=addEmpresa&user=${user.email}">Empresa</a></li>
						<li class="nav-item"></li>
						<li class="nav-item"><a class="btn btn-outline-dark"
							style="border-radius: 25px"
							href="LoginUsuarioServlet?acao=logoff">Sair!</a></li>
						<li class="nav-item"></li>
					</ul>
				</div>
			</c:if>
			<c:if test="${empty logado}">
				<div class="container-fluid">
					<a class="navbar-brand" href="index.jsp"><img
						src="resources/img/logo_icon4.png" width="70"></a>

					<ul class="navbar-nav me-auto mb-2 mb-lg-0">
						<li class="nav-item"><a class="btn btn-outline-light active "
							style="border-radius: 25px" href="cadastroUsuario.jsp">Cadastro</a></li>
						<li class="nav-item"></li>
						<li class="nav-item"><a class="btn btn-outline-light active"
							style="border-radius: 25px" href="loginUsuario.jsp">Login</a></li>
						<li class="nav-item"></li>
					</ul>
				</div>
			</c:if>
		</div>
	</nav>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</body>
</html>