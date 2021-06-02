<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Teste</title>
<link rel="stylesheet" href="resources/css/cadastroStyle.css">
</head>
<body>
	<c:import url="menuHome.jsp" />
	<div id="login-box" style="height: 750px">
		<div class="center" align="center">
			<form action="CadastroQuestaoServlet" method="post">
				<table>
					<c:forEach items="${questoes}" var="questao">
					
						<h2>Questao</h2>
						<label>${questao.pergunta}: </label>
						<br>
						<input type="radio" id="respostaCorreta" name="respostaCorreta">
						<label>${questao.respostaCorreta} </label>
						<br>
						<input type="radio" id="respostaErrada1" name="respostaErrada1">
						<label>${questao.respostaErrada[0]} </label>
						<br>
						<input type="radio" id="respostaErrada2" name="respostaErrada2">
						<label>${questao.respostaErrada[1]} </label>
						<br>
						<input type="radio" id="respostaErrada3" name="respostaErrada3">
						<label>${questao.respostaErrada[2]} </label>
						<br>
					</c:forEach>
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