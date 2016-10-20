<!DOCTYPE html>
<html lang="en">
</head>
<%@include file="include/head.jspf" %>
<body>
<%@include file="include/cabecalho.jsp" %>
 <jsp:include page="logado.jsp"></jsp:include>


    <div class="container">
      <!-- Example row of columns -->
      <div class="row">
        <div class="col-md-4">
          <h2>Prestadores </h2>
          <p>Cadastro de prestadores de serviços. </p>
          <p><a class="btn btn-default" href="prestador.jsp" role="button">Veja &raquo;</a></p>
        </div>
        <div class="col-md-4">
          <h2>Contribuintes</h2>
          <p>Cadastros de Clientes.</p>
          <p><a class="btn btn-default" href="clientes.jsp" role="button">Veja &raquo;</a></p>
       </div>
        <div class="col-md-4">
          <h2>Notas</h2>
          <p>Emissao de Notas Fiscais dos serviços.</p>
          <p><a class="btn btn-default" href="NotasFiscais.jsp" role="button">Veja &raquo;</a></p>
        </div>
        <div class="col-md-4">
          <h2>Usuarios</h2>
          <p>Cadastros de usuario do Sistema.</p>
          <p><a class="btn btn-default" href="usuario.jsp" role="button">Veja &raquo;</a></p>
        </div>
      </div>
		 <jsp:include page="include/rodape.jspf"></jsp:include>
    </div> <!-- /container -->
     
  </body>
</html>
