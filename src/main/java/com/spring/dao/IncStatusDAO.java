package com.spring.dao;

import java.util.List;

import com.spring.model.IncStatus;

public interface IncStatusDAO {
	
	public void addIncStatus(IncStatus status);
	public void updateIncStatus(IncStatus status);
	public IncStatus getIncStatus(int id);
	public void deleteIncStatus(int id);
	public List<IncStatus> getAllIncStatus();

}
