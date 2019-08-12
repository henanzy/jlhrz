package com.hnzy.hot.dao;

import java.util.List;
import java.util.Map;


public interface OpcDao {
  
	public void insertHistory(Map<String, Object> map);
	
	public List<Map<String, Object>>selHistory (Map<String, Object> map);
	
	public void insertRbb(Map<String, Object> map);
	
	public void insertZybb(Map<String, Object> map);
	
	public List<Map<String, Object>>selrbb (Map<String, Object> map);
	
	public List<Map<String, Object>>selzybb (Map<String, Object> map);
}
