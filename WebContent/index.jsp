<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
<title>Home</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script src="js/jquery.min.js"></script>
<style>
h1 {
	color: white;
}

h2 {
	color: white;
}

h3 {
	color: black;
	font-size: 24px;
	text-transform: inherit;
	font-weight: 600;
	margin-bottom: 20px;
}

h4 {
	font-size: 19px;
	line-height: 1.375em;
	font-weight: 400;
	margin-bottom: 30px;
}

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
</head>
<body>
	<c:import url="menuHome.jsp" />

	<div class="container" style="margin-top: 80px">
		<img alt="Logo" src="resources/img/logo.png" align="right" width="600">
		<br> <br> <br> <br>
		<h1 align="center">BEM-VINDO(A)</h1>
		<h1 align="center">A MELHOR FERRAMENTA DE LGPD!</h1>
		<input type="text" type="email" id="email" name="email"
			style="border-radius: 25px; margin-top: 50px; width: 350px"
			placeholder="  meuEmail@mail.com"> <a
			type="submit" class="btn btn-outline-light active"
			href="cadastroUsuario.jsp" style="border-radius: 25px">Ir!</a> <br>
		<a style="color: white;">Insira seu e-mail e prossiga com o
			cadastro.</a>
	</div>

	<div class="container-fluid"
		style="margin-top: 200px; background-color: white;">
		<br>
		<h3>O que é a LGPD?</h3>
		<h4>LGPD é a lei geral de proteção de dados, lei número
			13.709/2018 aprovada em agosto de 2018 que regula as atividades e
			tratamentos de dados pessoais que também altera os artigos 7 0 e 1 6
			0 do Marco Civil da internet com a finalidade de impor regras o
			tratamento de dados pessoais tendo como finalidade proteger o direito
			a liberdade e a privacidade de livre desenvolvimento dos cidadãos. A
			lei não cita apenas as informações mantidas no sistema on-line mais
			sua criação se deve pela complexidade que a gestão de dados ganhou na
			economia digital. Entre os dados pessoais que segundo a LGPD são
			quaisquer informações relacionadas a pessoa natural identificada ou
			identificável, suas leis valem para pessoas físicas e jurídicas (
			públicas ou privadas ) servindo principalmente para empresas e órgãos
			públicos serem mais transparentes e responsáveis com o uso dos dados
			alheios, com o risco de multa para as empresas que pode chegar a 50
			milhões por infração. As empresas possuem dados pessoais dos usuários
			em diversas áreas e sistemas e muitas vezes os dados dos usuários
			estão presentes em várias áreas como por exemplo na área financeira,
			vendas, marketing, suporte entre outras. As empresas possuindo tantos
			dados de seus usuários devem adotar medidas adequadas aos princípios
			previstos na LGPD tendo em vista que os titulares dos dados têm o
			direito de ter o controle de seus dados.</h4>


		<div style="margin-top: 50px; background-color: white;">
			<h3>Sobre o nosso teste!</h3>
			<h4>Nossos testes são questões de alternativas sobre a LGPD (Lei
				Geral de Proteção de Dados) que deveram ser preenchidos de acordo
				com o funcionamento de sua empresa. Serão 10 questões que ao final
				será mostrado sua pontuação de acertos e determinando se a companhia
				que trabalha está de acordo com a LGPD. Caso não atinja a pontuação
				necessária, haverá uma identificação do que é necessário para se
				adequar as normas.</h4>
		</div>
	</div>
</body>
</html>