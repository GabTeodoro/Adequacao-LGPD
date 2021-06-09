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

import model.Administrador;

@WebFilter(filterName = "AuthAdmFilter", urlPatterns = { "/cadastroQuestao.jsp", "/cadastroAdministrador.jsp" })
public class LoginAdmFilter implements Filter {

	public LoginAdmFilter() {
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

		Administrador logadoAdm = (Administrador) session.getAttribute("logadoAdm");
		String path = req.getContextPath();
		String uri = req.getRequestURI();

		if (logadoAdm == null && !uri.equals(path + "/loginUsuario.jsp")) {

			((HttpServletResponse) response).sendRedirect(path + "/loginUsuario.jsp");
		} else {

			chain.doFilter(request, response);
		}
	}

	public void init(FilterConfig fConfig) throws ServletException {

	}

}
