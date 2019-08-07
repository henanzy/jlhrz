package com.hnzy.hot.service;

import java.util.List;

import com.hnzy.hot.pojo.YhInfo;

public interface YhInfoService {
	//根据手机号查找用户
	public List<YhInfo> findYhByTel(String tel);
}
