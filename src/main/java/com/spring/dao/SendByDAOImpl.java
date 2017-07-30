package com.spring.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.model.SendBy;

@Repository
public class SendByDAOImpl implements SendByDAO {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	private Session getCurrentSession() {
		return sessionFactory.getCurrentSession();
	}

	public void addSendBy(SendBy sendBy) {
		getCurrentSession().save(sendBy);
	}

	public void updateSendBy(SendBy sendBy) {
		SendBy obj = getSendBy(sendBy.getId());
		obj.setName(sendBy.getName());
		getCurrentSession().update(obj);
		
	}

	public SendBy getSendBy(int id) {
		SendBy sendBy = (SendBy) getCurrentSession().get(SendBy.class, id);
		return sendBy;
	}

	public void deleteSendBy(int id) {
		SendBy sendBy = getSendBy(id);
		if (sendBy != null)
			getCurrentSession().delete(sendBy);
	}

	@SuppressWarnings("unchecked")
	public List<SendBy> getAllSendBy() {
		return getCurrentSession().createQuery("from SendBy").list();
	}

}
