package br.ueg.posse.p2.notasfiscais.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.sql.Connection;
import java.sql.DriverManager;






import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.ueg.posse.p2.notasfiscais.dao.PrestadorDAO;
import br.ueg.posse.p2.notasfiscais.modelo.Prestador;
import br.ueg.posse.p2.notasfiscais.*;

@WebServlet({ "/ServletExcluiPrestador", "/excluirPrestador" })
public class ServletExcluiPrestador extends HttpServlet {
	private static final long serialVersionUID = 1L;


	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		PrintWriter out = response.getWriter();
		Prestador prestador = new Prestador();
		
		prestador.setId(Integer.parseInt(id));
		
		try{
			PrestadorDAO dao = new PrestadorDAO();
			dao.excluir(prestador);
			RequestDispatcher dispatcher = request.getRequestDispatcher("lista-prestador2.jsp");
			dispatcher.forward(request, response);
		
		}catch (SQLException ex){
			out.println("Erro ao excluir: "+ex.getMessage());
		}
	}


	}


