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
import model.Usuario;

@WebServlet("/CadastroUsuarioServlet")
public class CadastroUsuarioServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private Usuario usuario = new Usuario();
	private UsuarioDao usuariodao = new UsuarioDao();
	private EmpresaDao empresaDao = new EmpresaDao();

	public CadastroUsuarioServlet() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
			
			String user = request.getParameter("email");
			
			usuario = usuariodao.buscarUsuario(user);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("cadastroUsuario.jsp");
			request.setAttribute("user", usuario);
			dispatcher.forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String id = request.getParameter("id");
		String nome = request.getParameter("nome");
		String cpf = request.getParameter("cpf");
		String email = request.getParameter("email");
		String senha = request.getParameter("senha");
		String rg = request.getParameter("rg");
		String area = request.getParameter("area");
		String cargo = request.getParameter("cargo");

		usuario.setNome(nome);
		usuario.setCpf(cpf);
		usuario.setEmail(email);
		usuario.setSenha(senha);
		usuario.setRg(rg);
		usuario.setArea(area);
		usuario.setCargo(cargo);
		
		if(id == null || id.isEmpty()) {
			
			if(!usuariodao.validarEmail(email)) {
				
				RequestDispatcher dispatcher = request.getRequestDispatcher("cadastroUsuario.jsp");
				request.setAttribute("msg", "E-mail já cadastrado. Por favor user outro e-mail");
				request.setAttribute("user", usuario);
				usuario = usuariodao.buscarUsuario(email);
				dispatcher.forward(request, response);
				
				
			}else {
				
				usuariodao.cadastrarUsuario(usuario);
				
				String [] nomeCompleto = nome.split(" ");
				String primeiroNome = nomeCompleto[0];
				
				
				RequestDispatcher dispatcher = request.getRequestDispatcher("home.jsp");
				request.setAttribute("user", usuario);
				request.setAttribute("primeiroNome", primeiroNome);
				dispatcher.forward(request, response);
			}
			
		} if (id != null && !id.isEmpty()) {
			
			if(!usuariodao.validarUsuarioEdit(email, id)) {
				
				RequestDispatcher dispatcher = request.getRequestDispatcher("cadastroUsuario.jsp");
				request.setAttribute("msg", "E-mail já cadastrado. Por favor user outro e-mail");
				request.setAttribute("user", usuario);
				usuario = usuariodao.buscarUsuario(email);
				dispatcher.forward(request, response);
				
			}else {
				
				usuario.setId(Long.parseLong(id));
				
				usuariodao.editarUsuario(usuario);
				
				String [] nomeCompleto = nome.split(" ");
				String primeiroNome = nomeCompleto[0];
				
				RequestDispatcher dispatcher = request.getRequestDispatcher("home.jsp");
				request.setAttribute("user", usuario);
				request.setAttribute("primeiroNome", primeiroNome);
				request.setAttribute("empresas", empresaDao.listarEmpresa(usuario.getEmail()));
				dispatcher.forward(request, response);
			}
			
		}
		
	}

}
