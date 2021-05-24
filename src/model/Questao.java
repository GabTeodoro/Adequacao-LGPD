package model;

public class Questao {
	
	private String pergunta;
	private String respostaCorreta;
	private String[] respostaErrada = new String[3];
	
	public String getPergunta() {
		return pergunta;
	}
	public void setPergunta(String pergunta) {
		this.pergunta = pergunta;
	}
	public String getRespostaCorreta() {
		return respostaCorreta;
	}
	public void setRespostaCorreta(String respostaCorreta) {
		this.respostaCorreta = respostaCorreta;
	}
	public String[] getRespostaErrada() {
		return respostaErrada;
	}
	public void setRespostaErrada(String[] respostaErrada) {
		this.respostaErrada = respostaErrada;
	}
	

}
