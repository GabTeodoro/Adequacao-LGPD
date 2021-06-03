package dto;

public class RespostaDto {
	
	private Long id;
	private String resposta;
	private boolean respostaCorreta;
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getResposta() {
		return resposta;
	}
	public void setResposta(String resposta) {
		this.resposta = resposta;
	}
	public boolean isRespostaCorreta() {
		return respostaCorreta;
	}
	public void setRespostaCorreta(boolean respostaCorreta) {
		this.respostaCorreta = respostaCorreta;
	}
	
	

}
