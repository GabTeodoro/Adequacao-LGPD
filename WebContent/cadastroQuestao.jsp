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
	<div id="login-box" style="height: 750px">
		<div class="center" align="center">
			<br> <a> <img alt="" src="resources/img/question_icon.png"
				width="50">
			</a>

			<form action="CadastroQuestaoServlet" method="post">
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
							name="id" placeholder="Id" value="${questao.id}"></td>
					</tr>
					<tr>
						<td><label>Pergunta: </label></td>
						<td><textarea rows="4" cols="40" maxlength="500"
								id="pergunta" name="pergunta"></textarea></td>
					</tr>
					<tr>
						<td><label>Resposta Correta: </label></td>
						<td><textarea rows="4" cols="40" maxlength="500"
								id="respostaCorreta" name="respostaCorreta"></textarea></td>
					</tr>
					<tr>
						<td><label>Resposta Errada 1: </label></td>
						<td><textarea rows="4" cols="40" maxlength="500"
								id="respostaErrada1" name="respostaErrada1"></textarea></td>
					</tr>
					<tr>
						<td><label>Resposta Errada 2: </label></td>
						<td><textarea rows="4" cols="40" maxlength="500"
								id="respostaErrada2" name="respostaErrada2"></textarea></td>
					</tr>
					<tr>
						<td><label>Resposta Errada 3: </label></td>
						<td><textarea rows="4" cols="40" maxlength="500"
								id="respostaErrada3" name="respostaErrada3"></textarea></td>
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