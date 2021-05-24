package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import dao.UsuarioDao;


@WebServlet("/LoginUsuarioServlet")
public class LoginUsuarioServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private UsuarioDao usuariodao = new UsuarioDao();
       
   
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
			
			if(usuariodao.validarUsuario(email, senha)) {
				
				RequestDispatcher dispatcher = request.getRequestDispatcher("portal.jsp");
				dispatcher.forward(request, response);
				
			}else {
				RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
				dispatcher.forward(request, response);
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			
		}
		
	}

}
