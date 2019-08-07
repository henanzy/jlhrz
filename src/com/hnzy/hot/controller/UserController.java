package com.hnzy.hot.controller;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hnzy.datasource.DataSourceContextHolder;
import com.hnzy.datasource.DataSourceType;
import com.hnzy.hot.pojo.Call;
import com.hnzy.hot.pojo.User;
import com.hnzy.hot.pojo.YhInfo;
import com.hnzy.hot.service.CellService;
import com.hnzy.hot.service.KfgdService;
import com.hnzy.hot.service.UserService;
import com.hnzy.hot.service.YhInfoService;
import com.hnzy.hot.util.JSONSerializer;
import com.hnzy.hot.util.MD5Util;
import com.hnzy.hot.util.StringUtil;

import net.sf.json.JSONObject;

@Controller
@RequestMapping("user")
public class UserController {
	
	@Autowired
	private YhInfoService yhInfoService;
	@Autowired
	private KfgdService kfgdService;
	@Autowired
	private UserService userServer;
	@Autowired
	private CellService callService;
	public List<YhInfo> YhInfoList;
	//跳转到登录页面
		@RequestMapping("/toLogin")
		public String tologin(){
			return"index";
		}
		//来电弹屏和首页
    	@RequestMapping("/home" )
    	public String home(String mobile,HttpServletRequest request,HttpSession session){
    		
    		
    		return "home";
    	}
    	
    	@RequestMapping("/dbjc")
    	public String dbjc(){
    		return "xxgl/dbjc";
    	}
    	
    	@RequestMapping("/left")
    	public String left(){
    		return "left";
    	}
    	
    	@RequestMapping("/error")
    	public String error(){
    		return "error";
    	}
    	
    	
    	@ResponseBody
    	@RequestMapping("/login")
		public JSONObject login(HttpSession session,String username,String password,HttpServletRequest request) throws UnsupportedEncodingException{
			JSONObject jsonObject= new JSONObject();
			if (StringUtil.isNoEmpty(username) && StringUtil.isNoEmpty(password)) {
				username=new String(username.getBytes("ISO-8859-1"),"utf-8")+"";
				password=new String(password.getBytes("ISO-8859-1"),"utf-8")+"";
				password=MD5Util.string2MD5(password);
				User info = userServer.findUserByNameAndMD5(username, password);			
				if(info!=null){
					
					request.getSession().setAttribute("admins", info);
					request.getSession().setAttribute("UserName", info.getUserName());
					request.getSession().setAttribute("PassWord", info.getPassword());
					request.getSession().setAttribute("ID", info.getId());

					jsonObject.put("msg","0");
					
				
			}else {

					jsonObject.put("msg", "1"); 
				}

			}
			return jsonObject;
		}
    	
    	@RequestMapping("updapwd")
    	@ResponseBody
    	public String updapwd(HttpSession session,HttpServletRequest request,String oldpassword ,String newpassword,String username) throws UnsupportedEncodingException {
//    		JSONObject jsonObject=new JSONObject();
    		       username=new String(username.getBytes("ISO-8859-1"),"utf-8");
    				
    				String password11=MD5Util.string2MD5(oldpassword);
    				String password12=MD5Util.string2MD5(newpassword);	
    				String msg="";
    				Integer ID=(Integer) session.getAttribute("ID");
//    				System.out.println(ID);
//    				System.out.println(password11);
//    				System.out.println(userServer.findUserPass(ID));
						if (password11.equals(userServer.findUserPass(ID))) {  
							User user =new User();
							user.setId(ID);
							user.setUserName(username);
							user.setPassword(password12);
							userServer.update(user);
							msg="0";
						}else{
							msg="1";
						} 

    				return msg;
    	}

    	
    	
