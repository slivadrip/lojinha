<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Logado</title>
</head>
<body>


<%
 if( session.getAttribute("login") != null){
		out.println("Você está logado com sucesso no sistema. Seu login é: " + 
       session.getAttribute("login") + " e seu nome...:: " + session.getAttribute("nome") +
			" Seu nivel e..: "+ session.getAttribute("tipo") +	". Clique <a href='logoff.jsp'>aqui</a> para sair do sistema");
		} else{ 
			
			out.println("Você não está logado no sistema. Clique <a href='login.jsp'>aqui</a> para logar-se");
      		
%> 
	<meta http-equiv="refresh" content="0;url=login.jsp">
<%
		}
%>
</body>
</html>