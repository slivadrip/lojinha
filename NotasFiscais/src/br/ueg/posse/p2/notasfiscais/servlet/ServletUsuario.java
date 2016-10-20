package br.ueg.posse.p2.notasfiscais.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.ueg.posse.p2.notasfiscais.criptografia.Criptografia;
import br.ueg.posse.p2.notasfiscais.dao.UsuarioDAO;
import br.ueg.posse.p2.notasfiscais.modelo.Usuario;

/**
 * Servlet implementation class ServletUsuario
 */
@WebServlet({ "/ServletUsuario", "/usuario" })
public class ServletUsuario extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		String login = request.getParameter("login");
		String senha = request.getParameter("senha");
		String nome = request.getParameter("nome");
	
		String tipo = request.getParameter("tipo");
	
		String cripto = Criptografia.criptografar(senha);
		
		 senha = cripto;
		 System.out.println(senha);
		//Gravar no Banco
		
		Usuario usuario = new Usuario();
		usuario.setLogin(login);
		usuario.setSenha(senha);
		usuario.setNome(nome);
		usuario.setTipo(tipo);
		try{
		 UsuarioDAO dao = new UsuarioDAO();
		 dao.gravar(usuario);
		}catch (SQLException e){
			System.out.println("Ocorreu um erro"+ e);
		}
		
	}

}