    	//新增登录用户
    	@ResponseBody
    	@RequestMapping("addYh")
    	public JSONObject addYh(HttpServletRequest request,String username,String password) throws UnsupportedEncodingException{
    		 username=new String(username.getBytes("ISO-8859-1"),"utf-8");
    		JSONObject json=new JSONObject();
    		 //根据用户名字查找用户是否存在
    		 User user=userServer.findByName(username);
    		 if(user!=null){
    			 //用户名称已存在
    			 json.put("msg","0");
    		 }else{
    			  password=MD5Util.string2MD5(password);
    			 userServer.InsUsePass(username, password);
    			 json.put("msg","1");
    		 }
    		 
			return json;
    		
    	}	
    	@RequestMapping("canssz")
    	public String canssz(){
    		return "hrz/canssz";
    	}
    	
    	@RequestMapping("sssj")
    	public String sssj(){
    		return "hrz/sssj";
    	}
    	
    	@RequestMapping("lssj")
    	public String lssj(HttpServletRequest request){
    		
    		List<Map<String, String>> list =new ArrayList<>();
    		Map<String, String> map = new HashMap<>();
    		Map<String, String> map1 = new HashMap<>();
    		map.put("hrz", "一委站");
    		map.put("一次瞬时供流量", "0.0");
    		map.put("一次瞬时供热量", "0.0");
    		map.put("一次累计供流量", "84566.55");
    		map.put("一次累计供热量", "6195.09");
    		map.put("总电量", "27721.50");
    		map.put("A项电压", "231.40");
    		map.put("B项电压", "228.40");
    		map.put("C项电压", "230.20");
    		map.put("A项电流", "0.0");
    		map.put("B项电流", "0.0");
    		map.put("C项电流", "0.0");
    		map1.put("hrz", "二委站");
    		map1.put("一次瞬时供流量", "0.0");
    		map1.put("一次瞬时供热量", "0.0");
    		map1.put("一次累计供流量", "84566.55");
    		map1.put("一次累计供热量", "6195.09");
    		map1.put("总电量", "27721.50");
    		map1.put("A项电压", "231.40");
    		map1.put("B项电压", "228.40");
    		map1.put("C项电压", "230.20");
    		map1.put("A项电流", "0.0");
    		map1.put("B项电流", "0.0");
    		map1.put("C项电流", "0.0");
    		list.add(map);
    		list.add(map1);
    		
    		request.setAttribute("list", JSONSerializer.serialize(list));
    		return "hrz/lssj";
    	}
    	//日报表
    	@RequestMapping("rbb")
    	public String rbb(HttpServletRequest request){
    		
    		List<Map<String, String>> list =new ArrayList<>();
    		Map<String, String> map = new HashMap<>();
    		Map<String, String> map1 = new HashMap<>();
    		Map<String, String> map2 = new HashMap<>();
     		Map<String, String> map3 = new HashMap<>();
     		Map<String, String> map4 = new HashMap<>();
     		Map<String, String> map5 = new HashMap<>();
    		Map<String, String> map6 = new HashMap<>();
     		Map<String, String> map7 = new HashMap<>();
     		Map<String, String> map8 = new HashMap<>();
     		Map<String, String> map9 = new HashMap<>();
    		Map<String, String> map10 = new HashMap<>();
     		Map<String, String> map11 = new HashMap<>();
     		Map<String, String> map12 = new HashMap<>();
     		Map<String, String> map13 = new HashMap<>();
     		Map<String, String> map14 = new HashMap<>();
     		Map<String, String> map15 = new HashMap<>();
     		Map<String, String> map16 = new HashMap<>();
     		Map<String, String> map17 = new HashMap<>();
     		Map<String, String> map18 = new HashMap<>();
     		Map<String, String> map19 = new HashMap<>();
     		Map<String, String> map20 = new HashMap<>();
     		Map<String, String> map21 = new HashMap<>();
     		Map<String, String> map22 = new HashMap<>();
     		Map<String, String> map23 = new HashMap<>();
     		Map<String, String> map24 = new HashMap<>();
     		
    		Map<String, String> map31 = new HashMap<>();
    		Map<String, String> map32 = new HashMap<>();
     		Map<String, String> map33 = new HashMap<>();
     		Map<String, String> map34 = new HashMap<>();
     		Map<String, String> map35 = new HashMap<>();
    		Map<String, String> map36 = new HashMap<>();
     		Map<String, String> map37 = new HashMap<>();
     		Map<String, String> map38 = new HashMap<>();
     		Map<String, String> map39 = new HashMap<>();
    		Map<String, String> map40 = new HashMap<>();
     		Map<String, String> map41 = new HashMap<>();
     		Map<String, String> map42 = new HashMap<>();
     		Map<String, String> map43 = new HashMap<>();
     		Map<String, String> map44 = new HashMap<>();
     		Map<String, String> map45 = new HashMap<>();
     		Map<String, String> map46 = new HashMap<>();
     		Map<String, String> map47 = new HashMap<>();
     		Map<String, String> map48 = new HashMap<>();
     		Map<String, String> map49 = new HashMap<>();
     		
    		map.put("hrz", "一委站");
    		map.put("time", "2019-12-03 1:33:35");
    		map.put("一次瞬时供流量", "0.0");
    		map.put("一次瞬时供流量", "0.0");
    		map.put("水箱液位", "84566.55");
    		map.put("一次瞬时供热量", "6195.09");
    		map.put("一次供水温度", "27721.50");
    		map.put("二次回水温度", "231.40");
    		map.put("一次累计供流量", "228.40");
    		map.put("一次回水压力", "230.20");
    		map.put("一次累计供热量", "0.0");
    		map.put("一次回水温度", "0.0");
    		map.put("二次供水瞬时流量", "0.0");
    		map.put("二次供水压力", "0.0");
    		map.put("二次供水温度", "0.0");
    		map.put("二次回水压力", "0.0");
    		map1.put("hrz", "一委站");
    		map1.put("time", "2019-12-03 2:33:35");
    		map2.put("hrz", "一委站");
    		map2.put("time", "2019-12-03 3:33:35");
    		map3.put("hrz", "一委站");
    		map3.put("time", "2019-12-03 4:33:35");
    		map4.put("hrz", "一委站");
    		map4.put("time", "2019-12-03 5:33:35");
    		map5.put("hrz", "一委站");
    		map5.put("time", "2019-12-03 6:33:35");
    		map6.put("hrz", "一委站");
    		map6.put("time", "2019-12-03 7:33:35");
    		map7.put("hrz", "一委站");
    		map7.put("time", "2019-12-03 8:33:35");
    		map8.put("hrz", "一委站");
    		map8.put("time", "2019-12-03 9:33:35");
    		map9.put("hrz", "一委站");
    		map9.put("time", "2019-12-03 10:33:35");
    		map10.put("hrz", "一委站");
    		map10.put("time", "2019-12-03 11:33:35");
    		map11.put("hrz", "一委站");
    		map11.put("time", "2019-12-03 12:33:35");
    		map12.put("hrz", "一委站");
    		map12.put("time", "2019-12-03 13:33:35");
    		map13.put("hrz", "二委站");
    		map13.put("time", "2019-12-03 14:33:35");
    		map14.put("hrz", "一委站");
    		map14.put("time", "2019-12-03 15:33:35");
    		map15.put("hrz", "一委站");
    		map15.put("time", "2019-12-03 16:33:35");
    		map16.put("hrz", "一委站");
    		map16.put("time", "2019-12-03 17:33:35");
    		map17.put("hrz", "一委站");
    		map17.put("time", "2019-12-03 18:33:35");
    		map18.put("hrz", "一委站");
    		map18.put("time", "2019-12-03 19:33:35");
    		map19.put("hrz", "一委站");
    		map19.put("time", "2019-12-03 20:33:35");
    		map20.put("hrz", "一委站");
    		map20.put("time", "2019-12-03 21:33:35");
    		map21.put("hrz", "一委站");
    		map21.put("time", "2019-12-03 22:33:35");
    		map22.put("hrz", "一委站");
    		map22.put("time", "2019-12-03 23:33:35");
    		map23.put("hrz", "一委站");
    		map23.put("time", "2019-12-03 24:33:35");
    		
    		map31.put("hrz", "二委站");
    		map31.put("time", "2019-12-03 1:33:35");
    		map31.put("一次瞬时供流量", "0.0");
    		map31.put("一次供水压力", "0.0");
    		map31.put("水箱液位", "84566.55");
    		map31.put("一次瞬时供热量", "6195.09");
    		map31.put("一次供水温度", "27721.50");
    		map31.put("二次回水温度", "231.40");
    		map31.put("一次累计供流量", "228.40");
    		map31.put("一次回水压力", "230.20");
    		map31.put("一次累计供热量", "0.0");
    		map31.put("一次回水温度", "0.0");
    		map31.put("二次供水瞬时流量", "0.0");
    		map31.put("二次供水压力", "0.0");
    		map31.put("二次供水温度", "0.0");
    		map31.put("二次回水压力", "0.0");
    	
    		map32.put("hrz", "二委站");
    		map32.put("time", "2019-12-03 2:33:35");
    		map33.put("hrz", "二委站");
    		map33.put("time", "2019-12-03 3:33:35");
    		map34.put("hrz", "二委站");
    		map34.put("time", "2019-12-03 4:33:35");
    		map35.put("hrz", "二委站");
    		map35.put("time", "2019-12-03 5:33:35");
    		map36.put("hrz", "二委站");
    		map36.put("time", "2019-12-03 6:33:35");
    		map37.put("hrz", "二委站");
    		map37.put("time", "2019-12-03 8:33:35");
    		map38.put("hrz", "二委站");
    		map38.put("time", "2019-12-03 9:33:35");
    		map39.put("hrz", "二委站");
    		map39.put("time", "2019-12-03 10:33:35");
    		map40.put("hrz", "二委站");
    		map40.put("time", "2019-12-03 11:33:35");
    		map41.put("hrz", "二委站");
    		map41.put("time", "2019-12-03 12:33:35");
    		map42.put("hrz", "二委站");
    		map42.put("time", "2019-12-03 13:33:35");
    		map43.put("hrz", "二委站");
    		map43.put("time", "2019-12-03 14:33:35");
    		map44.put("hrz", "二委站");
    		map44.put("time", "2019-12-03 15:33:35");
    		map45.put("hrz", "二委站");
    		map45.put("time", "2019-12-03 16:33:35");
    		map46.put("hrz", "二委站");
    		map46.put("time", "2019-12-03 17:33:35");
    		map47.put("hrz", "二委站");
    		map47.put("time", "2019-12-03 18:33:35");
    		map48.put("hrz", "二委站");
    		map48.put("time", "2019-12-03 19:33:35");
    		map49.put("hrz", "二委站");
    		map49.put("time", "2019-12-03 20:33:35");
    		
    		list.add(map);
    		list.add(map1);
    		list.add(map3);
    		list.add(map4);
    		list.add(map5);
    		list.add(map6);
    		list.add(map7);
    		list.add(map8);
    		list.add(map9);
    		list.add(map10);
    		list.add(map11);
    		list.add(map12);
    		list.add(map13);
    		list.add(map14);
    		list.add(map15);
    		list.add(map16);
    		list.add(map17);
    		list.add(map18);
    		list.add(map19);
    		list.add(map20);
    		list.add(map21);
    		list.add(map22);
    		list.add(map23);
    		list.add(map24);
    		request.setAttribute("list", JSONSerializer.serialize(list));
    		return "hrz/rbb";
    	}
    	@RequestMapping("xtkz")
    	public String xtkz(){
    		return "xtkz";
    	}
    

