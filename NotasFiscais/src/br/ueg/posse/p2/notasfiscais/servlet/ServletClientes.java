package br.ueg.posse.p2.notasfiscais.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.ueg.posse.p2.notasfiscais.dao.ClientesDAO;
import br.ueg.posse.p2.notasfiscais.modelo.Clientes;



@WebServlet({ "/ServletClientes", "/clientes" })
public class ServletClientes extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String nome = request.getParameter("nome");
		String cpf = request.getParameter("cpf");
		String endereco= request.getParameter("endereco");
		String telefone= request.getParameter("telefone");
		String email = request.getParameter("email");
		
				
		
		        Clientes clientes = new Clientes();
  
		        clientes.setNome(nome);
				clientes.setCpf(cpf);
				clientes.setEndereco(endereco);
				clientes.setTelefone(telefone);
				clientes.setEmail(email);
				
				
				
				try{
				
				ClientesDAO dao = new ClientesDAO();
				dao.gravar(clientes);
				}catch (SQLException e){
						System.out.println("Ocorreu um erro"+e.getMessage());		
				}
	}

}
