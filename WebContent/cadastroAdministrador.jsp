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
	<c:import url="menuAdm.jsp" />
	<div id="login-box" style="height: 480px">
		<div class="center" align="center">
			<h2 style="color: black; padding-top: 15px; margin-bottom: 0px;">Cadastro
				Administrador</h2>
			<br> <a> <img alt="" src="resources/img/user_icon.png"
				width="50">
			</a>

			<form action="CadastroAdministradorServlet" method="post"
				onsubmit="return validarCampos()? true : false;">
				<table>
					<tr>
						<td><label></label></td>
						<td><input readonly="readonly" type="hidden" id="emailAdm"
							name="emailAdm" placeholder="E-mailAdm"
							value="${administradorSessao.email}"></td>
					</tr>
					<tr>
						<td><label></label></td>
						<td><input readonly="readonly" type="hidden" id="id"
							name="id" placeholder="Id" value="${user.id}"></td>
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
	<script type="text/javascript">
		function validarCampos() {

			if (document.getElementById("nome").value == '') {
				alert('O campo Nome é obrigatório.');
				return false;

			} else if (document.getElementById("cpf").value == '') {
				alert('O campo CPF é obrigatório.');
				return false;
			} else if (document.getElementById("email").value == '') {
				alert('O campo E-mail é obrigatório.');
				return false;
			} else if (document.getElementById("senha").value == '') {
				alert('O campo Senha é obrigatório.');
				return false;
			}

			return true;
		}
	</script>
</body>
</html>