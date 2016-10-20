package br.ueg.posse.p2.notasfiscais.modelo;

public class Prestador {
	private int id;
	private String cnpj;
	private String endereco;
	private String telefone;
	private String nome;

	 public String getNome() {
		return nome;
	}

	public Prestador() {
		// TODO Auto-generated constructor stub
	}
	 
	 public int getId(){
		 return this.id;
	 }
	 
	 public void setId(int id){
		 this.id =id;		 
	 }

	public String getCnpj() {
		return cnpj;
	}

	public void setCnpj(String cnpj) {
		this.cnpj = cnpj;
	}

	public String getEndereco() {
		return endereco;
	}

	public void setEndereco(String endereco) {
		this.endereco = endereco;
	}

	public String getTelefone() {
		return telefone;
	}

	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}

	public void setNome(String nome) {
		this.nome = nome;
		
	}
	
	
	 

}
