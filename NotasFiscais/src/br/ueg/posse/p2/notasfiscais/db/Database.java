package br.ueg.posse.p2.notasfiscais.db;

import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.SQLException;

public class Database {
	public static Connection getConnection() throws SQLException{
			String url = "jdbc:mysql://127.0.0.1/notasfiscais?user=root&password=root";
			
		   
			Connection conexao = DriverManager.getConnection(url);					
			System.out.println("Conectado.");
			return conexao;
			
			
	
	}
}
/*public class Database {  
    public static Connection getConnection() {  
        try {  
        	 DriverManager.registerDriver(new com.mysql.jdbc.Driver()); 
            return DriverManager.getConnection("jdbc:mysql://localhost/notasfiscais","root","root");  
        }  
        catch(SQLException excecao) {  
            throw new RuntimeException(excecao);  
        }  
    }  
} 
*/
/**/
