package com.spring.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.model.Priority;
import com.spring.model.TcsDevs;

@Repository
public class PriorityDAOImpl implements PriorityDAO {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	private Session getCurrentSession() {
		return sessionFactory.getCurrentSession();
	}

	public void addPriority(Priority obj) {
		getCurrentSession().save(obj);
	}

	public void updatePriority(Priority priority) {
		Priority obj = getPriority(priority.getId());
		obj.setName(priority.getName());
		getCurrentSession().update(obj);
		
	}

	public Priority getPriority(int id) {
		Priority priority = (Priority) getCurrentSession().get(Priority.class, id);
		return priority;
	}

	public void deletePriority(int id) {
		Priority priority = getPriority(id);
		if (priority != null)
			getCurrentSession().delete(priority);
	}

	@SuppressWarnings("unchecked")
	public List<Priority> getAllPriority() {
		return getCurrentSession().createQuery("from Priority").list();
	}

		

}
