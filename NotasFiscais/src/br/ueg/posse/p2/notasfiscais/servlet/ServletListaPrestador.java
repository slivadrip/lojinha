package br.ueg.posse.p2.notasfiscais.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.ueg.posse.p2.notasfiscais.dao.PrestadorDAO;
import br.ueg.posse.p2.notasfiscais.modelo.Prestador;

/**
 * Servlet implementation class ServletListaPrestador
 */
@WebServlet({ "/ServletListaPrestador", "/lista-prestador" })
public class ServletListaPrestador extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		try {
			PrestadorDAO dao = new PrestadorDAO();
		    List<Prestador> prestadores = dao.getLista();
		
		PrintWriter out = response.getWriter();
		out.println("<html>");
		out.println("<head>");
		out.println("<meta charset=\"iso-8859-1\">");
		out.println("<title>Rela�ao de Prestadores </title>");
		out.println("<link href='css/bootstrap.min.css' rel='stylesheet'>"
				+ " <script src='js/bootstrap.min.js'></script> ");
		out.println("</head>");
		out.println("<body>");
		out.println("<div class='container'> "
				+ "	<fieldset>"
				+ "<legend>Lista de Prestadores</legend>");
		out.println("<table border=\"1\" class = 'table table-condensed'>");
		out.println("<tr><th> C�digo </th>");
		out.println("<th> Nome </th>");
		out.println("<th> CNPJ </th>");
		out.println("<th> Endere�o </th>");
		out.println("<th> Telefone </th>");
		out.println("<th> A��es </th>");
		
		out.println("</tr>");
		for(Prestador prestador : prestadores){
			
			out.println("<tr>");

			out.println("<td>");
			out.println(prestador.getId());
			out.println("</td>");
			
			out.println("<td>");
			out.println(prestador.getNome());
			out.println("</td>");
			
			out.println("<td>");
			out.println(prestador.getCnpj());
			out.println("</td>");
			
			out.println("<td>");
			out.println(prestador.getEndereco());
			out.println("</td>");
			
			out.println("<td>");
			out.println(prestador.getTelefone());
			out.println("</td>");
			
			out.println("<td>");
			out.println("Excluir");
			out.println("</td>");
			
			out.println("</tr>");
		}
		out.println("<fildset> </div>");
		out.println("</table>");
		out.println("</body>");
		out.println("</html>");
		} catch (SQLException e) {
			
		}
	}

}
