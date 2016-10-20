package br.ueg.posse.p2.notasfiscais.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import br.ueg.posse.p2.notasfiscais.db.Database;
import br.ueg.posse.p2.notasfiscais.modelo.Prestador;
public class PrestadorDAO {
	
	
	private Connection conexao = null;
	
	
	public PrestadorDAO() throws SQLException{
		conexao = Database.getConnection();
		
	}
	
	public void gravar(Prestador prestador) throws SQLException{
	
		String sql= "insert into prestador(nome,cnpj,endereco,telefone) values(?,?,?,?)";
		
		PreparedStatement stmt = conexao.prepareStatement(sql);
		stmt.setString(1, prestador.getNome());
		stmt.setString(2, prestador.getCnpj());
		stmt.setString(3, prestador.getEndereco());
		stmt.setString(4,prestador.getTelefone());
		
		stmt.execute();
		stmt.close();
		System.out.println("Gravado!");
		conexao.close();
	}
	
	 public void excluir(Prestador prestador) throws SQLException  
	    {  
	         
	        String sql = "DELETE FROM prestador WHERE id = ?";  
	        PreparedStatement stmt = conexao.prepareStatement(sql);  
	        stmt.setInt(1,prestador.getId());  
	          
	        stmt.execute();  
	        stmt.close(); 
	        
	    

	    }
	
	/*public int excluir(int id) throws SQLException  
    {  
         
        String sql = "DELETE FROM prestador WHERE id = ?";  
        PreparedStatement stmt = conexao.prepareStatement(sql);  
        stmt.setInt(1,id);  
          
        stmt.execute();  
        stmt.close();
		return id; 
        
    

    }*/
	 public void alterar(Prestador prestador) throws SQLException  
	    { 
	

	
		   String sql = "update prestador set nome=?,cnpj=?,endereco=?,telefone=?  where id=?";
		   PreparedStatement stmt = conexao.prepareStatement(sql);
		   stmt.setString(1, prestador.getNome());
		   stmt.setString(2, prestador.getCnpj());
		   stmt.setString(3, prestador.getEndereco());
		   stmt.setString(4, prestador.getTelefone());
		   stmt.setInt(5, prestador.getId());
		   stmt.execute();
		   stmt.close();
	}

	

	public List<Prestador> getLista() throws SQLException{
		List<Prestador> prestadores = new ArrayList<>();
		String sql = "select * from prestador";
		
		try(PreparedStatement stmt = conexao.prepareStatement(sql)){
			stmt.execute();
			ResultSet rs = stmt.getResultSet();
			while (rs.next()){
			    Prestador prestador = new Prestador();
				prestador.setId(rs.getInt("id"));
				prestador.setNome(rs.getString("nome"));
				prestador.setCnpj(rs.getString("cnpj"));
				prestador.setEndereco(rs.getString("endereco"));
				prestador.setTelefone(rs.getString("telefone"));
				prestadores.add(prestador);
			}
			return prestadores;
		}
	}
	
	public List<Prestador> buscaPorId(int id){
		String sql = "select * from prestador where id=?";
		List<Prestador> prestadores = new ArrayList<Prestador>();
		try {
			PreparedStatement stmt = conexao.prepareStatement(sql);
			stmt.setInt(1,id);
			ResultSet rs = stmt.executeQuery();
			if (rs != null) {
				while (rs.next()) {
					Prestador prestador = new Prestador();
					prestador.setId(rs.getInt(1));
					prestador.setNome(rs.getString(2));
					prestador.setCnpj(rs.getString(3));
					prestador.setEndereco(rs.getString(4));	
					prestador.setTelefone(rs.getString(5));
					prestadores.add(prestador);
				}
				return prestadores;
			} else {
				return null;
			}
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	/*	public List<Prestador> buscaPorId(int id) throws SQLException{
			String sql = "select * from prestador where id=?";
			List<Prestador> prestadores = new ArrayList<Prestador>();
				PreparedStatement stmt = conexao.prepareStatement(sql);
				stmt.setInt(1,id);
				ResultSet rs = stmt.executeQuery();
				if (rs != null) {
					while (rs.next()) {
						Prestador prestador = new Prestador();
						prestador.setId(rs.getInt(1));
						prestador.setNome(rs.getString(2));
						prestador.setCnpj(rs.getString(3));
						prestador.setEndereco(rs.getString(4));	
						prestador.setTelefone(rs.getString(5));
						prestadores.add(prestador);
					}
					return prestadores;
				} else {
					return null;
				}
			
			*/
	
				/*
				
				 public void alterar(Prestador prestador) throws SQLException  
	    { 
	

	
		   String sql = "update prestador set nome=?,cnpj=?,endereco=?,telefone=?  where id=?";
		   PreparedStatement stmt = conexao.prepareStatement(sql);
		   stmt.setString(1, prestador.getNome());
		   stmt.setString(2, prestador.getCnpj());
		   stmt.setString(3, prestador.getEndereco());
		   stmt.setString(4, prestador.getTelefone());
		   stmt.setInt(5, prestador.getId());
		   stmt.execute();
		   stmt.close();
	}
				*/
	}
}
