package com.spring.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.model.TcsDevs;

@Repository
public class TcsDevsDAOImpl implements TcsDevsDAO {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	private Session getCurrentSession() {
		return sessionFactory.getCurrentSession();
	}

	public void addTcsDevs(TcsDevs dev) {
		getCurrentSession().save(dev);
	}

	public void updateTcsDevs(TcsDevs dev) {
		TcsDevs obj = getTcsDevs(dev.getId());
		obj.setName(dev.getName());
		getCurrentSession().update(obj);
		
	}

	public TcsDevs getTcsDevs(int id) {
		TcsDevs dev = (TcsDevs) getCurrentSession().get(TcsDevs.class, id);
		return dev;
	}

	public void deleteTcsDevs(int id) {
		TcsDevs dev = getTcsDevs(id);
		if (dev != null)
			getCurrentSession().delete(dev);
	}

	@SuppressWarnings("unchecked")
	public List<TcsDevs> getAllTcsDevs() {
		return getCurrentSession().createQuery("from TcsDevs").list();
	}

}
