package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import dao.UsuarioDao;
import model.Usuario;


@WebServlet("/LoginUsuarioServlet")
public class LoginUsuarioServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private UsuarioDao usuarioDao = new UsuarioDao();
       
   
    public LoginUsuarioServlet() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
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
				request.setAttribute("primeiroNome", primeiroNome);
				dispatcher.forward(request, response);
				
			}else {
				RequestDispatcher dispatcher = request.getRequestDispatcher("loginUsuario.jsp");
				dispatcher.forward(request, response);
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			
		}
		
	}

}
