<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">


<title>Cadastro para Prestadors</title>

<!-- Bootstrap core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<script src="js/bootstrap.min.js"></script>



</head>
<body>

<%@include file="include/cabecalho.jsp" %>
 <jsp:include page="logado.jsp"></jsp:include>
 

 
	<div class="container">
		<fieldset>
			<legend>Cadastro de Prestadores</legend>
			<form action="ServletPrestador" method="post" class="form-horinzontal">
				<div class="col-xs-12">
				<label for = "nome">Nome:</label> <input type="text" name="nome" id="nome"
					maxlength="70" size="60" class="form-control"
					placeholder="Informe o nome do prestador" required="required"/>
				</div>	
					
					 <br />
				<div class="col-xs-4">
			    <label for ="cnpj">CNPJ/CPF</label>
				<input type="text" name="cnpj" id="" maxlength="16" size="20"
					class="form-control" placeholder="Informe o CNPJ/CPF" required="required"/>
				</div>
					<br />
					
						<div class="col-xs-8">
					<label for="endereco">Endereço</label>
					<input type="text" name="endereco" id="endereco" maxlength="100" size="80"
					class="form-control" placeholder="Informe o endereco" required="required"/>
					</div>
					<br />
					
						<div class="col-xs-4">
					<label for="telefone">Telefone</label>
					<input type="text" name="telefone" id="telefone" maxlength="13" size="13"
					class="form-control" placeholder="Informe o Telefone" required="required"/>
					</div>
			
						<div class="col-xs-12">
								
			
					<br>
					
					<input type="submit" id="gravar" value="gravar"
					class="btn btn-primary btn-Lg"/>
					<a class="btn-primary btn-lg" href="lista-prestador2.jsp" role="button">Listar</a>
					</div>
					 


			</form>
		</fieldset>
		 <jsp:include page="include/rodape.jspf"></jsp:include>
	</div>


</body>
</html>
