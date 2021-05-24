package model;

import java.util.ArrayList;
import java.util.List;

public class Teste {
	
	private List<Questao> questoes = new ArrayList<Questao>();
	private double nota;
	private String estado;
	
	public List<Questao> getQuestoes() {
		return questoes;
	}
	public void setQuestoes(List<Questao> questoes) {
		this.questoes = questoes;
	}
	public double getNota() {
		return nota;
	}
	public void setNota(double nota) {
		this.nota = nota;
	}
	public String getEstado() {
		return estado;
	}
	public void setEstado(String estado) {
		this.estado = estado;
	}

}
