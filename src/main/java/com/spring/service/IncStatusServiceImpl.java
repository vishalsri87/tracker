package com.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.spring.dao.IncStatusDAO;
import com.spring.model.IncStatus;

@Service
@Transactional
public class IncStatusServiceImpl implements IncStatusService {
	
	@Autowired
	private IncStatusDAO incStatusDAO;

	public void addIncStatus(IncStatus incStatus) {
		incStatusDAO.addIncStatus(incStatus);		
	}

	public void updateIncStatus(IncStatus incStatus) {
		incStatusDAO.updateIncStatus(incStatus);
	}

	public IncStatus getIncStatus(int id) {
		return incStatusDAO.getIncStatus(id);
	}

	public void deleteIncStatus(int id) {
		incStatusDAO.deleteIncStatus(id);
	}

	public List<IncStatus> getAllIncStatus() {
		return incStatusDAO.getAllIncStatus();
	}

}
