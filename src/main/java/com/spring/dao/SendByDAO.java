package com.spring.dao;

import java.util.List;

import com.spring.model.SendBy;

public interface SendByDAO {
	
	public void addSendBy(SendBy sendBy);
	public void updateSendBy(SendBy sendBy);
	public SendBy getSendBy(int id);
	public void deleteSendBy(int id);
	public List<SendBy> getAllSendBy();

}
