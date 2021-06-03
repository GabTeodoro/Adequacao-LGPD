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
		<c:if test="${not empty logado}">
			<!-- Logo Com foto -->
			<div class="container">
				<a class="navbar-brand"
					href="CadastroUsuarioServlet?acao=listar&user=${logado.email}"><img
					src="resources/img/logo_icon4.png" width="70"></a>
			</div>
			<!-- Links No Menu de Acesso a outras Páginas -->

			<ul class="navbar-nav">
				<li class="nav-item"><a class="btn btn-outline-light active  "
					style="border-radius: 25px" href="dicasTeste.jsp">Teste</a></li>
				<li></li>

				<li class="nav-item"><a class="btn btn-outline-light active"
					style="border-radius: 25px"
					href="CadastroEmpresaServlet?acao=addEmpresa&user=${user.email}">Empresa</a></li>
				<li></li>
				<li class="nav-item"><a class="btn btn-outline-dark"
				style="border-radius: 25px" href="LoginUsuarioServlet?acao=logoff">Sair!</a></li>
			<li></li>
			</ul>
		</c:if>

		<c:if test="${empty logado}">
			<div class="container">
				<a class="navbar-brand" href="index.jsp"><img
					src="resources/img/logo_icon4.png" width="70"></a>
			</div>
			<ul class="navbar-nav">
				<li class="nav-item"><a class="btn btn-outline-light active "
					style="border-radius: 25px" href="cadastroUsuario.jsp">Cadastro</a></li>
				<li></li>
				<li class="nav-item"><a class="btn btn-outline-light active"
					style="border-radius: 25px" href="loginUsuario.jsp">Login</a></li>
				<li></li>
			</ul>
		</c:if>
	</nav>

</body>
</html>