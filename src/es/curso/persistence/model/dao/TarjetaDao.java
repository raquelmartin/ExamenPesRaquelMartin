package es.curso.persistence.model.dao;

import java.util.ArrayList;

import es.curso.controllers.Tarjeta;

public interface TarjetaDao {
	
	public void create(Tarjeta tarjeta);
	
	public ArrayList<Tarjeta> findAll();

	void create(es.curso.persistence.model.dao.jdbc.Tarjeta tarjeta);
	
	
	

}