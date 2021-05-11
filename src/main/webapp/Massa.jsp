<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
	<title>Comprimento</title>
	
</head>
<body>

<% 	  
	Double valor1, result, options1, options2;
	result = 0.0;
		
	valor1 = request.getParameter("valor") == null ? 0.0 : Double.parseDouble(request.getParameter("valor"));
	options1 = request.getParameter("options1") == null ? 1.1 : Double.parseDouble(request.getParameter("options1"));
	options2 = request.getParameter("options2") == null ? 1.1 : Double.parseDouble(request.getParameter("options2"));
	
	result = valor1 * options1 / options2; 		
%>


	<style>
		body{
		background: rgb(13,110,253);
		background: linear-gradient(90deg, rgba(13,110,253,0.7) 0%, rgba(13,202,240,0.7) 100%);
		}
		
		.bg{
		background: rgb(242,242,242);
		}
	</style>
	<div class="container card bg-light mt-5 mb-2 col-5 text-primary py-4 shadow-lg" style="border-radius: 18px;">
 		<nav class="navbar navbar-expand-lg navbar-light bg-light">
	  		<div class="container-fluid">
	    		<a class="navbar-brand" href="./Index.jsp">Conversor</a>
	    		<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
	     		<span class="navbar-toggler-icon"></span>
	    		</button>
	        	<div class="collapse navbar-collapse" id="navbarNavDropdown">
	        		<ul class="navbar-nav">
	        			<li class="nav-item">
	       					<a class="nav-link" href="./Comprimento.jsp">Comprimento</a>
        				</li>
	        			<li class="nav-item">
        					<a class="nav-link active" aria-current="page" href="./Massa.jsp">Massa</a>
	        			</li>
	        			<li class="nav-item">
	        				<a class="nav-link" href="./Temperatura.jsp">Temperatura</a>
	       				</li>
      				</ul>
    			</div>
  			</div>
 
		</nav>
<hr>
<div>
		<label class="form-label text-center col-12 text-primary h5">Conversor de Massa</label>
</div>
<form action="Massa.jsp" method="get">
	<div>
		<div>
		<label class="form-label">De:</label>
	</div>
	<div class="btn-group mt-2 mb-2 col-12 text-primary">
	  <input type="radio" class="btn-check" name="options1" value="1000" id="option1" autocomplete="off" <%= options1 == 1000 ? "checked" : "" %>/>
	  <label class="btn btn-primary" for="option1">Tonelada</label>
	
	  <input type="radio" class="btn-check" name="options1" value="1"id="option2" autocomplete="off" <%= options1 == 1 ? "checked" : "" %>/>
	  <label class="btn btn-primary" for="option2">Quilograma</label>
	
	  <input type="radio" class="btn-check" name="options1" value="0.001" id="option3" autocomplete="off" <%= options1 == 0.001 ? "checked" : "" %>/>
	  <label class="btn btn-primary" for="option3">Grama</label>
	  
	  <input type="radio" class="btn-check" name="options1" value="0.000001" id="option4" autocomplete="off" <%= options1 == 0.000001 ? "checked" : "" %>/>
	  <label class="btn btn-primary" for="option4">Miligrama</label>
	
	</div>
	
	<div>
		<label class="form-label">Para:</label>
	</div>
	<div class="btn-group mt-2 mb-2 col-12 text-primary">
	  <input type="radio" class="btn-check" name="options2" value="1000" id="option5" autocomplete="off" <%= options2 == 1000 ? "checked" : "" %>/>
	  <label class="btn btn-primary" for="option5">Tonelada</label>
	
	  <input type="radio" class="btn-check" name="options2" value="1" id="option6" autocomplete="off" <%= options2 == 1 ? "checked" : "" %>/>
	  <label class="btn btn-primary" for="option6">Quilograma</label>
	
	  <input type="radio" class="btn-check" name="options2" value="0.001" id="option7" autocomplete="off" <%= options2 == 0.001 ? "checked" : "" %>/>
	  <label class="btn btn-primary" for="option7">Grama</label>
	  
	  <input type="radio" class="btn-check" name="options2" value="0.000001" id="option8" autocomplete="off" <%= options2 == 0.000001 ? "checked" : "" %>/>
	  <label class="btn btn-primary" for="option8">Miligrama</label>
	
	</div>
	
	    <div class="mb-5 col-12">
	    <label for="valor" class="form-label">Digite o valor a ser convertido</label>
	    <input type="number" step=".01" class="form-control col-5" id="valor" name="valor" value="<%= valor1.toString() %>">
	  </div>
	  <div class="text-end col-12 mx-auto py-1">
			<button type="submit" class="btn btn-primary">Enviar</button>
	  </div>	
	  <div class="container card bg-light mt-3 mb-2 col-12 text-primary py-2 shadow-sm">
	  <p class="h5 text-center text-dark"> Resultado: <%= String.format("%.8f", result) %> </p>
      </div>
	   
</form>



	

	</div>

</body>
</html>