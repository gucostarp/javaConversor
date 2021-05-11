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

<% 	String options1, options2;
	Double valor1, result;
	result = 0.0;
	
	options1 = request.getParameter("options1") == null ? "" : request.getParameter("options1");
	options2 = request.getParameter("options2") == null ? "" : request.getParameter("options2");
	valor1 = request.getParameter("valor") == null ? 0.0 : Double.parseDouble(request.getParameter("valor"));
	System.out.println(valor1);	


		 	if (options1.equals("quilometro") && options2.equals("quilometro")){
				result = valor1 * 1;
			} else if ( options1.equals("quilometro") && options2.equals("metro")){
				result = valor1 * 1000;
			} else if (options1 == "quilometro" && options2 == "centimetro"){
				result = valor1 * 100;		
			} else if (options1 == "quilometro" && options2 == "milimetro"){
				result = valor1 * 1000000;
			} else if (options1 == "metro" && options2 == "quilometro"){
				result = valor1 / 1000;
			} else if (options1 == "metro" && options2 =="metro"){
				result = valor1 * 1;
			} else if (options1 == "metro" && options2 == "centimetro"){
				result = valor1 / 100;
			} else if (options1 == "metro" && options2 == "milimetro"){
				result = valor1 / 1000;
			} else if (options1 == "centimetro" && options2 == "quilometro"){
				result = valor1 * 100000; 
			} else if (options1 == "centimetro" && options2 == "metro"){
				result = valor1 * 100;
			} else if (options1 == "centimetro" && options2 == "centimetro"){
				result = valor1 * 1;
			} else if (options1 == "centimetro" && options2 == "milimetro"){
				result = valor1 * 10;
	};
		
%>


	<style>
		body{
		background: rgb(13,110,253);
		background: linear-gradient(90deg, rgba(13,110,253,0.7) 0%, rgba(13,202,240,0.7) 100%);
		}
		
		.bg{
		background: rgb(255,255,255);
		}
	</style>
	<div class="container card bg-light mt-5 mb-2 col-5 text-primary py-4 shadow-lg" style="border-radius: 18px;">
 		<nav class="navbar navbar-expand-lg navbar-light bg-light">
	  		<div class="container-fluid">
	    		<a class="navbar-brand" href="#">Conversor</a>
	    		<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
	     		<span class="navbar-toggler-icon"></span>
	    		</button>
	        	<div class="collapse navbar-collapse" id="navbarNavDropdown">
	        		<ul class="navbar-nav">
	        			<li class="nav-item">
	       					<a class="nav-link active" aria-current="page" href="#">Comprimento</a>
        				</li>
	        			<li class="nav-item">
        					<a class="nav-link" href="#">Massa</a>
	        			</li>
	        			<li class="nav-item">
	        				<a class="nav-link" href="#">Temperatura</a>
	       				</li>
      				</ul>
    			</div>
  			</div>
 
		</nav>
<hr>
<div>
		<label class="form-label text-end col-12 text-dark">Conversor de Comprimento</label>
</div>
<form action="Comprimento.jsp" method="get">
	<div>
		<div>
		<label class="form-label">De:</label>
	</div>
	<div class="btn-group mt-2 mb-2 col-12 text-primary">
	  <input type="radio" class="btn-check" name="options1" value="quilometro" id="option1" autocomplete="off" <%= options1.equals("quilometro") ? "checked" : "" %>/>
	  <label class="btn btn-primary" for="option1">Quilômetro</label>
	
	  <input type="radio" class="btn-check" name="options1" value="metro"id="option2" autocomplete="off" <%= options1.equals("metro") ? "checked" : "" %>/>
	  <label class="btn btn-primary" for="option2">Metro</label>
	
	  <input type="radio" class="btn-check" name="options1" value="centimetro" id="option3" autocomplete="off" <%= options1.equals("centimetro") ? "checked" : "" %>/>
	  <label class="btn btn-primary" for="option3">Centímetro</label>
	  
	  <input type="radio" class="btn-check" name="options1" value="milimetro" id="option4" autocomplete="off" <%= options1.equals("milimetro") ? "checked" : "" %>/>
	  <label class="btn btn-primary" for="option4">Milímetro</label>
	
	</div>
	
	<div>
		<label class="form-label">Para:</label>
	</div>
	<div class="btn-group mt-2 mb-2 col-12 text-primary">
	  <input type="radio" class="btn-check" name="options2" value="quilometro" id="option5" autocomplete="off" <%= options2.equals("quilometro") ? "checked" : "" %>/>
	  <label class="btn btn-primary" for="option5">Quilômetro</label>
	
	  <input type="radio" class="btn-check" name="options2" value="metro" id="option6" autocomplete="off" <%= options2.equals("metro") ? "checked" : "" %>/>
	  <label class="btn btn-primary" for="option6">Metro</label>
	
	  <input type="radio" class="btn-check" name="options2" value="centimetro" id="option7" autocomplete="off" <%= options2.equals("centimetro") ? "checked" : "" %>/>
	  <label class="btn btn-primary" for="option7">Centímetro</label>
	  
	  <input type="radio" class="btn-check" name="options2" value="milimetro" id="option8" autocomplete="off" <%= options2.equals("milimetro") ? "checked" : "" %>/>
	  <label class="btn btn-primary" for="option8">Milímetro</label>
	
	</div>
	
	    <div class="mb-5 col-12">
	    <label for="valor" class="form-label">Digite o valor a ser convertido</label>
	    <input type="number" step=".01" class="form-control col-5" id="valor" name="valor" value="<%= valor1.toString() %>">
	  </div>
	  <div class="text-end col-12 mx-auto">
				<button type="submit" class="btn btn-primary">Enviar</button>
	  </div>
</form>

<p> <%= result.toString() %> </p>

	

	</div>

</body>
</html>