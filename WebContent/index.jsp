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
				<p class="h3" style="font-family: 'Gill Sans', sans-serif; margin-bottom: 20px;">O que é a LGPD?</p>
				<p class="h4" style="font-family: 'Gill Sans', sans-serif">LGPD é a Lei Geral de Proteção de Dados, número
					13.709/2018, aprovada em agosto de 2018, regula as atividades e
					tratamentos de dados pessoais. Não somente, a lei também altera os artigos 70 e 160 
					do Marco Civil da internet com a finalidade de impor regras no
					tratamento de dados pessoais e proteger o direito
					a liberdade e privacidade de livre desenvolvimento dos cidadãos. A
					lei não cita apenas as informações mantidas no sistema on-line mas também
					sua criação se deve pela complexidade que a gestão de dados ganhou na
					economia digital. Entre os dados pessoais, que segundo a LGPD são
					quaisquer informações relacionadas a pessoa natural identificada ou
					identificável, suas leis valem para pessoas físicas e jurídicas 
					(públicas ou privadas) servindo principalmente para empresas e órgãos
					públicos serem mais transparentes e responsáveis com o uso dos dados
					alheios, correndo o risco de tomarem multa com valores que podem chegar aos 50
					milhões por infração. As empresas possuem dados pessoais dos usuários
					em diversas áreas e sistemas, dados esses que muitas vezes 
					estão presentes em várias áreas, como por exemplo na área financeira,
					vendas, marketing, suporte entre outras. As empresas possuindo tantos
					dados de seus usuários devem adotar medidas adequadas aos princípios
					previstos na LGPD, tendo em vista que os titulares dos dados têm o
					direito de ter o controle de seus dados.
				</p>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12 text-center" style="padding-inline: 5%; margin-top: 5%; padding-bottom: 50px;">
				<p class="h3" style="font-family: 'Gill Sans', sans-serif; margin-bottom: 20px;">Sobre o nosso teste!</p>
				<p class="h4" style="font-family: 'Gill Sans', sans-serif">Nossos testes contêm questões de alternativa, assim como 
					questões de verdadeiro ou falso, sobre a LGPD (Lei
					Geral de Proteção de Dados). As respostas devem ser preenchidas de 
					acordo com o funcionamento e regras da sua empresa. Você responderá
					10 questões e ao final do teste terá acesso à sua porcentagem de acertos, 
					determinando se a companhia que trabalha está de acordo com a LGPD.
					Caso não atinja a pontuação necessária, haverá uma identificação do que 
					é necessário para se adequar as normas.
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