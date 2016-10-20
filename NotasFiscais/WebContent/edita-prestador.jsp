<%@page import="br.ueg.posse.p2.notasfiscais.modelo.Prestador"%>
<%@page import="br.ueg.posse.p2.notasfiscais.dao.PrestadorDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@page import="java.util.List"%>
<%@page import="br.ueg.posse.p2.notasfiscais.*"%>

    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!-- Bootstrap core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<script src="js/bootstrap.min.js"></script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Editar Prestador</title>
</head>
<body>

<jsp:include page="include/cabecalho.jsp" flush="true"></jsp:include>
 <jsp:include page="logado.jsp"></jsp:include>
<div class="centralizado">
		<h2 class="cabecalho"align="center">Edição de Prestadores</h2>
		<table order="1" class="table table-condensed"">
			<tr>
				<td colspan="4" style="text-align: right;"><a
					
					href=lista-prestador2.jsp>voltar</a>
				</td>
			</tr>
			<tr>
				<td>
					<form action="alteraprestador"method="post">
						<%
							PrestadorDAO dao = new PrestadorDAO();
							int id = Integer.parseInt(request.getParameter("id"));
							List<Prestador> prestadores = dao.buscaPorId(id);
							
							for (Prestador prestador: prestadores) {
							%>
							<table>
								<tr>
									<td>Nome:</td>
										<td>
											<input type="hidden" name="id" value="<%= prestador.getId() %>"/>
											<input type="text" name="nome" id="nome" size="40" maxlength="60"
											value="<%=prestador.getNome() %>"/>
										</td>
								</tr>
								<tr>
									<td>CNPJ:</td>
										<td>
									
											<input type="text" name="cnpj" id="cnpj" size="40" maxlength="60"
											value="<%=prestador.getCnpj() %>"/>
										</td>
								</tr>
							<tr>
									<td>Endereço:</td>
										<td>
											
											<input type="text" name="endereco" id="endereco" size="40" maxlength="60"
											value="<%=prestador.getEndereco() %>"/>
										</td>
								</tr>
								<tr>
									<td>Telefone:</td>
										<td>
											<input  type="text" name="telefone" id="telefone" size="10" maxlength="10"
											value="<%= prestador.getTelefone() %>"/>
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
	
</body>
</html>