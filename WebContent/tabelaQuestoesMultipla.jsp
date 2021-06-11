<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Questões</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<style>
h1 {
	color: white;
	font-size: 34px;
	text-transform: inherit;
	font-weight: 1000;
}

h2 {
	color: white;
	font-size: 29px;
	text-transform: inherit;
	font-weight: 800;
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
	<c:import url="menuAdm.jsp" />

	<!-- Tabela de Questões de Múltipla Escolha -->
	
	<div class="container-fluid text-center" style="margin-top: 25px; padding-top: 60px; padding-bottom: 60px; background-color: white; place-content: center;"		>
		<div class="row d-flex justify-content-center">
			<div class="col-sm-10">
				<h2 style="color:black">Questões de Múltipla Escolha</h2>
				<a class="btn btn-outline-dark activated align-content-lg-end" style="border-radius: 25px; margin-bottom: 25px;"
				href="CadastroQuestaoServlet?acao=AddQuestion&user=${user.email}">Cadastrar Nova Questão</a>
				<table class="table table-hover table-bordered">
					<thead class="thead-dark">
						<tr>
							<th scope="col">Questão</th>
							<th scope="col">Resposta</th>
							<th scope="col">Editar</th>
							<th scope="col">Excluir</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${questoes}" var="questao">						
							<tr>
								<td><c:out value="${questao.pergunta}"></c:out></td>
								<td><c:out value="${questao.respostaCorreta}"></c:out></td>
								<td><a
									href="CadastroQuestaoServlet?acao=editQuestion&questao=${questao.id}"><img
										alt="Editar" title="Editar Questão" src="resources/img/edit_icon.png" width="20px"
										height="20px"></a></td>
								<td><a
									href="CadastroQuestaoServlet?acao=removeQuestion&questao=${questao.id}"><img
										alt="Excluir" title="Excluir Questão" src="resources/img/exclude_icon.png" width="20px"
										height="20px"></a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
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