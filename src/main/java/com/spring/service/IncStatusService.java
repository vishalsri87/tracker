package com.spring.service;

import java.util.List;

import com.spring.model.IncStatus;

public interface IncStatusService {
	
	public void addIncStatus(IncStatus status);
	public void updateIncStatus(IncStatus status);
	public IncStatus getIncStatus(int id);
	public void deleteIncStatus(int id);
	public List<IncStatus> getAllIncStatus();

}
