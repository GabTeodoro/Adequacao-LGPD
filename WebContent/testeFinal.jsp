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
<style>
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
</style>
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