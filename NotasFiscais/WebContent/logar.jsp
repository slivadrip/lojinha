<%@page import="br.ueg.posse.p2.notasfiscais.criptografia.Criptografia"%>
<%@page import="br.ueg.posse.p2.notasfiscais.modelo.Usuario"%>
<%@page import="br.ueg.posse.p2.notasfiscais.dao.UsuarioDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ page import="br.ueg.posse.p2.notasfiscais.*" %>
    <%@ page import="java.util.List" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Logar</title>
</head>
<body>


<%

boolean validacao = false;


HttpSession sessao = request.getSession();
sessao.setAttribute("idioma", "pt_BR");


try {
	UsuarioDAO dao = new UsuarioDAO();
    List<Usuario> usuariosCadastrados = dao.getlista();

	String loginS = request.getParameter("login");
	String senhaS = request.getParameter("senha");
	//String tipoS = request.getParameter("tipo");
	String nomeS = null;
	String tipoS = null;
	int id = 0;
	
	String cripto = Criptografia.criptografar(senhaS);

	System.out.println(senhaS);
	senhaS = cripto;


	for (Usuario usuario : usuariosCadastrados) {

		String loginC = usuario.getLogin();
		String senhaC = usuario.getSenha();
		
		System.out.println("Senha do banco........:" + senhaC);
		System.out.println("Senha do Formulario...:" + senhaS);
		//System.out.println("Tipo                ..:" + tipoC);
		

		if (loginS.equals(loginC) && senhaS.equals(senhaC)) {
			
			validacao = true;
			loginS = usuario.getLogin();
			tipoS = usuario.getTipo();
			nomeS = usuario.getNome();
			id = usuario.getId();
			break;

		}
	}
						if (validacao == true) {
							       sessao = request.getSession(true);
					
										//session.putValue("loginUsuario", loginC); //Grava a session com o Login
											//session.putValue("senhaUsuario", senhaC); //Grava a session com a Senha
											//session.putValue("tipoUsuario", tipoC);
				
								sessao.setAttribute("login", loginS);
								sessao.setAttribute("tipo", tipoS);
								sessao.setAttribute("nome", nomeS);
								sessao.setAttribute("id_user", id);
		

								sessao.setMaxInactiveInterval(60 * 10);
								response.sendRedirect("index.jsp");

								
				}else{%>
		
		   <img src="pict/Acceso-Denegado-800x500.jpg" />
			<a href='login.jsp'>  Voltar para o  Login</a>
	
		<%}
}catch (Exception e) {
 // TODO: handle exception
}
%>

</body>
</html>