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

import br.ueg.posse.p2.notasfiscais.dao.NotaFiscalDAO;
import br.ueg.posse.p2.notasfiscais.dao.PrestadorDAO;
import br.ueg.posse.p2.notasfiscais.modelo.NotaFiscal;
import br.ueg.posse.p2.notasfiscais.modelo.Prestador;

/**
 * Servlet implementation class ServletExcluirNotas
 */
@WebServlet("/ServletExcluirNotas")
public class ServletExcluirNotas extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		PrintWriter out = response.getWriter();
		NotaFiscal notafiscal = new NotaFiscal();
		
		notafiscal.setId(Integer.parseInt(id));
		
		try{
			NotaFiscalDAO dao = new NotaFiscalDAO();
			dao.excluir(notafiscal);
			RequestDispatcher dispatcher = request.getRequestDispatcher("listaNotas.jsp");
			dispatcher.forward(request, response);
		
		}catch (SQLException ex){
			out.println("Erro ao excluir: "+ex.getMessage());
		}
	}

}
