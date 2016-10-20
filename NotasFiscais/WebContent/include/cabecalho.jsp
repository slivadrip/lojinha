<nav class="navbar navbar-inverse navbar-fixed-top">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#navbar" aria-expanded="false"
				aria-controls="navbar">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="index.jsp"> ENF - Emissao de Notas Fiscais
			</a>
		</div>
		<div id="navbar" class="navbar-collapse collapse">
			<%
				if ((session.getAttribute("user") == null)
						&& (session.getId() == null)) {
			%>

									
			
			<%
				} else {
			%>
			
			
				
			<%
				}
			%>
			
			
		</div>
		<!--/.navbar-collapse -->
	</div>
</nav>
<br>
<br>
<br>