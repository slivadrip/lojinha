<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">


<title>Cadastro de Usuario</title>

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
 

	<div class="container">
		<fieldset>
			<legend>Cadastro de Usuario</legend>
			<form action="ServletUsuario" method="post" class="form-horinzontal">


	 				<label for="nome">Nome:</label> <input
					type="text" name="nome" id="nome" maxlength="60" size="60"
					class="form-control" placeholder="Informe o nome"
					required="required" /> 
					
					<br /> 

					 <label for="login">Login</label> <input type="text"
					name="login" id="login" maxlength="100" size="30"
					class="form-control" placeholder="Informe seu login"
					required="required" /> 
					
					<br />
					
						
					<label for="senha">Senha</label> <input
					type="password" name="senha" id="senha" maxlength="30" size="20"
					class="form-control" placeholder="Informe sua senha"
					required="required" /> <br /> 
				
				  
			   
			 	  <input type="radio" name="tipo" value="ADMINISTRADOR"> Administrador</input> </br>
			 	  <input type="radio" name="tipo" value="PRESTADOR"> Prestador</input></br>

					<input type="submit" id="gravar" value="gravar" class="btn btn-primary btn-Lg" />




			</form>
		</fieldset>
				 <jsp:include page="include/rodape.jspf"></jsp:include>
		
	</div>
	
	
	<%
	}
%>
  	
</body>
</html>
