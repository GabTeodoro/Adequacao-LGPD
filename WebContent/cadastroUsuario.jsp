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
	<c:import url="menu.jsp" />
	<div id="login-box">
		<div class="center" align="center">
			<a> <img alt="" src="resources/img/user_icon.png" width="50"> </a>
			
			<form action="CadastroUsuarioServlet" method="post">
				<table>
					<tr>
						<td><label>Id: </label></td>
						<td><input readonly="readonly" type="text" id="id" name="id"
							placeholder="Id" value="${user.id}"></td>
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
						<td><label>RG: </label></td>
						<td><input type="text" id="uf" name="rg" placeholder="RG"
							value="${user.rg}"></td>
					</tr>
					<tr>
						<td><label>Área: </label></td>
						<td><input type="text" id="area" name="area"
							placeholder="Área em que atua" value="${user.area}"></td>
					</tr>
					<tr>
						<td><label>Cargo: </label></td>
						<td><input type="text" id="cargo" name="cargo"
							placeholder="Cargo atual" value="${user.cargo}"></td>
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