<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cadastro</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/css/footer.css">
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
	<c:import url="menuAdm.jsp" />
	<div id="login-box" style="height: 750px; width: 600px;">
		<div class="center" align="center">
			<br> <a> <img alt="" src="resources/img/question_icon.png"
				width="50">
			</a>

			<form action="CadastroQuestaoServlet" method="post"
				onsubmit="return validarCampos()? true : false;">
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
								id="pergunta" name="pergunta">${questao.pergunta}</textarea></td>
					</tr>
					<tr>
					<td>
						<td><input type="radio" name="alternativa" id="verdadeiro" value="verdadeiro">Verdadeiro</td>
					</tr>
					<tr>
					<td>
						<td><input type="radio" name="alternativa" id="falso" value="falso">Falso</td>
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
	<footer class="container-fluid bg-footer margin footer ul-footer" style="margin-top: 12px; margin-bottom: 12px;">
        <p class="footer-title">Desenvolvido por</p>
        <div class="container">
            <div class="row">
                <div class="col-lg-1">
                </div>
                <div class="col-lg-2">
                    <ul class="ul-footer">
                        <li><a>Evanilson Peres</a></li>
                        <li><a href="#" id="link-footer">Linkedin</a></li>
                        <li><a href="#" id="link-footer">GitHub</a></li>
                        <li><a href="#" id="link-footer">evanilson@mail.com</a></li>
                    </ul>
                </div>
                <div class="col-lg-2">
                    <ul class="ul-footer">
                        <li><a>Gabriel Teodoro</a></li>
                        <li><a href="#" id="link-footer">Linkedin</a></li>
                        <li><a href="#" id="link-footer">GitHub</a></li>
                        <li><a href="#" id="link-footer">gabriel@mail.com</a></li>
                    </ul>
                </div>
                <div class="col-lg-2">
                    <ul class="ul-footer">
                        <li><a>Isabelle Aguiar Silva</a></li>
                        <li><a href="#" id="link-footer">Linkedin</a></li>
                        <li><a href="#" id="link-footer">GitHub</a></li>
                        <li><a href="#" id="link-footer">isabelle@mail.com</a></li>
                    </ul>
                </div>
                <div class="col-lg-2">
                    <ul class="ul-footer">
                        <li><a>Ivan Souto</a></li>
                        <li><a href="#" id="link-footer">Linkedin</a></li>
                        <li><a href="#" id="link-footer">GitHub</a></li>
                        <li><a href="#" id="link-footer">ivan@mail.com</a></li>
                    </ul>
                </div>
                <div class="col-lg-2">
                    <ul class="ul-footer">
                        <li><a>Matheus Jatob??</a></li>
                        <li><a href="#" id="link-footer">Linkedin</a></li>
                        <li><a href="#" id="link-footer">GitHub</a></li>
                        <li><a href="#" id="link-footer">matheus@mail.com</a></li>
                    </ul>
                </div>
                <div class="col-lg-1">
                </div>
            </div>
        </div>
	</footer>
	<script type="text/javascript">
		function validarCampos() {

			if (document.getElementById("pergunta").value == '') {
				alert('O campo Pergunta ?? obrigat??rio.');
				return false;
			} 
			return true;
		}
	</script>
</body>
</html>