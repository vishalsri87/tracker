package com.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.spring.dao.IncidentDAO;
import com.spring.model.Incident;

@Service
@Transactional
public class IncidentServiceImpl implements IncidentService {

	@Autowired
	private IncidentDAO incDAO;

	public Incident addIncident(Incident inc) {
		return incDAO.addIncident(inc);
		
	}

	public void updateIncident(Incident inc) {
		incDAO.updateIncident(inc);
	}

	public Incident getIncident(int id) {
		return incDAO.getIncident(id);
	}

	public void deleteIncident(int id) {
		incDAO.deleteIncident(id);
	}

	public List<Incident> getAllIncident(String month,String year) {
		return incDAO.getAllIncident(month,year);
	}

	public boolean isIncidentExist(Incident inc) {
		return findByIncidentNumber(inc.getIncNumber())!=null;
	}
	
	public List<Incident> search(String key) {
		return incDAO.search(key);
	}

	public Incident findByIncidentNumber(String num) {
		Incident inc = incDAO.getIncByIncNumber(num);
            if(inc!=null){
                return inc;
            }
            return null;
	}
}
