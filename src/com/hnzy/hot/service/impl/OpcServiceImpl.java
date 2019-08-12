package com.hnzy.hot.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hnzy.hot.dao.OpcDao;
import com.hnzy.hot.service.OpcService;

@Service
public class OpcServiceImpl implements OpcService {
	@Autowired
    private OpcDao opcDao;

	@Override
	public void insertHistory(Map<String, Object> map) {
		// TODO Auto-generated method stub
		opcDao.insertHistory(map);
	}

	@Override
	public List<Map<String, Object>> selHistory(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return opcDao.selHistory(map);
	}

	@Override
	public void insertRbb(Map<String, Object> map) {
		// TODO Auto-generated method stub
		opcDao.insertRbb(map);
	}

	@Override
	public void insertZybb(Map<String, Object> map) {
		// TODO Auto-generated method stub
		opcDao.insertZybb(map);
	}

	@Override
	public List<Map<String, Object>> selrbb(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return opcDao.selrbb(map);
	}

	@Override
	public List<Map<String, Object>> selzybb(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return opcDao.selzybb(map);
	}
	
	
	
	
	
}
