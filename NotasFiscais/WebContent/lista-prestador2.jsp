<%@page import="java.util.List"%>
<%@page import="br.ueg.posse.p2.notasfiscais.modelo.Prestador"%>
<%@page import="br.ueg.posse.p2.notasfiscais.dao.PrestadorDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Lista Prestadores</title>
<!-- Bootstrap core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<script src="js/bootstrap.min.js"></script>
</head>
<body>

<jsp:include page="include/cabecalho.jsp" flush="true"></jsp:include>
 <jsp:include page="logado.jsp"></jsp:include>
 
<h3>Relaçao dos Prestadores de Serviço</h3>
         <table border="1" class="table table-condensed">
          <tr>
             <tr class="h_tabela">
			
			<td>ID</td>
			<td>Nome</td>
			<td>CNPJ</td>
			<td>Endereço</td>
			<td>Telefene</td>
			<td>Ações</td>
		</tr>	
	<%
		PrestadorDAO dao = new PrestadorDAO();
		List<Prestador> prestadores = dao.getLista();
		
		for (Prestador prestador : prestadores){
	%>
		<tr>
			<td><%= prestador.getId() %></td>
			<td><%= prestador.getNome()%></td>
			<td><%= prestador.getCnpj()%></td>
			<td><%= prestador.getEndereco()%></td>
			<td><%= prestador.getTelefone()%></td>
			<td align="center"> 
				<a href="edita-prestador.jsp?id=<%=prestador.getId() %>">
					Editar			</a>
				<a href="excluirPrestador?id=<%=prestador.getId()%>" onclick="return confirm('Deseja excluir realmente?');">
					Excluir
				</a> 
			</td>
		</tr>
	<% 
		}
		
	%>
	</table>
	</div>

			

</table>
		 <jsp:include page="include/rodape.jspf"></jsp:include>

</div>
	

  	
</body>
</html>