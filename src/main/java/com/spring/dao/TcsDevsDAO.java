package com.spring.dao;

import java.util.List;

import com.spring.model.TcsDevs;

public interface TcsDevsDAO {
	
	public void addTcsDevs(TcsDevs dev);
	public void updateTcsDevs(TcsDevs dev);
	public TcsDevs getTcsDevs(int id);
	public void deleteTcsDevs(int id);
	public List<TcsDevs> getAllTcsDevs();

}
