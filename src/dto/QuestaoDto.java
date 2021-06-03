package dto;

import java.util.ArrayList;
import java.util.List;

public class QuestaoDto {

	private Long id;
	private String pergunta;
	private List<RespostaDto> respostas = new ArrayList<RespostaDto>();
	
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getPergunta() {
		return pergunta;
	}
	public void setPergunta(String pergunta) {
		this.pergunta = pergunta;
	}
	public List<RespostaDto> getRespostas() {
		return respostas;
	}
	public void setRespostas(List<RespostaDto> respostas) {
		this.respostas = respostas;
	}
	
	
}
