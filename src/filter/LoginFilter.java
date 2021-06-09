package filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Usuario;

@WebFilter(filterName = "AuthFilter", urlPatterns = { "/cadastroEmpresa.jsp", "/dicasTeste.jsp",
		"/menuHome.jsp", "/testeFinal.jsp", "/home.jsp", "/footer.jsp" })
public class LoginFilter implements Filter {

	public LoginFilter() {
		// TODO Auto-generated constructor stub
	}

	public void destroy() {
		// TODO Auto-generated method stub
	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {

		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");

		HttpServletRequest req = (HttpServletRequest) request;
		HttpSession session = req.getSession();

		Usuario logado = (Usuario) session.getAttribute("logado");
		String path = req.getContextPath();
		String uri = req.getRequestURI();

		if (logado == null && !uri.equals(path + "/loginUsuario.jsp")) {

			((HttpServletResponse) response).sendRedirect(path + "/loginUsuario.jsp");
		} else {

			chain.doFilter(request, response);
		}
	}

	public void init(FilterConfig fConfig) throws ServletException {

	}

}
