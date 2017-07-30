package com.spring.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.model.Incident;

@Repository
public class IncidentDAOImpl implements IncidentDAO {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	private Session getCurrentSession() {
		return sessionFactory.getCurrentSession();
	}

	public void addIncident(Incident incident) {
		getCurrentSession().save(incident);
	}

	public void updateIncident(Incident incident) {
		getCurrentSession().update(incident);
		
	}

	public Incident getIncident(int id) {
		Incident inc = (Incident) getCurrentSession().get(Incident.class, id);
		return inc;
	}

	public void deleteIncident(int id) {
		Incident inc = getIncident(id);
		if (inc != null)
			getCurrentSession().delete(inc);
	}

	@SuppressWarnings("unchecked")
	public List<Incident> getAllIncident() {
		return getCurrentSession().createQuery("from Incident").list();
	}

	

}
