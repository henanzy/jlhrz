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

	@Override
	public List<Map<String, Object>> selQx(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return opcDao.selQx(map);
	}

	@Override
	public List<Map<String, Object>> getHrzXx(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return opcDao.getHrzXx(map);
	}

	@Override
	public void Insert(Map<String, Object> map) {
		// TODO Auto-generated method stub
		opcDao.Insert(map);
	}

	@Override
	public void Update(Map<String, Object> map) {
		// TODO Auto-generated method stub
		opcDao.Update(map);
	}

	@Override
	public void Delete(String id) {
		// TODO Auto-generated method stub
		opcDao.Delete(id);
	}

	@Override
	public void InsertBjxx(Map<String, Object> map) {
		// TODO Auto-generated method stub
		opcDao.InsertBjxx(map);
	}

	@Override
	public void InsertBjdl(Map<String, Object> map) {
		// TODO Auto-generated method stub
		opcDao.InsertBjdl(map);
	}

	@Override
	public void DeleteBjdl(Map<String, Object> map) {
		// TODO Auto-generated method stub
		opcDao.DeleteBjdl(map);
	}

	@Override
	public void UpdateBjxx(Map<String, Object> map) {
		// TODO Auto-generated method stub
		opcDao.UpdateBjxx(map);
	}

	@Override
	public int pdbj(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return opcDao.pdbj(map);
	}

	@Override
	public List<String> getbjdl(String hrz) {
		// TODO Auto-generated method stub
		return opcDao.getbjdl(hrz);
	}

	@Override
	public List<Map<String, Object>> getbjxx() {
		// TODO Auto-generated method stub
		return opcDao.getbjxx();
	}

	@Override
	public List<Map<String, Object>> getlsbjxx(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return opcDao.getlsbjxx(map);
	}

	@Override
	public List<Map<String, Object>> dbjc(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return opcDao.dbjc(map);
	}
	
	
	
	
	
}
