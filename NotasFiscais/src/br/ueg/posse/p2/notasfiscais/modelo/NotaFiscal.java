package br.ueg.posse.p2.notasfiscais.modelo;

public class NotaFiscal {
	
	private int id ;
	private int idPrestador;
	private int idCliente;
	private String data;
	private double valor;
	private double aliquota;
	private double imposto;
	private String servico;
	private int IdUsuario;
	

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getIdPrestador() {
		return idPrestador;
	}
	public void setIdPrestador(int idPrestador) {
		this.idPrestador = idPrestador;
	}
	public int getIdCliente() {
		return idCliente;
	}
	public void setIdCliente(int idCliente) {
		this.idCliente = idCliente;
	}
	public String getData() {
		return data;
	}
	public void setData(String data) {
		this.data = data;
	}
	public double getValor() {
		return valor;
	}
	public void setValor(double valor) {
		this.valor = valor;
	}
	public double getAliquota() {
		return aliquota;
	}
	public void setAliquota(double aliquota) {
		this.aliquota = aliquota;
	}
	public double getImposto() {
		return imposto;
	}
	public void setImposto(double imposto) {
		this.imposto = imposto;
	}
	public String getServico() {
		return servico;
	}
	public void setServico(String servico) {
		this.servico = servico;
	}
	public int getIdUsuario() {
		return IdUsuario;
	}
	public void setIdUsuario(int idUsuario) {
		IdUsuario = idUsuario;
	}

}
