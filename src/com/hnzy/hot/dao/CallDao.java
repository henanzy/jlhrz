package com.hnzy.hot.dao;

import java.util.List;

import org.apache.poi.ss.usermodel.Cell;

import com.hnzy.hot.pojo.Call;


public interface CallDao {
  //获取电话信息
	public List<Call> selCell(String tel);
	
	public int getCallCount(int day);
	
	public List<Call> getCall();
}
