package com.hnzy.hot.service;


import java.util.List;
import java.util.Map;

public interface OpcService {
	public void insertHistory(Map<String, Object> map);
	
	public List<Map<String, Object>>selHistory (Map<String, Object> map);
}
