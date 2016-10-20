<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- Bootstrap core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<script src="js/bootstrap.min.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login</title>
</head>
<body>
<%@include file="include/cabecalho.jsp" %>
</br>
</br>
</br>

	<div class="container">
		<div class="panel panel-default">
			<div class="panel-heading">
				<h3 class="panel-title"> Login no Sistema</h3>
		
		</div>
		
			<form action="logar.jsp" method="post" class="form-horinzontal">
			
			
			 <label for="login">Login</label> 
			 <input type="text" name="login" id="login" class="form-control" required="required" /> 
					
			<label for="senha">Senha</label>
			 <input type="password" name="senha" id="senha" class="form-control" required="required" /> 
			 <br/> 
			
			
			<input type="submit" id="btn" class="btn-primary btn-lg" value="Entrar"/>
			<input type="reset" id="btn-reset" class="btn-primary btn-lg" value="limpar"/>
			
			
			</form>
			</div>
			</div>
			

</font>
</body>
</html>