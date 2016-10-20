package br.ueg.posse.p2.notasfiscais.servlet;

import java.io.IOException;
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
 * Servlet implementation class ServletAlterarNotas
 */
@WebServlet("/ServletAlterarNotas")
public class ServletAlterarNotas extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

		
		 int idPrestador = Integer.parseInt(request.getParameter("idPrestador"));
		 int idCliente = Integer.parseInt(request.getParameter("idCliente"));
		 String data = request.getParameter("data");;
		 double valor = Double.parseDouble(request.getParameter("valor"));
		 double aliquota = Double.parseDouble(request.getParameter("aliquota"));
		 double imposto = Double.parseDouble(request.getParameter("imposto"));
		 String servico = request.getParameter("servico");;
		String id = request.getParameter("id");

		NotaFiscal notafiscal = new NotaFiscal();
		try{
			NotaFiscalDAO dao = new NotaFiscalDAO();
			
			 notafiscal.setIdPrestador(idPrestador);
			 notafiscal.setIdCliente(idCliente);
			 notafiscal.setData(data);
			 notafiscal.setValor(valor);
			 notafiscal.setAliquota(aliquota);
			 notafiscal.setImposto(imposto);
			 notafiscal.setServico(servico);
			 
			
			
			if (id.equals("")){
				dao.grava(notafiscal);
			}else{
				notafiscal.setId(Integer.parseInt(id));
				dao.altera(notafiscal);
			}
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("listaNotas.jsp");
			dispatcher.forward(request, response);
			
		}catch (SQLException ex){
			System.out.println("Erro:..."+ex.getMessage());
		}	
		}

}
