package com.spring.service;

import java.util.List;

import com.spring.model.Incident;

public interface IncidentService {
	
	public void addIncident(Incident inc);
	public void updateIncident(Incident inc);
	public Incident getIncident(int id);
	public void deleteIncident(int id);
	public List<Incident> getAllIncident();
	public List<Incident> search(String key);

	public boolean isIncidentExist(Incident inc); 

	public Incident findByIncidentNumber(String num) ;
}
