<%@page import="br.ueg.posse.p2.notasfiscais.modelo.NotaFiscal"%>
<%@page import="br.ueg.posse.p2.notasfiscais.dao.NotaFiscalDAO"%>
<%@page import="java.util.List"%>
<%@page import="br.ueg.posse.p2.notasfiscais.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!-- Bootstrap core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<script src="js/bootstrap.min.js"></script>
</head>
<body>
<% if( (session.getAttribute("login") == null)|| ("PRESTADOR".equals(session.getAttribute("tipo"))) ){
	response.sendRedirect("error.jsp");

	}else{ %>
<jsp:include page="include/cabecalho.jsp" flush="true"></jsp:include>
 <jsp:include page="logado.jsp"></jsp:include>
 
<h3>Relaçao das Notas</h3>
         <table border="1" class="table table-condensed">
          <tr>
             <tr class="h_tabela">
             
			<td>ID</td>
			<td>idPrestador</td>
			<td>idCliente</td>
			<td>data</td>
			<td>valor</td>
			<td>aliquota</td>
			<td>imposto</td>
			<td>servico</td>
			<td>Usuario</td>
			<td> Açoes </td>
		</tr>	
	<%
		NotaFiscalDAO dao = new NotaFiscalDAO();
		List<NotaFiscal> notafiscais = dao.getLista();
		
		for (NotaFiscal notafiscal : notafiscais){
	%>
		<tr>
			<td><%= notafiscal.getId() %></td>
			<td><%= notafiscal.getIdPrestador()%></td>
			<td><%= notafiscal.getIdCliente()%></td>
			<td><%= notafiscal.getData()%></td>
			<td><%= notafiscal.getValor()%></td>
			<td><%= notafiscal.getAliquota() %></td>
			<td><%= notafiscal.getImposto() %></td>
			<td><%= notafiscal.getServico() %></td>
		    <td><%= notafiscal.getIdUsuario() %></td>
				
			<td align="center"> 
				<a href="edita-notafiscal.jsp?id=<%=notafiscal.getId() %>">
					Editar			</a>
				<a href="ServletExcluirNotas?id=<%=notafiscal.getId()%>" onclick="return confirm('Deseja excluir realmente?');">
					Excluir
				</a> 
			</td>
		</tr>
	<% 
		}
		
	%>
	</table>
			 <jsp:include page="include/rodape.jspf"></jsp:include>
	
	</div>

			<%
	}
%>	

</body>
</html>