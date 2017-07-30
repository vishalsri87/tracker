package com.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.spring.dao.TcsDevsDAO;
import com.spring.model.TcsDevs;

@Service
@Transactional
public class TcsDevsServiceImpl implements TcsDevsService {
	
	@Autowired
	private TcsDevsDAO TcsDevsDAO;

	public void addTcsDevs(TcsDevs TcsDevs) {
		TcsDevsDAO.addTcsDevs(TcsDevs);		
	}

	public void updateTcsDevs(TcsDevs TcsDevs) {
		TcsDevsDAO.updateTcsDevs(TcsDevs);
	}

	public TcsDevs getTcsDevs(int id) {
		return TcsDevsDAO.getTcsDevs(id);
	}

	public void deleteTcsDevs(int id) {
		TcsDevsDAO.deleteTcsDevs(id);
	}

	public List<TcsDevs> getAllTcsDevs() {
		return TcsDevsDAO.getAllTcsDevs();
	}

}
