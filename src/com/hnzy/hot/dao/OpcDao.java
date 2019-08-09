package com.hnzy.hot.dao;

import java.util.List;
import java.util.Map;


public interface OpcDao {
  
	public void insertHistory(Map<String, Object> map);
	
	public List<Map<String, Object>>selHistory (Map<String, Object> map);
}
