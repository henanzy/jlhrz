package com.hnzy.hot.service;

import java.util.List;

import com.hnzy.hot.pojo.Kfgd;

public interface KfgdService {
	public List<Kfgd> selGd();
	//添加工单
	public void insertGd(Kfgd kfgd);
	//修改工单
	public void updateGd(Kfgd kfgd);
	
	//工单审核页面
	public List<Kfgd> selGdSh();
	//更新工单，工单审核
	public void UpdategdSh(Kfgd kfgd);
	//查找工单监控
	public List<Kfgd>selGdjk();
	//删除工单
	public int deleteGd(String gdNum);
	public int selGdtj(String state);

	//根据电话查找工单
	public List<Kfgd> SelGdBytel(String tel);
	
	public int selDjgd(Integer day);
	
	public int selWcgd(Integer day);
	
	public int selFYqgd();
	
	public void setyqgd();
	
	public void insertCs(int sj);
	
	public int selCsb();
	
	public int selJjgq();
	
	public Kfgd selGdByNum(String num);
}
