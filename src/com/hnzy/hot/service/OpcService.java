package com.hnzy.hot.service;


import java.util.List;
import java.util.Map;

public interface OpcService {
	public void insertHistory(Map<String, Object> map);
	
	public List<Map<String, Object>>selHistory (Map<String, Object> map);
	
	public void insertRbb(Map<String, Object> map);
	
	public void insertZybb(Map<String, Object> map);
	
    public List<Map<String, Object>>selrbb (Map<String, Object> map);
	
	public List<Map<String, Object>>selzybb (Map<String, Object> map);
	
	public List<Map<String, Object>>selQx (Map<String, Object> map);
	
	public List<Map<String, Object>>getHrzXx (Map<String, Object> map);
	
public void Insert(Map<String, Object> map);
	
	public void Update(Map<String, Object> map);
	
	public void Delete(String id);
	
public void InsertBjxx(Map<String, Object> map);
	
	public void InsertBjdl(Map<String, Object> map);
	
	public void DeleteBjdl(Map<String, Object> map);
	
	public void UpdateBjxx(Map<String, Object> map);
	
	public int pdbj (Map<String, Object> map);
	
	public List<String>getbjdl (String hrz);
	
	public List<Map<String, Object>>getbjxx ();
	
	public List<Map<String, Object>>getlsbjxx (Map<String, Object> map);
	
	public List<Map<String, Object>>dbjc (Map<String, Object> map);
}
