package com.hnzy.hot.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hnzy.hot.dao.ZskDao;
import com.hnzy.hot.pojo.Zsk;
import com.hnzy.hot.service.ZskService;

@Service
public class ZskServiceImpl implements ZskService {
	@Autowired
    private ZskDao zskDao;

	@Override
	public List<Zsk> selAll(String zsktype) {
		// TODO Auto-generated method stub
		return zskDao.selAll(zsktype);
	}

	@Override
	public Zsk selZskById(String id) {
		// TODO Auto-generated method stub
		return zskDao.selZskById(id);
	}

	@Override
	public void addZsk(Zsk zsk) {
		// TODO Auto-generated method stub
		zskDao.addZsk(zsk);
	}

	@Override
	public void deleteZsk(String id) {
		// TODO Auto-generated method stub
		zskDao.deleteZsk(id);
	}

	@Override
	public void updateZsk(Zsk zsk) {
		// TODO Auto-generated method stub
		zskDao.updateZsk(zsk);
	}
	
	
	
	
	
}
