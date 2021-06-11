<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Pré-Teste</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/css/footer.css">
<link rel="stylesheet" href="resources/css/cadastroStyle.css">
</head>

<body>
	<c:import url="menuHome.jsp" />
	<div id="login-box">
		<div class="center" align="center"
			style="padding-left: 20px; padding-right: 20px;">
			<h1 style="font-size: x-large; font-weight: 400;color: black; padding-top: 30px; padding-bottom: 12px;">Dicas!</h1>
			<p
				style="margin-left: 40px; margin-right: 40px; margin-bottom: 30px; margin-bottom: 60px; font-size: large;">Você
				está prestes a realizar um teste que avalia a regularidade da sua
				empresa dentro da LGPD. Mas antes, é importante seguir algumas
				instruções!</p>
			<h6>1. Escolha o horário mais tranquilo do seu dia para
				responder às perguntas calmamente.</h6>
			<h6>2. Leia as perguntas com atenção, não há limite de tempo
				para responder então não tenha pressa.</h6>
			<h6>3. Procure as respostas que estão mais próximas da realidade
				da sua empresa.</h6>
			<h6>4. Antes de enviar o questionário revise suas respostas e
				faça alterações caso seja necessário.</h6>
			<br>
			<a class="btn btn-confirm btn-lg" style="background-color: #1E90FF; color: white; margin-top: 24px;"
				href="CadastroQuestaoServlet?acao=teste&empresa=${empresa.id}">Vamos lá!</a>

		</div>
	</div>
</body>
</html>