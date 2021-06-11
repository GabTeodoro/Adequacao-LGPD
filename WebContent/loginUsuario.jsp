<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/css/footer.css">
<link rel="stylesheet" href="resources/css/loginStyle.css">
</head>
<body>
	<c:import url="menuHome.jsp" />
	<h2 id="msg" align="center">${msg}</h2>
	<div id="login-box" style="height: 320px">
		<div class="center" align="center">
			<h2 style="color: black; padding-top: 10px; margin-bottom: 0px;">Login</h2>
			<br> <a> <img alt="" src="resources/img/user_icon.png"
				width="50">
			</a>
			<form action="LoginUsuarioServlet" method="post"
				onsubmit="return validarCampos()? true : false;">
				<table>
					<tr>
						<td><label>E-mail: </label></td>
						<td><input type="text" id="email" name="email"
							placeholder="E-mail"></td>
					</tr>
					<tr>
						<td><label>Senha: </label></td>
						<td><input type="password" id="senha" name="senha"
							placeholder="Senha"></td>
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
                        <li><a>Matheus Jatobá</a></li>
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

	<% if(request.getParameter("falha") != null)out.print("<script>alert('Usuario e/ou senha invalido!')</script>"); %>
	<script type="text/javascript">
		function validarCampos() {

			if (document.getElementById("email").value == '') {
				alert('O campo E-mail é obrigatório.');
				return false;

			} else if (document.getElementById("senha").value == '') {
				alert('O campo Senha é obrigatório.');
				return false;
			}
			return true;
		}
	</script>
</body>
</html>