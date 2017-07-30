package com.spring.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.model.IncStatus;
import com.spring.model.Priority;

@Repository
public class IncStatusDAOImpl implements IncStatusDAO {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	private Session getCurrentSession() {
		return sessionFactory.getCurrentSession();
	}

	public void addIncStatus(IncStatus incStatus) {
		getCurrentSession().save(incStatus);
	}

	public void updateIncStatus(IncStatus incStatus) {
		getCurrentSession().update(incStatus);
		
	}

	public IncStatus getIncStatus(int id) {
		IncStatus incStatus = (IncStatus) getCurrentSession().get(IncStatus.class, id);
		return incStatus;
	}

	public void deleteIncStatus(int id) {
		IncStatus incStatus = getIncStatus(id);
		if (incStatus != null)
			getCurrentSession().delete(incStatus);
	}

	@SuppressWarnings("unchecked")
	public List<IncStatus> getAllIncStatus() {
		return getCurrentSession().createQuery("from IncStatus").list();
	}

	
	
	
}
