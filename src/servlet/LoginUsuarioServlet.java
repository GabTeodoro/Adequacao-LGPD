package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.AdministradorDao;
import dao.EmpresaDao;
import dao.UsuarioDao;
import model.Administrador;
import model.Usuario;


@WebServlet("/LoginUsuarioServlet")
public class LoginUsuarioServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private UsuarioDao usuarioDao = new UsuarioDao();
	private EmpresaDao empresaDao = new EmpresaDao();
	private AdministradorDao administradorDao = new AdministradorDao();
       
   
    public LoginUsuarioServlet() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String acao = request.getParameter("acao");
		
		if(acao.equalsIgnoreCase("logoff")) {
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
			request.setAttribute("user", null);
			HttpSession session = request.getSession();
			session.setAttribute("logado", null);
			dispatcher.forward(request, response);
			
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String email = request.getParameter("email");
		String senha = request.getParameter("senha");
		
		try {
			
			if(usuarioDao.validarUsuario(email, senha)) {
				
				Usuario usuario = usuarioDao.buscarUsuario(email);
				String [] nomeCompleto = usuario.getNome().split(" ");
				String primeiroNome = nomeCompleto[0];
				
			
				RequestDispatcher dispatcher = request.getRequestDispatcher("home.jsp");
				request.setAttribute("user", usuario);
				request.setAttribute("primeiroNome", primeiroNome);
				request.setAttribute("empresas", empresaDao.listarEmpresa(usuario.getEmail()));
				HttpSession session = request.getSession();
				session.setAttribute("logado", usuario);
				dispatcher.forward(request, response);
				
			}else if (administradorDao.validarAdministrador(email, senha)){
				
				Administrador administrador = administradorDao.buscarAdministrador(email);
				String [] nomeCompleto = administrador.getNome().split(" ");
				String primeiroNome = nomeCompleto[0];
				

				RequestDispatcher dispatcher = request.getRequestDispatcher("homeAdm.jsp");
				request.setAttribute("user", administrador);
				request.setAttribute("primeiroNome", primeiroNome);
				HttpSession session = request.getSession();
				session.setAttribute("logadoAdm", administrador);
				dispatcher.forward(request, response);
				
				
			}else {
				RequestDispatcher dispatcher = request.getRequestDispatcher("loginUsuario.jsp?falha=true");
				dispatcher.forward(request, response);
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			
		}
		
	}

}
