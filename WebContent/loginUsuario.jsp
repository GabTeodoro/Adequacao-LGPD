<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link rel="stylesheet" href="resources/css/loginStyle.css">
</head>
<body>
	<c:import url="menuHome.jsp" />
	<div id="login-box" style="height: 280px">
		<div class="center" align="center">
		<br>
			<a> <img alt="" src="resources/img/user_icon.png" width="50"> </a>
			
			<form action="LoginUsuarioServlet" method="post">
				<table>
					<tr>
						<td><label>E-mail: </label></td>
						<td><input type="text" id="email" name="email"
							placeholder="E-mail"></td>
					</tr>
					<tr>
						<td><label>Senha: </label></td>
						<td><input type="password" id="senha" name="senha"
							placeholder="Senha"></td>
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