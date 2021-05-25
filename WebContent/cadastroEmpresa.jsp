<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cadastro</title>
<link rel="stylesheet" href="resources/css/cadastroStyle.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
</head>
<body>
	<c:import url="menuHome.jsp" />
	
	<div id="login-box" style="height: 350px">
		<div class="center" align="center">
		<br>
			<a> <img alt="" src="resources/img/company_icon.png" width="50"> </a>
			
			<form action="CadastroEmpresaServlet" method="post">
				<table>
					<tr>
						<td><label>Id: </label></td>
						<td><input readonly="readonly" type="text" id="id" name="id"
							placeholder="Id" value="${user.id}"></td>
					</tr>
					<tr>
						<td><label>Nome: </label></td>
						<td><input type="text" id="nome" name="nome"
							placeholder="Nome da Empresa" value="${user.nome}"></td>
					</tr>
					<tr>
						<td><label>CNPJ: </label></td>
						<td><input type="text" id="cnpj" name="cnpj" placeholder="CNPJ da Empresa"
							value="${user.cnpj}"></td>
					</tr>
					<tr>
						<td></td>
						<td><input type="submit" value="Cadastrar"
							style="width: 100%"></td>
					</tr>
				</table>
			</form>
		</div>
	</div>

</body>
</html>