package br.ueg.posse.p2.notasfiscais.auth;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import br.ueg.posse.p2.notasfiscais.criptografia.Criptografia;
import br.ueg.posse.p2.notasfiscais.dao.PrestadorDAO;
import br.ueg.posse.p2.notasfiscais.dao.UsuarioDAO;
import br.ueg.posse.p2.notasfiscais.modelo.Prestador;
import br.ueg.posse.p2.notasfiscais.modelo.Usuario;

@WebServlet("/Auth")
public class Auth extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		 boolean validacao = false;

		PrintWriter out = response.getWriter();

		HttpSession sessao = request.getSession();
		sessao.setAttribute("idioma", "pt_BR");

		
		try {
			UsuarioDAO dao = new UsuarioDAO();
		    List<Usuario> usuariosCadastrados = dao.getlista();

			String loginS = request.getParameter("login");
			String senhaS = request.getParameter("senha");

			String cripto = Criptografia.criptografar(senhaS);

			System.out.println(senhaS);
			senhaS = cripto;


			for (Usuario usuario : usuariosCadastrados) {

				String loginC = usuario.getLogin();
				String senhaC = usuario.getSenha();

				System.out.println("Senha do banco........:" + senhaC);
				System.out.println("Senha do Formulario...:" + senhaS);
				if (loginS.equals(loginC) && senhaS.equals(senhaC)) {
					validacao = true;

				}
				if (validacao == true) {
					sessao = request.getSession(true);
					sessao.setAttribute("login", loginS);
					sessao.setAttribute("nome", "Administrador do Sistema");
					sessao.setMaxInactiveInterval(60 * 10);
					response.sendRedirect("index.html");

				}
				else {
					out.println("<!DOCTYPE html>");
					out.println("<html>");
					out.println("<head>");
					out.println("<style>");
					out.println("body{font-family: comic sans ms;color:blue;class ='navbar-brand'}");
					out.println("</style>");
					out.println("</head>");
					out.println("<body>");
					out.println("<h2>Acesso negado<br></h2>");
					out.println("<a href='login.html'><input type='button' value='Va para o Inicio' ></a>");
					out.println("</body>");
					out.println("</html>");
				}
			}


	}catch (Exception e) {
		// TODO: handle exception
	}
	}

}
