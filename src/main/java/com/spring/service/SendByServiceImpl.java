package com.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.spring.dao.SendByDAO;
import com.spring.model.SendBy;

@Service
@Transactional
public class SendByServiceImpl implements SendByService {
	
	@Autowired
	private SendByDAO SendByDAO;

	public void addSendBy(SendBy SendBy) {
		SendByDAO.addSendBy(SendBy);		
	}

	public void updateSendBy(SendBy SendBy) {
		SendByDAO.updateSendBy(SendBy);
	}

	public SendBy getSendBy(int id) {
		return SendByDAO.getSendBy(id);
	}

	public void deleteSendBy(int id) {
		SendByDAO.deleteSendBy(id);
	}

	public List<SendBy> getAllSendBy() {
		return SendByDAO.getAllSendBy();
	}

}
