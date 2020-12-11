<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>T�tulo de la sesi�n01b</title>
</head>

<!-- CUERPO DE LA PAGINA -->
<body>
	<!-- En un jsp podemos incrustar c�digo java utilizando por ejemplo: scriplets y expressions -->
	<!-- A continuaci�n creamos un scriplet. Podemos tener todos los scriplets que deseemos dentro de un jsp -->
	<%
		// Este es un scriplet. Dentro de un scriplet podemos tener l�gica java
		// Utilizaremos el objeto predefinido "request", que representa el request que est� llegando al JSP
		// Entonces recuperamos los datos que lleg�n en el request
		String vnombre = request.getParameter("nombre");
		String vdireccion = request.getParameter("direccion");
		String vdeporte = request.getParameter("deporte");
	%>

	<!--  creamos una tabla html para mostrar las variables -->
	<table>
		<tr>
			<td colspan="2"><font color="blue" size="5">Bienvenido estimado cliente, sus datos son:</font></td>
		</tr>
		<tr>
			<td>Nombre:</td>
			<!-- usamos un expression para mostrar la variable nombre. Los expressions 
				 solo sirven para visualizar variables o expressiones -->
			<td><%= vnombre  %></td>
		</tr>
		<tr>
			<td>Direcci�n:</td>
			<td><%= vdireccion %>  </td>
		</tr>
		<tr>
			<td>Deporte favorito:</td>
			<td><%= vdeporte %>  </td>
		</tr>
	</table>
</body>
</html>