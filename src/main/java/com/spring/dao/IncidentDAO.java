package com.spring.dao;

import java.util.List;

import com.spring.model.Incident;
import com.spring.model.TeamMember;

public interface IncidentDAO {
	
	public void addIncident(Incident incident);
	public void updateIncident(Incident incident);
	public Incident getIncident(int id);
	public void deleteIncident(int id);
	public List<Incident> getAllIncident();

}
