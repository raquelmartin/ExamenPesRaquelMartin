<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Dar Alta</title>
<link rel="stylesheet" href="../css/estilos.css"/>
</head>
<body>
   <form method="post"  action="${pageContext.request.contextPath}/darAltaTarjeta" name="darAltaTarjeta" >
    <fieldset>
     <label>Dar alta tarjeta</label>
     <input type="text" name="numero" id="numero"/>
     <input type="submit" name="enviar" value="Enviar"/> 
     <input type="reset" name="reiniciar" value="Reiniciar"/>
     </fieldset>
     </form>

</body>
</html>