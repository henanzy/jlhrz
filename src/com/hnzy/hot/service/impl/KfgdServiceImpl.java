package com.hnzy.hot.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hnzy.datasource.DataSourceContextHolder;
import com.hnzy.datasource.DataSourceType;
import com.hnzy.hot.dao.KfgdDao;
import com.hnzy.hot.pojo.Kfgd;
import com.hnzy.hot.service.KfgdService;

@Service
public class KfgdServiceImpl implements KfgdService{

	@Autowired
	private KfgdDao kfgdDao;
	@Override
	public List<Kfgd> selGd() {
		// TODO Auto-generated method stub
		return kfgdDao.selGd();
	}
	@Override
	public void insertGd(Kfgd kfgd) {
		// TODO Auto-generated method stub
		kfgdDao.insertGd(kfgd);
	}
	@Override
	public void updateGd(Kfgd kfgd) {
		// TODO Auto-generated method stub
		kfgdDao.updateGd(kfgd);
	}
	@Override
	public List<Kfgd> selGdSh() {
		// TODO Auto-generated method stub
		return kfgdDao.selGdSh();
	}
	@Override
	public void UpdategdSh(Kfgd kfgd) {
		// TODO Auto-generated method stub
		kfgdDao.UpdategdSh(kfgd);
	}
	@Override

	public int selGdtj(String state) {
		// TODO Auto-generated method stub
		return kfgdDao.selGdtj(state);
	}

	public List<Kfgd> SelGdBytel(String tel) {
		// TODO Auto-generated method stub

		return kfgdDao.SelGdBytel(tel);

	}
	@Override
	public int selDjgd(Integer day) {
		// TODO Auto-generated method stub
		return kfgdDao.selDjgd(day);
	}
	@Override
	public int selWcgd(Integer day) {
		// TODO Auto-generated method stub
		return kfgdDao.selWcgd(day);
	}
	@Override
	public int selFYqgd(){
		// TODO Auto-generated method stub
		return kfgdDao.selFYqgd();
	}
	@Override
	public void setyqgd() {
		// TODO Auto-generated method stub
		kfgdDao.setyqgd( kfgdDao.selCsb());
	}
	@Override
	public void insertCs(int sj) {
		// TODO Auto-generated method stub
		kfgdDao.insertCs(sj);
	}
	@Override
	public int selCsb() {
		// TODO Auto-generated method stub
		return kfgdDao.selCsb();
	}
	@Override
	public int selJjgq() {
		// TODO Auto-generated method stub
		return kfgdDao.selJjgq( kfgdDao.selCsb()-2);
	}
	@Override
	public List<Kfgd> selGdjk() {
		// TODO Auto-generated method stub
		return kfgdDao.selGdjk();
	}
	@Override

	public Kfgd selGdByNum(String num) {
		// TODO Auto-generated method stub
		return kfgdDao.selGdByNum(num);
	}

	public int deleteGd(String gdNum) {
		// TODO Auto-generated method stub
		int del=kfgdDao.deleteGd(gdNum);
		return del;

	}
}
