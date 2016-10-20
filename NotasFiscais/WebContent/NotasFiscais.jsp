<%@page import="br.ueg.posse.p2.notasfiscais.dao.ClientesDAO"%>
<%@page import="br.ueg.posse.p2.notasfiscais.dao.PrestadorDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Notas Fiscais</title>
<link href="css/bootstrap.min.css" rel="stylesheet">



</head>

<%@include file="include/cabecalho.jsp" %>
 <jsp:include page="logado.jsp"></jsp:include>

<body class="corpo">
	<jsp:include page="include/cabecalho.jsp" />
	<br><h2 align="center">NOTAS FISCAIS</h2><br>
	<div class="container alert-info">
	<br>
	<div>
	<form action="ServletNotaFiscal" method="post">
	<div class="row">
	<div class="col-md-5">
	
	&nbsp;&nbsp;<label for="comboprest">Prestador:</label>&nbsp;
	<jsp:useBean id="dao" class="br.ueg.posse.p2.notasfiscais.dao.PrestadorDAO"/>
	<select name="idPrestador" class="btn-sm btn-default" id="comboprest">
                      <optgroup label="Selecione o Prestador">
    <c:forEach var="pres" items="${dao.lista }">
                      <option value="${pres.id }">${pres.nome}
                      </option>
    </c:forEach>
                      </optgroup>
                    </select>
                    
	<br><br>
	&nbsp;&nbsp;<label for="combocomp">Cliente:</label>&nbsp;&nbsp;&nbsp;
	
	<jsp:useBean id="da" class="br.ueg.posse.p2.notasfiscais.dao.ClientesDAO"/>
	  <select name="idCliente" class="btn-sm btn-default" id="combocomp">
	   <optgroup label="Selecione o Comprador">
	     <c:forEach items="${da.lista}" var="cli">
	      <option  value="${cli.id}">${cli.nome}</option>
	     </c:forEach>
	   </optgroup>
      </select>
      
      <br><br>
	&nbsp;&nbsp;<label for="combocomp">Usuario:</label>&nbsp;&nbsp;&nbsp;
      <jsp:useBean id="dau" class="br.ueg.posse.p2.notasfiscais.dao.UsuarioDAO"/>
	  <select name="idUsuario" class="btn-sm btn-default" id="combocomp">
	   <optgroup label="Selecione o Usuario">
	     <c:forEach items="${dau.lista}" var="user">
	      <option  value="${user.id}">${user.nome}</option>
	     </c:forEach>
	   </optgroup>
      </select>
      <br>
	</div>
</div>
					<div class="col-xs-4">
					<label for="telefone">Data</label>
					<input type="text" name="data" id="data" maxlength="13" size="13"
					class="form-control" placeholder="Informe a data" required="required"/>
					</div>
			
					
					<div class="col-xs-4">
					<label for="telefone">Valor</label>
					<input type="text" name="valor" id="valor" maxlength="10" size="10"
					class="form-control" placeholder="Informe o valor da nota" required="required"/>
					</div>
					<div class="col-xs-4">
					<label for="telefone">Aliquota</label>
					<input type="text" name="aliquota" id="Aliquota" maxlength="4" size="4"
					class="form-control" placeholder="Informe o valor da aliquota" required="required"/>
					</div>
					
					<div class="col-xs-4">
					<label for="telefone">Impostos</label>
					<input type="text" name="imposto" id="impostos" maxlength="4" size="4"
					class="form-control" placeholder="Informe o valor do impostos" required="required"/>
					</div>
					
					<div class="col-xs-12">
					<label for="telefone">Serviços</label>
					<input type="text" name="servico" id="servicos" maxlength="60" size="60"
					class="form-control" placeholder="Informe o valor do servico" required="required"/>
					<br>
	<br>
	<br>
					
					<input type="submit" value="Salvar" class="btn btn-lg btn-success">
	              <input type="reset" value="Limpar Campos" class="btn btn-lg btn-default">
	              <a class="btn-primary btn-lg" href="listaNotas.jsp" role="button">Listar</a>
	              
					</div>
					
	
					

	</div><br>
	
	
		
	</form>
	<br>

</div>	
	<jsp:include page="include/rodape.jspf" />

</body>

</html>