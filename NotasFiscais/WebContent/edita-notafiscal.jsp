<%@page import="br.ueg.posse.p2.notasfiscais.modelo.NotaFiscal"%>
<%@page import="br.ueg.posse.p2.notasfiscais.dao.NotaFiscalDAO"%>
<%@page import="br.ueg.posse.p2.notasfiscais.*"%>
  <%@page import="java.util.List"%>
<%@page import="br.ueg.posse.p2.notasfiscais.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Editar Notas Fiscais</title>
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

<div class="centralizado">
		<h2 class="cabecalho"align="center">Edição de Notas Fiscais</h2>
		<table order="1" class="table table-condensed"">
			<tr>
				<td colspan="4" style="text-align: right;"><a
					
					href=listaNotas.jsp>voltar</a>
				</td>
			</tr>
			<tr>
				<td>
					<form action="ServletAlterarNotas"method="post">
						<%
							NotaFiscalDAO dao = new NotaFiscalDAO();
							int id = Integer.parseInt(request.getParameter("id"));
							List<NotaFiscal> notasfiscais = dao.buscaPorId(id);
							
							for (NotaFiscal notasfiscal: notasfiscais) {
								
							
							%>
							<table>
								<tr>
									<td>Prestador:</td>
										<td>
											<input type="hidden" name="id" value="<%= notasfiscal.getId() %>"/>
											<input type="text" name="idPrestador" id="idPrestador" size="40" maxlength="60"
											value="<%=notasfiscal.getIdPrestador() %>"/>
										</td>
								</tr>
								<tr>
									<td>Cliente:</td>
										<td>
									
											<input type="text" name="idCliente" id="idCliente" size="40" maxlength="60"
											value="<%=notasfiscal.getIdCliente() %>"/>
										</td>
								</tr>
							<tr>
									<td>Data:</td>
										<td>
											
											<input type="text" name="data" id="data" size="40" maxlength="60"
											value="<%=notasfiscal.getData() %>"/>
										</td>
								</tr>
								<tr>
									<td>Valor:</td>
										<td>
											<input  type="text" name="valor" id="valor" size="10" maxlength="10"
											value="<%= notasfiscal.getValor() %>"/>
											</td>
								</tr>
								
								<tr>
									<td>Aliquota:</td>
										<td>
											<input  type="text" name="aliquota" id="aliquota" size="10" maxlength="10"
											value="<%= notasfiscal.getAliquota() %>"/>
											</td>
								</tr>
								
								<tr>
									<td>Imposto:</td>
										<td>
											<input  type="text" name="imposto" id=""imposto"" size="10" maxlength="10"
											value="<%= notasfiscal.getImposto() %>"/>
											</td>
								</tr>
								
								<tr>
									<td>Serviço:</td>
										<td>
											<input  type="text" name="servico" id=""servico"" size="10" maxlength="10"
											value="<%= notasfiscal.getServico() %>"/>
											</td>
								</tr>
								<tr>
									<td>Usuario:</td>
										<td>
									
											<input type="text" name="idUsuario" id="idUsuario" size="40" maxlength="60"
											value="<%=notasfiscal.getIdUsuario() %>"/>
										</td>
								</tr>
								<tr>
									<td>
											<input type="submit" id="alterar" value="Alterar Prestador"/>
										</td>
								</tr>
							<%
								}
							%>
								</tr>
							</table>
					</form>
				</td>
			</tr>
		</table>
		
	</div>
			 <jsp:include page="include/rodape.jspf"></jsp:include>
		
	<%
	}
%>
</body>
</html>