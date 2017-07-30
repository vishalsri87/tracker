package com.spring.dao;

import java.util.List;

import com.spring.model.Priority;
import com.spring.model.TcsDevs;

public interface PriorityDAO {
	
	public void addPriority(Priority p);
	public void updatePriority(Priority p);
	public Priority getPriority(int id);
	public void deletePriority(int id);
	public List<Priority> getAllPriority();

}
