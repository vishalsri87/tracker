package com.spring.service;

import java.util.List;

import com.spring.model.Priority;

public interface PriorityService {
	
	public void addPriority(Priority priority);
	public void updatePriority(Priority priority);
	public Priority getPriority(int id);
	public void deletePriority(int id);
	public List<Priority> getAllPriority();

}
