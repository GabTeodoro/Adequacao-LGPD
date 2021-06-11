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

/* Estilo do Footer */
.footer-title {
font-size: 25px;
color: white;
text-align: center;
}

.ul-footer {
  list-style-type: none;
  font-size: 14px;
  margin: 0;
  padding: 0;
  color: white;
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

	<div class="container-fluid" style="padding-top: 50px; margin-top: 17%; background-color: white;">
		<div class="row">
			<div class="col-lg-12 text-center" style="padding-inline: 5%;">
				<p class="h3" style="font-family: 'Gill Sans', sans-serif">O que � a LGPD?</p>
					<p class="h4" style="font-family: 'Gill Sans', sans-serif">LGPD � a lei geral de prote��o de dados, lei n�mero
					13.709/2018 aprovada em agosto de 2018 que regula as atividades e
					tratamentos de dados pessoais que tamb�m altera os artigos 7 0 e 1 6
					0 do Marco Civil da internet com a finalidade de impor regras o
					tratamento de dados pessoais tendo como finalidade proteger o direito
					a liberdade e a privacidade de livre desenvolvimento dos cidad�os. A
					lei n�o cita apenas as informa��es mantidas no sistema on-line mais
					sua cria��o se deve pela complexidade que a gest�o de dados ganhou na
					economia digital. Entre os dados pessoais que segundo a LGPD s�o
					quaisquer informa��es relacionadas a pessoa natural identificada ou
					identific�vel, suas leis valem para pessoas f�sicas e jur�dicas (
					p�blicas ou privadas ) servindo principalmente para empresas e �rg�os
					p�blicos serem mais transparentes e respons�veis com o uso dos dados
					alheios, com o risco de multa para as empresas que pode chegar a 50
					milh�es por infra��o. As empresas possuem dados pessoais dos usu�rios
					em diversas �reas e sistemas e muitas vezes os dados dos usu�rios
					est�o presentes em v�rias �reas como por exemplo na �rea financeira,
					vendas, marketing, suporte entre outras. As empresas possuindo tantos
					dados de seus usu�rios devem adotar medidas adequadas aos princ�pios
					previstos na LGPD tendo em vista que os titulares dos dados t�m o
					direito de ter o controle de seus dados.
				</p>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12 text-center" style="padding-inline: 5%; margin-top: 5%; padding-bottom: 50px;">
				<p class="h3" style="font-family: 'Gill Sans', sans-serif">Sobre o nosso teste!</p>
				<p class="h4" style="font-family: 'Gill Sans', sans-serif">Nossos testes s�o quest�es de alternativas sobre a LGPD (Lei
					Geral de Prote��o de Dados) que deveram ser preenchidos de acordo
					com o funcionamento de sua empresa. Ser�o 10 quest�es que ao final
					ser� mostrado sua pontua��o de acertos e determinando se a companhia
					que trabalha est� de acordo com a LGPD. Caso n�o atinja a pontua��o
					necess�ria, haver� uma identifica��o do que � necess�rio para se
					adequar as normas.
				</p>
			</div>
		</div>
	</div>
	<footer class="container-fluid bg-footer margin footer ul-footer" style="margin-top: 12px; margin-bottom: 12px;">
        <p class="footer-title">Desenvolvido por</p>
        <div class="container">
            <div class="row">
                <div class="col-lg-1">
                </div>
                <div class="col-lg-2">
                    <ul class="ul-footer">
                        <li><a>Evanilson Peres</a></li>
                        <li><a href="#">Linkedin</a></li>
                        <li><a href="#">GitHub</a></li>
                        <li><a href="#">evanilson@mail.com</a></li>
                    </ul>
                </div>
                <div class="col-lg-2">
                    <ul class="ul-footer">
                        <li><a>Gabriel Teodoro</a></li>
                        <li><a href="#">Linkedin</a></li>
                        <li><a href="#">GitHub</a></li>
                        <li><a href="#">gabriel@mail.com</a></li>
                    </ul>
                </div>
                <div class="col-lg-2">
                    <ul class="ul-footer">
                        <li><a>Isabelle Aguiar Silva</a></li>
                        <li><a href="#">Linkedin</a></li>
                        <li><a href="#">GitHub</a></li>
                        <li><a href="#">isabelle@mail.com</a></li>
                    </ul>
                </div>
                <div class="col-lg-2">
                    <ul class="ul-footer">
                        <li><a>Ivan Souto</a></li>
                        <li><a href="#">Linkedin</a></li>
                        <li><a href="#">GitHub</a></li>
                        <li><a href="#">ivan@mail.com</a></li>
                    </ul>
                </div>
                <div class="col-lg-2">
                    <ul class="ul-footer">
                        <li><a>Matheus Jatobá</a></li>
                        <li><a href="#">Linkedin</a></li>
                        <li><a href="#">GitHub</a></li>
                        <li><a href="#">matheus@mail.com</a></li>
                    </ul>
                </div>
                <div class="col-lg-1">
                </div>
            </div>
        </div>
    </footer>
</body>
</html>