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
import model.Administrador;

@WebServlet("/CadastroAdministradorServlet")
public class CadastroAdministradorServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	Administrador administrador = new Administrador();
	AdministradorDao administradorDao = new AdministradorDao();
    
    public CadastroAdministradorServlet() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String acao = request.getParameter("acao");
		String user = request.getParameter("user");
		
		if(acao.equalsIgnoreCase("AddAdm")) {
			
			administrador = administradorDao.buscarAdministrador(user);
			
			request.getSession().setAttribute("administradorSessao", administrador);
			request.setAttribute("administradorSessao", administrador);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("cadastroAdministrador.jsp");
			dispatcher.forward(request, response);
		}
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String emailAdm = request.getParameter("emailAdm");
		String nome = request.getParameter("nome");
		String cpf = request.getParameter("cpf");
		String email = request.getParameter("email");
		String senha = request.getParameter("senha");
		
		administrador.setNome(nome);
		administrador.setCpf(cpf);
		administrador.setEmail(email);
		administrador.setSenha(senha);
		
		Administrador adm = administradorDao.buscarAdministrador(emailAdm);
		administradorDao.cadastrarAdministrador(administrador);
		
		
		String [] nomeCompleto = adm.getNome().split(" ");
		String primeiroNome = nomeCompleto[0];
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("homeAdm.jsp");
		HttpSession session = request.getSession();
		session.setAttribute("logado", adm);
		request.setAttribute("user", adm);
		request.setAttribute("primeiroNome", primeiroNome);
		dispatcher.forward(request, response);
		
		
		
	}

}
