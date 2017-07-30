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

	public void addIncident(Incident inc) {
		incDAO.addIncident(inc);		
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

	public List<Incident> getAllIncident() {
		return incDAO.getAllIncident();
	}

}
