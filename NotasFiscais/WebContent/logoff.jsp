<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Logoff</title>
</head>
<body>


<%

session.invalidate();
out.println("Você saiu com sucesso do sistema. Para efetuar o login  novamente clique  <a href='login.jsp'>aqui</a>");
%>
</body>
</html>