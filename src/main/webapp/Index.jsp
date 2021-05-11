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
	        				<a class="nav-link" href="./Temperatura.jsp">Temperatura</a>
	       				</li>
      				</ul>
    			</div>
  			</div>
 
		</nav>
<hr>

<div>
		<label class="form-label text-center col-12 text-primary h3">Bem-vindo ao Conversor</label>
		<p class="h6 text-dark text-center">Selecione uma opção no menu superior para iniciar</p>
</div>

</div>
</body>
</html>