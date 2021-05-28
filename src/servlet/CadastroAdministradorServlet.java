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
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String nome = request.getParameter("nome");
		String cpf = request.getParameter("cpf");
		String email = request.getParameter("email");
		String senha = request.getParameter("senha");
		
		administrador.setNome(nome);
		administrador.setCpf(cpf);
		administrador.setEmail(email);
		administrador.setSenha(senha);
		
		administradorDao.cadastrarAdministrador(administrador);
		
		String [] nomeCompleto = nome.split(" ");
		String primeiroNome = nomeCompleto[0];
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("homeAdm.jsp");
		HttpSession session = request.getSession();
		session.setAttribute("logado", administrador);
		request.setAttribute("user", administrador);
		request.setAttribute("primeiroNome", primeiroNome);
		dispatcher.forward(request, response);
		
		
		
	}

}
