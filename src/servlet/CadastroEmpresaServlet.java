package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.EmpresaDao;
import dao.UsuarioDao;
import model.Empresa;
import model.Usuario;

@WebServlet("/CadastroEmpresaServlet")
public class CadastroEmpresaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	UsuarioDao usuarioDao = new UsuarioDao();
	
	Empresa empresa = new Empresa();
	EmpresaDao empresaDao = new EmpresaDao();
   
    public CadastroEmpresaServlet() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String acao = request.getParameter("acao");
		
		if(acao.equalsIgnoreCase("addEmpresa")) {
			
			String user = request.getParameter("user");
			Usuario usuario = usuarioDao.buscarUsuario(user);
			
			request.getSession().setAttribute("usuarioEmpresa", usuario);
			request.setAttribute("usuarioEmpresa", usuario);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("cadastroEmpresa.jsp");
			dispatcher.forward(request, response);
		}
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Usuario usuario = (Usuario) request.getSession().getAttribute("usuarioEmpresa");
		
		String nome = request.getParameter("nome");
		String cnpj = request.getParameter("cnpj");
		
		empresa.setNome(nome);
		empresa.setCnpj(cnpj);
		empresa.setEmailUsuario(usuario.getEmail());
		
		empresaDao.cadastrarEmpresa(empresa);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("home.jsp");
		request.setAttribute("user", usuario);
		dispatcher.forward(request, response);
		
	}

}
