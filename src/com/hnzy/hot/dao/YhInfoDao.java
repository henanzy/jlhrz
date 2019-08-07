package com.hnzy.hot.dao;

import java.util.List;

import com.hnzy.hot.pojo.YhInfo;

public interface YhInfoDao {
	//根据手机号查找用户
	public List<YhInfo> fidnYhByTel(String tel);
}
