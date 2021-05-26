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
		String user = request.getParameter("user");
		Usuario usuario = usuarioDao.buscarUsuario(user);
		
		if(acao.equalsIgnoreCase("addEmpresa")) {
			

			request.getSession().setAttribute("usuarioEmpresa", usuario);
			request.setAttribute("usuarioEmpresa", usuario);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("cadastroEmpresa.jsp");
			dispatcher.forward(request, response);
			
		}else if (acao.equalsIgnoreCase("editEmpresa")) {
			
			
			String id = request.getParameter("empresa");
			empresa = empresaDao.buscarEmpresa(id);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("cadastroEmpresa.jsp");
			request.setAttribute("usuarioEmpresa", usuario);
			request.setAttribute("empresa", empresa);
			dispatcher.forward(request, response);
			
		}
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Usuario usuario = (Usuario) request.getSession().getAttribute("usuarioEmpresa");
		
		String id = request.getParameter("id");
		String nome = request.getParameter("nome");
		String cnpj = request.getParameter("cnpj");
		
		empresa.setNome(nome);
		empresa.setCnpj(cnpj);
		empresa.setEmailUsuario(usuario.getEmail());
		
		if(id == null || id.isEmpty()) {
			
			empresaDao.cadastrarEmpresa(empresa);
			
		}else if (id != null && !id.isEmpty()) {
			
			empresa.setId(Long.parseLong(id));
			empresaDao.editarEmpresa(empresa);	
		}
		
		
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("home.jsp");
		request.setAttribute("empresas", empresaDao.listarEmpresa(usuario.getEmail()));
		request.setAttribute("user", usuario);
		dispatcher.forward(request, response);
		
	}

}
