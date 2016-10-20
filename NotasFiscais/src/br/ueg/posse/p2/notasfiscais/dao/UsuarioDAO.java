package br.ueg.posse.p2.notasfiscais.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import br.ueg.posse.p2.notasfiscais.db.Database;
import br.ueg.posse.p2.notasfiscais.modelo.Usuario;


	public class UsuarioDAO {
		
		Connection conexao = null;

		public UsuarioDAO() throws SQLException{
			conexao = Database.getConnection();
			
		}
		public void gravar(Usuario usuario) {
			try {
				String sql = "insert into usuario(login,senha,nome,tipo)values(?,?,?,?)";
				PreparedStatement stmt = conexao.prepareStatement(sql);
				stmt.setString(1, usuario.getLogin());
				stmt.setString(2, usuario.getSenha());
				stmt.setString(3, usuario.getNome());
				stmt.setString(4, usuario.getTipo());
				stmt.execute();
				stmt.close();
				conexao.close();
				
		 	      } catch (SQLException e) {
		 	    	  System.out.println("nao foi possivel inserir os dados:\n"+e);
		 	    	  
			}

		}
		public List<Usuario> getlista() throws SQLException{
			List<Usuario> Usuarios = new ArrayList<Usuario>();
			String sql = "select * from usuario";
			
			try(PreparedStatement stmt = conexao.prepareStatement(sql)){
				stmt.execute();
				ResultSet rs = stmt.getResultSet();
				while (rs.next()){
				    Usuario usuario = new Usuario();
				    usuario.setId(rs.getInt("id"));			
				    usuario.setLogin(rs.getString("login"));
				    usuario.setSenha(rs.getString("senha"));
				    usuario.setNome(rs.getString("nome"));
				    usuario.setTipo(rs.getString("tipo"));

				    Usuarios.add(usuario);
				}
				return Usuarios;
			}
		}
	}
		
	
	
	