    	/*企业条例国家法规*/
    	@RequestMapping("/guojfg")
    	public String guojfg(){
    		return "zhishiku/guojfg";
    	}
    	/*企业条例国家法规*/
    	@RequestMapping("/qiytl")
    	public String qiytl(String type){
    		return "zhishiku/qiytl";
    	}
    	/*企业条例行业知识*/
    	@RequestMapping("/hangyzs")
    	public String hangyzs(String type){
    		return "zhishiku/hangyzs";
    	}
    	/*企业条例行业知识*/
    	@RequestMapping("/wentjd")
    	public String wentjd(String type){
    		return "zhishiku/wentjd";
    	}
    	
    	
    	/*企业条例行业知识*/
    /*	@RequestMapping("/hangyzs")
    	public String hangyzs(){
    		return "zhishiku/hangyzs";
    	}*/
    	
    	/*企业条例行业知识*/
    	@RequestMapping("/xitsm")
    	public String xitsm(){
    		return "zhishiku/xitsm";
    	}
    	
    	/*企业条例行业知识*/
    	/*@RequestMapping("/wentjd")
    	public String wentjd(){
    		return "zhishiku/wentjd";
    	}*/
    	
    	/*员工定位*/
    	@RequestMapping("/shisdw")
    	public String shisdw(){
    		return "dingwei/shisdw";
    	}
    	/*员工定位*/
    	/*@RequestMapping("/shisdw")
    	public String shisdw(){
    		return "dingwei/shisdw";
    	}*/
    	//历史轨迹
    	@RequestMapping("/lisgj")
    	public String lisgj(){
    		return "dingwei/lisgj";
    	}
    	@RequestMapping("bjxx")
    	public String bjxx(){
    		return "hrz/lsbj";
    	}

    	
    	@RequestMapping("xzzj")
    	public String xzzj(){
    		return "xxgl/xzzj";
    	}
    	//关网结构
    	@RequestMapping("gwjg")
    	public String gwjg(){
    		return "xxgl/gwjg";
    	}
//    	备品信息
    	@RequestMapping("bpxx")
    	public String bpxx(){
    		return "xxgl/bpxx";

    	}
//    	日常维护机制
    	@RequestMapping("rcwh")
    	public String rcwh(){
    		return "weihgl/rcwh";
    	}
//    	抢修
    	@RequestMapping("qiangxiu")
    	public String qiangxiu(){
    		return "weihgl/qiangxiu";
    	}
//    	改造
    	@RequestMapping("gaizao")
    	public String gaizao(){
    		return "weihgl/gaizao";
    	}
//    	设备维护
    	@RequestMapping("shebwh")
    	public String shebwh(){
    		return "weihgl/shebwh";
    	}
    	//zbb
    	@RequestMapping("zbb")
    	public String zbb(HttpServletRequest request){
    		Map<String, String> map = new HashMap<>();
    		map.put("hrz", "一委站");
    		map.put("cjsj", "2019-01-28 00:00:00");
    		map.put("一次瞬时供流量", "0.0");
    		map.put("一次瞬时供热量", "0.0");
    		map.put("一次累计供流量", "84566.55");
    		map.put("一次累计供热量", "6195.09");
    		map.put("二次供水压力", "0.0");
    		
    		Map<String, String> mp1 = new HashMap<>();
    		mp1.put("hrz", "一委站");
    		mp1.put("cjsj", "2019-01-29 00:00:00");
    		mp1.put("一次瞬时供流量", "0.0");
    		mp1.put("一次瞬时供热量", "0.0");
    		mp1.put("一次累计供流量", "84566.55");
    		mp1.put("一次累计供热量", "6195.09");
    		mp1.put("二次供水压力", "0.0");
    		
    		Map<String, String> mp2 = new HashMap<>();
    		mp2.put("hrz", "一委站");
    		mp2.put("cjsj", "2019-01-30 00:00:00");
    		mp2.put("一次瞬时供流量", "0.0");
    		mp2.put("一次瞬时供热量", "0.0");
    		mp2.put("一次累计供流量", "84566.55");
    		mp2.put("一次累计供热量", "6195.09");
    		mp2.put("二次供水压力", "0.0");
    		
    		Map<String, String> mp3 = new HashMap<>();
    		mp3.put("hrz", "一委站");
    		mp3.put("cjsj", "2019-01-31 00:00:00");
    		mp3.put("一次瞬时供流量", "0.0");
    		mp3.put("一次瞬时供热量", "0.0");
    		mp3.put("一次累计供流量", "84566.55");
    		mp3.put("一次累计供热量", "6195.09");
    		mp3.put("二次供水压力", "0.0");
    		
    		Map<String, String> mp4 = new HashMap<>();
    		mp4.put("hrz", "一委站");
    		mp4.put("cjsj", "2019-02-01 00:00:00");
    		mp4.put("一次瞬时供流量", "0.0");
    		mp4.put("一次瞬时供热量", "0.0");
    		mp4.put("一次累计供流量", "84566.55");
    		mp4.put("一次累计供热量", "6195.09");
    		mp4.put("二次供水压力", "0.0");
    		
    		Map<String, String> mp5 = new HashMap<>();
    		mp5.put("hrz", "一委站");
    		mp5.put("cjsj", "2019-02-02 00:00:00");
    		mp5.put("一次瞬时供流量", "0.0");
    		mp5.put("一次瞬时供热量", "0.0");
    		mp5.put("一次累计供流量", "84566.55");
    		mp5.put("一次累计供热量", "6195.09");
    		mp5.put("二次供水压力", "0.0");
    		
    		Map<String, String> mp6 = new HashMap<>(); 
    		mp6.put("hrz", "一委站");
    		mp6.put("cjsj", "2019-02-03 00:00:00");
    		mp6.put("一次瞬时供流量", "0.0");
    		mp6.put("一次瞬时供热量", "0.0");
    		mp6.put("一次累计供流量", "84566.55");
    		mp6.put("一次累计供热量", "6195.09");
    		mp6.put("二次供水压力", "0.0");
    		
    		
    		Map<String, String> mp7 = new HashMap<>();
    		mp7.put("hrz", "一委站");
    		mp7.put("cjsj", "2019-02-04 00:00:00");
    		mp7.put("一次瞬时供流量", "0.0");
    		mp7.put("一次瞬时供热量", "0.0");
    		mp7.put("一次累计供流量", "84566.55");
    		mp7.put("一次累计供热量", "6195.09");
    		mp7.put("二次供水压力", "0.0");
    		
    		
    		
    		
    		Map<String, String> mp8 = new HashMap<>();
    		mp8.put("hrz", "二委站");
    		mp8.put("cjsj", "2019-01-29 00:00:00");
    		mp8.put("一次瞬时供流量", "0.0");
    		mp8.put("一次瞬时供热量", "0.0");
    		mp8.put("一次累计供流量", "84566.55");
    		mp8.put("一次累计供热量", "6195.09");
    		mp8.put("二次供水压力", "0.0");
    		
    		Map<String, String> mp9 = new HashMap<>();
    		mp9.put("hrz", "二委站");
    		mp9.put("cjsj", "2019-01-30 00:00:00");
    		mp9.put("一次瞬时供流量", "0.0");
    		mp9.put("一次瞬时供热量", "0.0");
    		mp9.put("一次累计供流量", "84566.55");
    		mp9.put("一次累计供热量", "6195.09");
    		mp9.put("二次供水压力", "0.0");
    		
    		Map<String, String> mp10 = new HashMap<>();
    		mp10.put("hrz", "二委站");
    		mp10.put("cjsj", "2019-01-31 00:00:00");
    		mp10.put("一次瞬时供流量", "0.0");
    		mp10.put("一次瞬时供热量", "0.0");
    		mp10.put("一次累计供流量", "84566.55");
    		mp10.put("一次累计供热量", "6195.09");
    		mp10.put("二次供水压力", "0.0");
    		
    		Map<String, String> mp11 = new HashMap<>();
    		mp11.put("hrz", "二委站");
    		mp11.put("cjsj", "2019-02-01 00:00:00");
    		mp11.put("一次瞬时供流量", "0.0");
    		mp11.put("一次瞬时供热量", "0.0");
    		mp11.put("一次累计供流量", "84566.55");
    		mp11.put("一次累计供热量", "6195.09");
    		mp11.put("二次供水压力", "0.0");
    		
    		Map<String, String> mp12 = new HashMap<>();
    		mp12.put("hrz", "二委站");
    		mp12.put("cjsj", "2019-02-02 00:00:00");
    		mp12.put("一次瞬时供流量", "0.0");
    		mp12.put("一次瞬时供热量", "0.0");
    		mp12.put("一次累计供流量", "84566.55");
    		mp12.put("一次累计供热量", "6195.09");
    		mp12.put("二次供水压力", "0.0");
    		
    		Map<String, String> mp13 = new HashMap<>(); 
    		mp13.put("hrz", "二委站");
    		mp13.put("cjsj", "2019-02-03 00:00:00");
    		mp13.put("一次瞬时供流量", "0.0");
    		mp13.put("一次瞬时供热量", "0.0");
    		mp13.put("一次累计供流量", "84566.55");
    		mp13.put("一次累计供热量", "6195.09");
    		mp13.put("二次供水压力", "0.0");
    		
    		
    		Map<String, String> mp14 = new HashMap<>();
    		mp14.put("hrz", "二委站");
    		mp14.put("cjsj", "2019-02-04 00:00:00");
    		mp14.put("一次瞬时供流量", "0.0");
    		mp14.put("一次瞬时供热量", "0.0");
    		mp14.put("一次累计供流量", "84566.55");
    		mp14.put("一次累计供热量", "6195.09");
    		mp14.put("二次供水压力", "0.0");
    		
    		List<Map<String, String>> list =new ArrayList<>();
    		list.add(mp1);list.add(mp2);list.add(mp3);list.add(mp4);list.add(mp5);list.add(mp6);list.add(mp7);
    		list.add(mp14);list.add(mp8);list.add(mp9);list.add(mp10);list.add(mp11);list.add(mp12);list.add(mp13);
    		request.setAttribute("list", JSONSerializer.serialize(list));
    		return "xxgl/zbb";

    	}

