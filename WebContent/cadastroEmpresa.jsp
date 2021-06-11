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
<body>
	<c:import url="menuHome.jsp" />

	<div id="login-box" style="height: 400px">
		<div class="center" align="center">
			<h2 style="color: black; padding-top: 15px; padding-bottom: 0px;">Cadastro
				Empresa</h2>
			<br> <a> <img alt="" src="resources/img/company_icon.png"
				width="50">
			</a>

			<form action="CadastroEmpresaServlet" method="post"
				onsubmit="return validarCampos()? true : false;">
				<table>
					<tr>
						<td><label></label></td>
						<td><input readonly="readonly" type="hidden" id="id"
							name="id" placeholder="Id da Empresa" value="${empresa.id}"></td>
					</tr>
					<tr>
						<td><label>E-mail: </label></td>
						<td><input readonly="readonly" type="text" id="email"
							name="email" placeholder="E-mail do usuário"
							value="${usuarioEmpresa.email}"></td>
					</tr>
					<tr>
						<td><label>Nome: </label></td>
						<td><input type="text" id="nome" name="nome"
							placeholder="Nome da Empresa" value="${empresa.nome}"></td>
					</tr>
					<tr>
						<td><label>CNPJ: </label></td>
						<td><input type="text" id="cnpj" name="cnpj"
							placeholder="CNPJ da Empresa" value="${empresa.cnpj}"></td>
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
	
	<script type="text/javascript">
		function validarCampos() {

			if (document.getElementById("nome").value == '') {
				alert('O campo Nome é obrigatório.');
				return false;

			} else if (document.getElementById("cnpj").value == '') {
				alert('O campo CNPJ é obrigatório.');
				return false;
			}
			return true;
		}
	</script>
</body>
</html>