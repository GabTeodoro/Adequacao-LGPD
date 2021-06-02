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
import dao.QuestaoDao;
import model.Administrador;
import model.Questao;


@WebServlet("/CadastroQuestaoServlet")
public class CadastroQuestaoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	Questao questao = new Questao();
	QuestaoDao questaoDao = new QuestaoDao();
	
	Administrador administrador = new Administrador();
	AdministradorDao administradorDao = new AdministradorDao();
       
    
    public CadastroQuestaoServlet() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String acao = request.getParameter("acao");
	
		if(acao.equalsIgnoreCase("AddQuestion")) {
			
			String user = request.getParameter("user");
			administrador = administradorDao.buscarAdministrador(user);
			
			request.getSession().setAttribute("administradorSessao", administrador);
			request.setAttribute("administradorSessao", administrador);

			RequestDispatcher dispatcher = request.getRequestDispatcher("cadastroQuestao.jsp");
			dispatcher.forward(request, response);
			
		}else if(acao.equalsIgnoreCase("teste")) {
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("testeFinal.jsp");
			request.setAttribute("questoes", questaoDao.listarQuestoes());
			dispatcher.forward(request, response);
			
			
		}
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String emailAdm = request.getParameter("emailAdm");
		String pergunta = request.getParameter("pergunta");
		String respostaCorreta = request.getParameter("respostaCorreta");
		String respostaErrada1 = request.getParameter("respostaErrada1");
		String respostaErrada2 = request.getParameter("respostaErrada2");
		String respostaErrada3 = request.getParameter("respostaErrada3");
		
		questao.setPergunta(pergunta);
		questao.setRespostaCorreta(respostaCorreta);
		questao.setRespostaErrada1(respostaErrada1);
		questao.setRespostaErrada2(respostaErrada2);
		questao.setRespostaErrada3(respostaErrada3);
		
		
		Administrador adm = administradorDao.buscarAdministrador(emailAdm);
		questaoDao.cadastrarQuestao(questao);

		String[] nomeCompleto = adm.getNome().split(" ");
		String primeiroNome = nomeCompleto[0];

		RequestDispatcher dispatcher = request.getRequestDispatcher("homeAdm.jsp");
		HttpSession session = request.getSession();
		session.setAttribute("logado", adm);
		request.setAttribute("user", adm);
		request.setAttribute("primeiroNome", primeiroNome);
		dispatcher.forward(request, response);
	}

}
