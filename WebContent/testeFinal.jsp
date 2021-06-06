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
	<div id="login-box" style="height: 2800px; width: 1300px">
		<div class="center" align="center">
			<form action="CadastroTesteServlet" method="post" id="formTeste">
				<table>
					<c:forEach items="${questoes}" var="questao">

						<h4>Questao</h4>
						<label>${questao.pergunta}: </label>
						<br>
						<c:forEach items="${questao.respostas}" var="respostas">

							<input type="radio" id="resposta" name="resposta">
							<label>${respostas.resposta} </label>
							<br>
						</c:forEach>
					</c:forEach>
					<tr>
						<td></td>
						<td><input type="submit" value="Finalizar"
							onclick="document.getElementById('formTeste').action='CadastroTesteServlet?empresa=${empresa.id}'"></td>
					</tr>
				</table>
			</form>
		</div>
	</div>

</body>
</html>