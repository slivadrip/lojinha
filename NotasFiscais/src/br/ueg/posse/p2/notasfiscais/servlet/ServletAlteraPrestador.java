package br.ueg.posse.p2.notasfiscais.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.ueg.posse.p2.notasfiscais.*;
import br.ueg.posse.p2.notasfiscais.dao.PrestadorDAO;
import br.ueg.posse.p2.notasfiscais.modelo.Prestador;



@WebServlet({ "/ServletAlteraPrestador", "/alteraprestador" })
public class ServletAlteraPrestador extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		
		String nome = request.getParameter("nome");
		String cnpj =request.getParameter("cnpj");
		String endereco = request.getParameter("endereco");
		String telefone = request.getParameter("telefone");
		String id = request.getParameter("id");
		
		
		Prestador prestador = new Prestador();
		try{
			PrestadorDAO dao = new PrestadorDAO();
			prestador.setNome(nome);
			prestador.setCnpj(cnpj);
			prestador.setEndereco(endereco);
			prestador.setTelefone(telefone);
			
			if (id.equals("")){
				dao.gravar(prestador);
			}else{
				prestador.setId(Integer.parseInt(id));
				dao.alterar(prestador);
			}
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("lista-prestador2.jsp");
			dispatcher.forward(request, response);
			
		}catch (SQLException ex){
			out.println("Erro:..."+ex.getMessage());
		}
	}

}