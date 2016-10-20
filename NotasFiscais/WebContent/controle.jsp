<%@page import="br.ueg.posse.p2.notasfiscais.modelo.Usuario"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>




<% if( (session.getAttribute("login") == null)|| ("PRESTADOR".equals(session.getAttribute("tipo"))) ){
	response.sendRedirect("error.jsp");

	}else{ %>
	
	
	<%
	}
%>
  		

	
</body>
</html>