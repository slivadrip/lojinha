package br.ueg.posse.p2.notasfiscais.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.ueg.posse.p2.notasfiscais.dao.ClientesDAO;
import br.ueg.posse.p2.notasfiscais.dao.NotaFiscalDAO;
import br.ueg.posse.p2.notasfiscais.modelo.Clientes;
import br.ueg.posse.p2.notasfiscais.modelo.NotaFiscal;

/**
 * Servlet implementation class ServletNotaFiscal
 */
@WebServlet({ "/ServletNotaFiscal", "/salvarNota" })
public class ServletNotaFiscal extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	

		 int idPrestador = Integer.parseInt(request.getParameter("idPrestador"));
		 int idCliente = Integer.parseInt(request.getParameter("idCliente"));
		 String data = request.getParameter("data");;
		 double valor = Double.parseDouble(request.getParameter("valor"));
		 double aliquota = Double.parseDouble(request.getParameter("aliquota"));
		 double imposto = Double.parseDouble(request.getParameter("imposto"));
		 String servico = request.getParameter("servico");;
		 int idUsuario = Integer.parseInt(request.getParameter("idUsuario"));


		 NotaFiscal notafiscal = new NotaFiscal();
		  
		 notafiscal.setIdPrestador(idPrestador);
		 notafiscal.setIdCliente(idCliente);
		 notafiscal.setData(data);
		 notafiscal.setValor(valor);
		 notafiscal.setAliquota(aliquota);
		 notafiscal.setImposto(imposto);
		 notafiscal.setServico(servico);
		 notafiscal.setIdUsuario(idUsuario);
	
					
			
			try{
			
			NotaFiscalDAO dao = new NotaFiscalDAO();
			dao.grava(notafiscal);
			}catch (SQLException e){
					System.out.println("Ocorreu um erro"+e.getMessage());		
			}
}
	}

	


