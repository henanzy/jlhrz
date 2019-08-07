package com.hnzy.hot.service;


import java.util.List;

import com.hnzy.hot.pojo.Call;

public interface CellService {
	public List<Call> selCell(String tel);
	
	public int getCallCount(int day);
	
	public List<Call> getCall();
}
