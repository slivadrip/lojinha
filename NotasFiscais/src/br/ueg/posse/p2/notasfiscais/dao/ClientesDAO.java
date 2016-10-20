package br.ueg.posse.p2.notasfiscais.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import br.ueg.posse.p2.notasfiscais.db.Database;
import br.ueg.posse.p2.notasfiscais.modelo.Clientes;
import br.ueg.posse.p2.notasfiscais.modelo.Prestador;

public class ClientesDAO {

private Connection conexao = null;
	
	 public ClientesDAO() throws SQLException{
		conexao = Database.getConnection();
		
	}
	
	public void gravar(Clientes clientes) throws SQLException{
	
		String sql= "insert into clientes(nome,cpf,endereco,email,telefone)"+ "values(?,?,?,?,?)";
		
		PreparedStatement stmt = conexao.prepareStatement(sql);
		stmt.setString(1,clientes.getNome());
		stmt.setString(2,clientes.getCpf());
		stmt.setString(3,clientes.getEndereco());
		stmt.setString(4,clientes.getEmail());
		stmt.setString(5,clientes.getTelefone());
		
		
		stmt.execute();
		stmt.close();
}
	public List<Clientes> getLista() throws SQLException{
		List<Clientes> clientes = new ArrayList<>();
		String sql = "select * from clientes";
		
		try(PreparedStatement stmt = conexao.prepareStatement(sql)){
			stmt.execute();
			ResultSet rs = stmt.getResultSet();
			while (rs.next()){
			    Clientes cliente = new Clientes();
			    cliente.setId(rs.getInt("id"));
			    cliente.setNome(rs.getString("nome"));
			    cliente.setCpf(rs.getString("cpf"));
			    cliente.setEndereco(rs.getString("endereco"));
			    cliente.setEmail(rs.getString("email"));
			    cliente.setTelefone(rs.getString("telefone"));
			    clientes.add(cliente);
			}
			return clientes;
		}
	}
}