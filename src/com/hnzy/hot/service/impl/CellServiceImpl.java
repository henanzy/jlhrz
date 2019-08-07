package com.hnzy.hot.service.impl;

import java.util.List;

import org.apache.poi.ss.usermodel.Cell;
import org.springframework.stereotype.Service;

import com.hnzy.datasource.DataSourceContextHolder;
import com.hnzy.datasource.DataSourceType;
import com.hnzy.hot.dao.CallDao;
import com.hnzy.hot.pojo.Call;
import com.hnzy.hot.service.CellService;

import org.springframework.beans.factory.annotation.Autowired;

@Service
public class CellServiceImpl implements CellService {
	@Autowired
    private CallDao CellDao;
	
	@Override
	public List<Call> selCell(String tel) {
		// TODO Auto-generated method stub
		return CellDao.selCell(tel);
	}

	@Override
	public int getCallCount(int day) {
		// TODO Auto-generated method stub
		DataSourceContextHolder.setDbType(DataSourceType.ds);
		int a=CellDao.getCallCount(day);
		
		return a;
	}

	@Override
	public List<Call> getCall() {
		// TODO Auto-generated method stub
		return CellDao.getCall();
	}
	
	
	
}
