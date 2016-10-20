<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Cadastro de Clientes</title>
</head>
<body>

<title>Cadastro de Clientes</title>

<!-- Bootstrap core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<script src="js/bootstrap.min.js"></script>
</head>
<body>
 
 

<jsp:include page="include/cabecalho.jsp" flush="true"></jsp:include>
  <jsp:include page="logado.jsp"></jsp:include>

	<div class="container">
		<fieldset>
			<legend>Cadastro de Clientes</legend>
			<form action="ServletClientes" method="post" class="form-horinzontal">
				<label for = "nome">Nome:</label>
				 <input type="text" name="nome" id="nome"
					maxlength="60" size="60" class="form-control"
					placeholder="Informe o nome do cliente" required="required"/>
					
					
					 <br />
					 
			    <label for ="cpf">Cpf</label>
				<input type="text" name="cpf" id="cpf" maxlength="20" size="20"
					class="form-control" placeholder="Informe o seu CPF" required="required"/>
					
					<br />
					
					
					<label for="endereco">Endereço</label>
					<input type="text" name="endereco" id="endereco" maxlength="100" size="80"
					class="form-control" placeholder="Informe o endereco" required="required"/>
					
					<br />
					
					
					<label for="telefone">Telefone</label>
					<input type="text" name="telefone" id="telefone" maxlength="13" size="13"
					class="form-control" placeholder="Informe o Telefone" required="required"/>
					
					<br />
					<label for="email">E-mail</label>
					<input type="text" name="email" id="email" maxlength="50" size="50"
					class="form-control" placeholder="Informe o seu email" required="required"/>
					
					
				
					
					
					<br />
					
					<input type="submit" id="gravar" value="gravar"
					class="btn btn-primary btn-Lg"/>
					
					 


			</form>
		</fieldset>
	</div>
		 <jsp:include page="include/rodape.jspf"></jsp:include>

</body>
</html>