package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.EmpresaDao;
import model.Empresa;


@WebServlet("/CadastroTesteServlet")
public class CadastroTesteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	Empresa empresa = new Empresa();
	EmpresaDao empresaDao = new EmpresaDao();
       
    
    public CadastroTesteServlet() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("empresa");
		String pergunta = request.getParameter("pergunta");
		String resposta = request.getParameter("resposta");
		String respostaCorreta = request.getParameter("respostaCorreta");
		
		System.out.println(resposta);
		
		
	}

}
