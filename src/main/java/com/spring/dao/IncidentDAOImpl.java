package com.spring.dao;

import java.util.List;

import org.hibernate.SQLQuery;
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

	public Incident addIncident(Incident incident) {
		getCurrentSession().save(incident);
		return incident;
	}

	public void updateIncident(Incident incident) {
		getCurrentSession().update(incident);
		
	}

	public Incident getIncident(int id) {
		String hql = "FROM Incident where id="+id;
		/*Incident inc = (Incident)getCurrentSession().createQuery(hql).list().get(0);
		return inc;*/
		
		List list = getCurrentSession().createQuery(hql).list();
		if(list.isEmpty()){
			return null;
		}
		Incident inc = (Incident)getCurrentSession().createQuery(hql).list().get(0);
		return inc;
		
	}
	public Incident getIncByIncNumber(String num){
		String incNum = num.trim();
		String hql = "FROM Incident where upper(incNumber)=upper('"+ incNum+"')";
		System.out.println("select * "+hql);
		List list = getCurrentSession().createQuery(hql).list();
		if(list.isEmpty()){
			return null;
		}
		Incident inc = (Incident)getCurrentSession().createQuery(hql).list().get(0);
		return inc;
	}
	public void deleteIncident(int id) {
		Incident inc = getIncident(id);
		if (inc != null)
			getCurrentSession().delete(inc);
	}

	@SuppressWarnings("unchecked")
	public List<Incident> getAllIncident(String month,String year) {
		//String hql = "from Incident inc WHERE to_char(issue_raised,'YYYY') = '"+year+"'";
		String hql="select * from incidents where month(issue_raised)='"+month+"' and year(issue_raised)='"+year+"'";
		System.out.println(hql);
		SQLQuery query = getCurrentSession().createSQLQuery(hql);
		query.addEntity(Incident.class);
		List<Incident> result = query.list();
		return result;
		//return getCurrentSession().createQuery(hql).list();
	}
	@SuppressWarnings("unchecked")
	public List<Incident> search(String key) {
		return getCurrentSession().createQuery("from Incident where description like ?").setString(0, "%"+key+"%").list();
	}


}
