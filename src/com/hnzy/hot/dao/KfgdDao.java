package com.hnzy.hot.dao;

import java.util.List;

import org.springframework.stereotype.Component;

import com.hnzy.hot.pojo.Kfgd;
@Component
public interface KfgdDao {
	//获取所有的工单 
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
	
	public int selFYqgd();//非逾期工单
	
	public void setyqgd(int sj);
	
	public void insertCs(int sj);
	
	public int selCsb();
	
	public int selJjgq(int sj);
	
	public Kfgd selGdByNum( String num);

}
