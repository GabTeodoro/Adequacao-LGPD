package servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.AdministradorDao;
import dao.QuestaoDao;
import dao.EmpresaDao;
import dto.QuestaoDto;
import dto.RespostaDto;
import model.Administrador;
import model.Empresa;
import model.Questao;


@WebServlet("/CadastroQuestaoServlet")
public class CadastroQuestaoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	Questao questao = new Questao();
	QuestaoDao questaoDao = new QuestaoDao();
	
	Administrador administrador = new Administrador();
	AdministradorDao administradorDao = new AdministradorDao();
	
	Empresa empresa = new Empresa();
	EmpresaDao empresaDao = new EmpresaDao();
       
    
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
			
			 String id = request.getParameter("empresa");
			 empresa = empresaDao.buscarEmpresa(id);
			 
			 List<Questao> questoes = questaoDao.listarQuestoes();
			 List<QuestaoDto> questoesDto = new ArrayList<QuestaoDto>();
			 
			 questoes.forEach(q -> {
				 QuestaoDto qDto = new QuestaoDto();
				 qDto.setId(q.getId());
				 qDto.setPergunta(q.getPergunta());
				 
				 RespostaDto r1 = new RespostaDto();
				 r1.setId(1L);
				 r1.setResposta(q.getRespostaCorreta());
				 r1.setRespostaCorreta(true);
				 
				 RespostaDto r2 = new RespostaDto();
				 r2.setId(2L);
				 r2.setResposta(q.getRespostaErrada()[0]);
				 r2.setRespostaCorreta(false);
				 
				 RespostaDto r3 = new RespostaDto();
				 r3.setId(3L);
				 r3.setResposta(q.getRespostaErrada()[1]);
				 r3.setRespostaCorreta(false);
				 
				 RespostaDto r4 = new RespostaDto();
				 r4.setId(4L);
				 r4.setResposta(q.getRespostaErrada()[2]);
				 r4.setRespostaCorreta(false);
				 
				 var respostas = Arrays.asList(r1, r2, r3, r4);
				 Collections.shuffle(respostas);
				 qDto.setRespostas(respostas);
				 
				 questoesDto.add(qDto);
			 });
			 
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("testeFinal.jsp");
			request.setAttribute("questoes", questoesDto);
			request.setAttribute("empresa", empresa);
			dispatcher.forward(request, response);
			
			
		} else if (acao.equalsIgnoreCase("listar")) {
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("tabelasQuestoes.jsp");
			request.setAttribute("questoes", questaoDao.listarQuestoes());
			dispatcher.forward(request, response);
			
		} else if (acao.equalsIgnoreCase("removeQuestion")) {
			
			String id = request.getParameter("questao");
			
			questaoDao.deletarQuestao(id);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("tabelasQuestoes.jsp");
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
