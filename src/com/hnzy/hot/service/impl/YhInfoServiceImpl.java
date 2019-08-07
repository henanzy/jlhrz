package com.hnzy.hot.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hnzy.datasource.DataSourceContextHolder;
import com.hnzy.datasource.DataSourceType;
import com.hnzy.hot.dao.YhInfoDao;
import com.hnzy.hot.pojo.YhInfo;
import com.hnzy.hot.service.YhInfoService;

@Service
public class YhInfoServiceImpl implements YhInfoService {

	@Autowired
	private YhInfoDao yhInfoDao;
	
	//根据手机号查找用户
	public List<YhInfo> findYhByTel(String tel) {
		// TODO Auto-generated method stub
		DataSourceContextHolder.setDbType(DataSourceType.dse);
		return yhInfoDao.fidnYhByTel(tel);
	}
}
