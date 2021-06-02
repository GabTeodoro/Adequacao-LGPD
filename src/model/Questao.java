package model;

public class Questao {
	
	private Long id;
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
	public void setRespostaErrada1(String respostaErrada) {
		this.respostaErrada[0] = respostaErrada;
	}
	public void setRespostaErrada2(String respostaErrada) {
		this.respostaErrada[1] = respostaErrada;
	}
	public void setRespostaErrada3(String respostaErrada) {
		this.respostaErrada[2] = respostaErrada;
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}

}
