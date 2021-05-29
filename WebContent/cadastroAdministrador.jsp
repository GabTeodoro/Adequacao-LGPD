<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cadastro</title>
<link rel="stylesheet" href="resources/css/cadastroStyle.css">
</head>
<body>
	<c:import url="menuHome.jsp" />
	<div id="login-box" style="height: 450px">
		<div class="center" align="center">
		<br>
			<a> <img alt="" src="resources/img/user_icon.png" width="50"> </a>
			
			<form action="CadastroAdministradorServlet" method="post">
				<table>
					<tr>
						<td><label>E-mail ADM: </label></td>
						<td><input readonly="readonly" type="text" id="emailAdm" name="emailAdm"
							placeholder="E-mailAdm" value="${administradorSessao.email}"></td>
					</tr>
					<tr>
						<td><label>Nome: </label></td>
						<td><input type="text" id="nome" name="nome"
							placeholder="Nome Completo" value="${user.nome}"></td>
					</tr>
					<tr>
						<td><label>CPF: </label></td>
						<td><input type="text" id="cpf" name="cpf" placeholder="CPF"
							value="${user.cpf}"></td>
					</tr>
					<tr>
						<td><label>E-mail: </label></td>
						<td><input type="text" id="email" name="email"
							placeholder="E-mail" value="${user.email}"></td>
					</tr>
					<tr>
						<td><label>Senha: </label></td>
						<td><input type="password" id="senha" name="senha"
							placeholder="Senha" value="${user.senha}"></td>
					</tr>
					<tr>
						<td></td>
						<td><input type="submit" value="Confirmar"
							style="width: 100%"></td>
					</tr>
				</table>
			</form>
		</div>
	</div>

</body>
</html>