    	@RequestMapping("ybb")
    	public String ybb(HttpServletRequest request){
    		List<Map<String, String>> list =new ArrayList<>();
    		Map<String, String> map1 = new HashMap<>();Map<String, String> map4 = new HashMap<>();Map<String, String> map7 = new HashMap<>();
    		Map<String, String> map2 = new HashMap<>();Map<String, String> map5 = new HashMap<>();Map<String, String> map8 = new HashMap<>();
    		Map<String, String> map3 = new HashMap<>();Map<String, String> map6 = new HashMap<>();Map<String, String> map9 = new HashMap<>();
    		Map<String, String> map10 = new HashMap<>();Map<String, String> map11 = new HashMap<>();Map<String, String> map12 = new HashMap<>();
    		Map<String, String> map13 = new HashMap<>();Map<String, String> map14 = new HashMap<>();Map<String, String> map15 = new HashMap<>();
    		Map<String, String> map16 = new HashMap<>();Map<String, String> map17 = new HashMap<>();Map<String, String> map18 = new HashMap<>();
    		Map<String, String> map19 = new HashMap<>();Map<String, String> map20 = new HashMap<>();Map<String, String> map21 = new HashMap<>();
    		Map<String, String> map22 = new HashMap<>();Map<String, String> map23 = new HashMap<>();Map<String, String> map24 = new HashMap<>();
    		Map<String, String> map25 = new HashMap<>();Map<String, String> map26 = new HashMap<>();Map<String, String> map27 = new HashMap<>();
    		Map<String, String> map28 = new HashMap<>();Map<String, String> map29 = new HashMap<>();Map<String, String> map30 = new HashMap<>();
    		map1.put("hrz", "一委站");map1.put("cjsj", "2019-01-01 00:00:00");
    		map2.put("hrz", "一委站");map2.put("cjsj", "2019-01-02 00:00:00");
    		map3.put("hrz", "一委站");map3.put("cjsj", "2019-01-03 00:00:00");
    		map4.put("hrz", "一委站");map4.put("cjsj", "2019-01-04 00:00:00");
    		map5.put("hrz", "一委站");map5.put("cjsj", "2019-01-05 00:00:00");
    		map6.put("hrz", "一委站");map6.put("cjsj", "2019-01-06 00:00:00");
    		map7.put("hrz", "一委站");map7.put("cjsj", "2019-01-07 00:00:00");
    		map8.put("hrz", "一委站");map8.put("cjsj", "2019-01-08 00:00:00");
    		map9.put("hrz", "一委站");map9.put("cjsj", "2019-01-09 00:00:00");
    		map10.put("hrz", "一委站");map10.put("cjsj", "2019-01-10 00:00:00");
    		map11.put("hrz", "一委站");map11.put("cjsj", "2019-01-11 00:00:00");
    		map12.put("hrz", "一委站");map12.put("cjsj", "2019-01-12 00:00:00");
    		map13.put("hrz", "一委站");map13.put("cjsj", "2019-01-13 00:00:00");
    		map14.put("hrz", "一委站");map14.put("cjsj", "2019-01-14 00:00:00");
    		map15.put("hrz", "一委站");map15.put("cjsj", "2019-01-15 00:00:00");
    		map16.put("hrz", "一委站");map16.put("cjsj", "2019-01-16 00:00:00");
    		map17.put("hrz", "一委站");map17.put("cjsj", "2019-01-17 00:00:00");
    		map18.put("hrz", "一委站");map18.put("cjsj", "2019-01-18 00:00:00");
    		map19.put("hrz", "一委站");map19.put("cjsj", "2019-01-19 00:00:00");
    		map20.put("hrz", "一委站");map20.put("cjsj", "2019-01-20 00:00:00");
    		map21.put("hrz", "一委站");map21.put("cjsj", "2019-01-21 00:00:00");
    		map22.put("hrz", "一委站");map22.put("cjsj", "2019-01-22 00:00:00");
    		map23.put("hrz", "一委站");map23.put("cjsj", "2019-01-23 00:00:00");
    		map24.put("hrz", "一委站");map24.put("cjsj", "2019-01-24 00:00:00");
    		map25.put("hrz", "一委站");map25.put("cjsj", "2019-01-25 00:00:00");
    		map26.put("hrz", "一委站");map26.put("cjsj", "2019-01-26 00:00:00");
    		map27.put("hrz", "一委站");map27.put("cjsj", "2019-01-27 00:00:00");
    		map28.put("hrz", "一委站");map28.put("cjsj", "2019-01-28 00:00:00");
    		map29.put("hrz", "一委站");map29.put("cjsj", "2019-01-29 00:00:00");
    		map30.put("hrz", "一委站");map30.put("cjsj", "2019-01-30 00:00:00");
    		list.add(map1);list.add(map2);list.add(map3);list.add(map4);list.add(map5);list.add(map6);
    		list.add(map7);list.add(map8);list.add(map9);list.add(map10);list.add(map11);list.add(map12);
    		list.add(map13);list.add(map14);list.add(map15);list.add(map16);list.add(map17);list.add(map18);
    		list.add(map19);list.add(map20);list.add(map21);list.add(map22);list.add(map23);list.add(map24);
    		list.add(map25);list.add(map26);list.add(map27);list.add(map28);list.add(map29);list.add(map30);
    		request.setAttribute("list", JSONSerializer.serialize(list));
    		return "xxgl/ybb";

    	}
    	
    	@RequestMapping("sbwhjl")
    	public String sbwhjl(){
    		return "weihgl/sbwhjl";
    	}
}