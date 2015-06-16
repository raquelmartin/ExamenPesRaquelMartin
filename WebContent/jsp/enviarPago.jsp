<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>




    <form action="/ExamenPESRaquelMartin/Banco/enviarPago" method="post" enctype="text/html"> 
  <fieldset>
  <legend style="font-size: 1.3em">ENVIAR PAGO ONLINE</legend>
  
    <div class="cuadro">
      <input type="hidden"  id="id" name="id" />
    </div>
    
    <div class="texto">
      <label for="nombre">NUMERO TARJETA</label>
    </div>
    <div class="cuadro">
      <input type="text" name="numero" id="numero"  />
    </div>
    
    <div class="texto">
      <label for="contrasenha">CONTRASEÑA</label>
    </div>
    <div class="cuadro">
      <input type="password" name="contrasehna" id="contrasenha" />
    </div>
    
    <div class="texto">
      <label>NUMERO COMPROBACION</label>
    </div>
    <div class="cuadro">
      <input type="password"  id="numComprobacion" name="numComprobacion" />
    </div>
    
    <div class="texto">
      <label>CANTIDAD A PAGAR</label>
    </div>
    <div class="cuadro">
      <input type="text"  id="cantidad" name="cantidad" />
    </div>
    
       
    </fieldset>
    
    <div class="texto">
     <input type="submit" name="enviar" id="enviar" value="Enviar" /> 
     <input type="reset" name="reiniciar" id="reiniciar" value="Reiniciar" />
    </div>
    
  </form>
  
