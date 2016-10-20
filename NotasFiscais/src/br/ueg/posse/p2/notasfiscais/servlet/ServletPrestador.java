package br.ueg.posse.p2.notasfiscais.servlet;

import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.ueg.posse.p2.notasfiscais.dao.PrestadorDAO;
import br.ueg.posse.p2.notasfiscais.modelo.Prestador;

/**
 * Servlet implementation class ServletPrestador
 */
@WebServlet({ "/ServletPrestador", "/prestadores" })
public class ServletPrestador extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	
		String nome = request.getParameter("nome");
		String cnpj = request.getParameter("cnpj");
		String endereco= request.getParameter("endereco");
		String telefone= request.getParameter("telefone");
		
				//Gravar no banco
				Prestador prestador = new Prestador();
				prestador.setNome(nome);
				prestador.setCnpj(cnpj);
				prestador.setEndereco(endereco);
				prestador.setTelefone(telefone);
				
				try{
				
				PrestadorDAO dao = new PrestadorDAO();
				dao.gravar(prestador);
				}catch (SQLException e){
						System.out.println("Ocorreu um erro"+e.getMessage());		
				}
				
			
				
				
	}
}
