
package es.curso.controllers.ejb;

import es.curso.controllers.DarAltaTarjetaController;
import es.curso.model.entity.Tarjeta;
import es.curso.persistence.model.dao.TarjetaDao;
import es.curso.persistence.model.dao.jdbc.TarjetaDaoJdbc;

public class EnviarPagoTarjetaControllerEjb implements DarAltaTarjetaController {
	private TarjetaDao tarjetaDao;
	
	@Override
	public void agregar(Tarjeta tarjeta) {
		
	tarjetaDao= new TarjetaDaoJdbc();
	tarjetaDao.create(tarjeta);
	}

	

	


	
	

}