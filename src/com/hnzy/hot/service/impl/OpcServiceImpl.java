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
	
	
	
	
	
}
