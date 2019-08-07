package com.hnzy.hot.service;


import java.util.List;

import com.hnzy.hot.pojo.Call;
import com.hnzy.hot.pojo.Zsk;

public interface ZskService {
	public List<Zsk> selAll(String zsktype);
	
	public Zsk selZskById(String id);
	
	public void addZsk(Zsk zsk);
	
	public void deleteZsk(String id);
	
	public void updateZsk(Zsk zsk);
}
