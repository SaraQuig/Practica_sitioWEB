<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.productos.negocio.*" import=" com.productos.datos.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Editar producto</title>
</head>
<body>
	<%
		int cod = Integer.parseInt(request.getParameter("editarcod"));
		String des = request.getParameter("editardesc");
		float pre = Float.parseFloat(request.getParameter("editarprec"));
		int can = Integer.parseInt(request.getParameter("editarcant"));
		Producto mp = new Producto(cod,des,pre,can);
		if(mp.ModificarProducto(mp)){
			response.sendRedirect("categoria.jsp");
		}else{
			out.println("Algo salio mal");
		}
	%>
</body>
</html>