package com.spring.service;

import java.util.List;

import com.spring.model.TcsDevs;

public interface TcsDevsService {
	
	public void addTcsDevs(TcsDevs TcsDevs);
	public void updateTcsDevs(TcsDevs TcsDevs);
	public TcsDevs getTcsDevs(int id);
	public void deleteTcsDevs(int id);
	public List<TcsDevs> getAllTcsDevs();

}
