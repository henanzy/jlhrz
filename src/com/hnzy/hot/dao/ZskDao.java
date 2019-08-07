package com.hnzy.hot.dao;

import java.util.List;

import org.apache.poi.ss.usermodel.Cell;

import com.hnzy.hot.pojo.Call;
import com.hnzy.hot.pojo.Zsk;


public interface ZskDao {
 
	public List<Zsk> selAll(String zsktype);
	
	public Zsk selZskById(String id);
	
	public void addZsk(Zsk zsk);
	
	public void deleteZsk(String id);
	
	public void updateZsk(Zsk zsk);
}
