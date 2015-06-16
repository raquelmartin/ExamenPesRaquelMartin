<%@page import="es.curso.model.entity.Tarjeta"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.time.LocalDateTime"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Listado de Cliente</title>
<link rel="stylesheet" href="../css/estilos.css"/>
	
	<script type="text/javascript">
	  function enviar(boton){
		 
		   var formulario= document.getElementById("formulario" +boton.name.substring(3));
		   
		    if(boton.value=="Actualizar")
		    	formulario.action="${pageContext.request.contextPath}/Tienda/actualizar";
		    if(boton.value=="Eliminar")
		    		formulario.action=
		    			"${pageContext.request.contextPath}/Tienda/eliminarPorId";
		    formulario.submit();	
	  }
	
	
	</script>




</head>
<body>
      <h1><%= request.getAttribute("titulo") %>    </h1>
     <!--  tabla html   dinámicamente -->
         
     <span><%=LocalDateTime.now() %></span>
     <span> Valor enviado desde el servlet Banco:</span>
     <span> <%=request.getAttribute("iva") %>   </span>
     <%  ArrayList<Tarjeta> tarjetas= (ArrayList<Tarjeta>) request.getAttribute("tarjeta"); %>
     
     <table>
        <tr>
           <th>ID</th>
           <th>Número tarjeta</th>
           <th>Cupo Máximo</th>
           <th>Saldo disponible</th>
           <th>Tipo Tarjeta</th>
           <th>Número Comprobación</th>
           <th>Contraseña</th>
           <th>Estado Tarjeta</th>
           <th></th>
           
          </tr>
        <%for(Tarjeta t: tarjetas){ %>  
          <form id ="formulario<%= t.getId()%>" action="#"  method="post" onsubmit="return false;">
          <tr id="<%= t.getId()%>">
             <td><input type="text"  name="id" value ="<%= t.getId() %>" /></td>
             <td><input type="text" name="numero" value="<%= t.getNumero() %>"  /></td>
             <td><input type="text" name="CupoMaximo" value="<%= t.getCupoMaximo() %>" /></td>
             <td><input type="text" name="SaldoDisponible" value="<%= t.getSaldoDisponible() %>"/></td>
             <td><input type="text" name="TipoTarjeta" value="<%= t.getTipo() %>"/></td>
             <td><input type="text" name="NúmeroComprobación" value="<%= t.getNumComprobacion() %>"/></td>
             <td><input type="text" name="Contrasenha" value="<%= t.getContrasenha() %>"/></td>
             <td><input type="text" name="bloqueada" value="<%= t.isBloqueada()==true ?"SI":"NO"%>"/></td>
             <td><input 
	               type="submit" value="Eliminar"
	                 name="btn<%= t.getId()%>" onclick="enviar(this);"/> 
             </td>
             <td><input
                   type="submit" value="Actualizar"
                     name="btn<%= t.getId()%>" onclick="enviar(this);"/> 
             </td>
              
          </tr>
        </form>
       
        <% } %>
     </table>
 </body>
</html>


