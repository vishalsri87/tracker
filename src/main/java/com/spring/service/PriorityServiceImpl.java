package com.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.spring.dao.PriorityDAO;
import com.spring.model.Priority;

@Service
@Transactional
public class PriorityServiceImpl implements PriorityService {
	
	@Autowired
	private PriorityDAO priorityDAO;

	public void addPriority(Priority priority) {
		priorityDAO.addPriority(priority);		
	}

	public void updatePriority(Priority Priority) {
		priorityDAO.updatePriority(Priority);
	}

	public Priority getPriority(int id) {
		return priorityDAO.getPriority(id);
	}

	public void deletePriority(int id) {
		priorityDAO.deletePriority(id);
	}

	public List<Priority> getAllPriority() {
		return priorityDAO.getAllPriority();
	}

}
