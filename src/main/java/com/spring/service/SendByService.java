package com.spring.service;

import java.util.List;

import com.spring.model.SendBy;

public interface SendByService {
	
	public void addSendBy(SendBy SendBy);
	public void updateSendBy(SendBy SendBy);
	public SendBy getSendBy(int id);
	public void deleteSendBy(int id);
	public List<SendBy> getAllSendBy();

}
