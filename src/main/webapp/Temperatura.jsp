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
	
	//Celsius
	if (options1.equals("celsius") && options2.equals("celsius")){
		result = valor1 * 1;
	} else if ( options1.equals("celsius") && options2.equals("fahrenheit")){
		result = (valor1 * 1.8)+32;
	} else if ( options1.equals("celsius") && options2.equals("kelvin")){
		result = valor1 + 273.15;		
	//Fahrenheit
	} else if ( options1.equals("fahrenheit") && options2.equals("celsius")){
		result = (valor1 -32) / 1.8;
	} else if ( options1.equals("fahrenheit") && options2.equals("fahrenheit")){
		result = valor1 * 1;		
	} else if ( options1.equals("fahrenheit") && options2.equals("kelvin")){
		result = ((valor1 - 32)/1.8000) + 273.15;
	//kelvin
	} else if ( options1.equals("kelvin") && options2.equals("celsius")){
		result = valor1 - 273.15;		
	} else if ( options1.equals("kelvin") && options2.equals("fahrenheit")){
		result = ((valor1 - 273.15)*1.8000) + 32;
	} else if ( options1.equals("kelvin") && options2.equals("kelvin")){
		result = valor1 * 100;		
	}					
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
        					<a class="nav-link" href="./Massa.jsp">Massa</a>
	        			</li>
	        			<li class="nav-item">
	        				<a class="nav-link active" aria-current="pags" href="./Temperatura.jsp">Temperatura</a>
	       				</li>
      				</ul>
    			</div>
  			</div>
 
		</nav>
<hr>
<div>
		<label class="form-label text-center col-12 text-primary h5">Conversor de Temperatura</label>
</div>
<form action="Temperatura.jsp" method="get">
	<div>
		<div>
		<label class="form-label">De:</label>
	</div>
	<div class="btn-group mt-2 mb-2 col-12 text-primary">
	  <input type="radio" class="btn-check" name="options1" value="celsius" id="option1" autocomplete="off" <%= options1.equals("celsius") ? "checked" : "" %>/>
	  <label class="btn btn-primary" for="option1">Celsius</label>
	
	  <input type="radio" class="btn-check" name="options1" value="fahrenheit"id="option2" autocomplete="off" <%= options1.equals("fahrenheit") ? "checked" : "" %>/>
	  <label class="btn btn-primary" for="option2">Fahrenheit</label>
	
	  <input type="radio" class="btn-check" name="options1" value="kelvin" id="option3" autocomplete="off" <%= options1.equals("kelvin") ? "checked" : "" %>/>
	  <label class="btn btn-primary" for="option3">Kelvin</label>
	
	</div>
	
	<div>
		<label class="form-label">Para:</label>
	</div>
	<div class="btn-group mt-2 mb-2 col-12 text-primary">
	  <input type="radio" class="btn-check" name="options2" value="celsius" id="option5" autocomplete="off" <%= options2.equals("celsius") ? "checked" : "" %>/>
	  <label class="btn btn-primary" for="option5">Celsius</label>
	
	  <input type="radio" class="btn-check" name="options2" value="fahrenheit" id="option6" autocomplete="off" <%= options2.equals("fahrenheit") ? "checked" : "" %>/>
	  <label class="btn btn-primary" for="option6">Fahrenheit</label>
	
	  <input type="radio" class="btn-check" name="options2" value="kelvin" id="option7" autocomplete="off" <%= options2.equals("kelvin") ? "checked" : "" %>/>
	  <label class="btn btn-primary" for="option7">Kelvin</label>	
	  
	</div>
	
	    <div class="mb-5 col-12">
	    <label for="valor" class="form-label">Digite o valor a ser convertido</label>
	    <input type="number" step=".01" class="form-control col-5" id="valor" name="valor" value="<%= valor1.toString() %>">
	  </div>
	  <div class="text-end col-12 mx-auto py-1">
			<button type="submit" class="btn btn-primary">Enviar</button>
	  </div>	
	  <div class="container card bg-light mt-3 mb-2 col-12 text-primary py-2 shadow-sm">
	  <p class="h5 text-center text-dark"> Resultado: <%= result.toString() %> </p>
      </div>
	   
</form>


	</div>

</body>
</html>