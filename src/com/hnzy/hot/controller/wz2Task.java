package com.hnzy.hot.controller;
import java.io.UnsupportedEncodingException;
import java.net.UnknownHostException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.concurrent.Executors;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.jinterop.dcom.common.JIException;
import org.openscada.opc.lib.common.AlreadyConnectedException;
import org.openscada.opc.lib.common.ConnectionInformation;
import org.openscada.opc.lib.common.NotConnectedException;
import org.openscada.opc.lib.da.AddFailedException;
import org.openscada.opc.lib.da.DuplicateGroupException;
import org.openscada.opc.lib.da.Group;
import org.openscada.opc.lib.da.Item;
import org.openscada.opc.lib.da.Server;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import com.hnzy.hot.service.OpcService;
import com.hnzy.hot.util.DUtil;
import com.hnzy.hot.util.OPCConfiguration;


@Component 
public class wz2Task{
	
	@Autowired
	OpcService opcService;
	
	SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss") ;
	
	@Scheduled(cron="0 0/10 * * * ? ")  //每5执行一次   
    public void aTask(){      
		 ConnectionInformation ci=OPCConfiguration.getCLSIDConnectionInfomation();
	       final Server server = new Server ( ci, Executors.newSingleThreadScheduledExecutor () );
	       String[] d=DUtil.dsj(DUtil.ewz);
	       
	       Map<String,Object> dmap=new HashMap<String, Object>();
	       Map<String, Item> map = null;
            	     Group group = null;
            				try {
								server.connect ();
            					 group = server.addGroup ( "groupyx" );
            					 group.setActive ( true );
				                try {
									map = group.addItems(d);
								} catch (AddFailedException e) {
									// TODO Auto-generated catch block
									e.printStackTrace();
								}
							} catch (IllegalArgumentException e1) {
								// TODO Auto-generated catch block
								e1.printStackTrace();
							} catch (UnknownHostException e1) {
								// TODO Auto-generated catch block
								e1.printStackTrace();
							} catch (JIException e1) {
								// TODO Auto-generated catch block
								e1.printStackTrace();
							} catch (AlreadyConnectedException e1) {
								// TODO Auto-generated catch block
								e1.printStackTrace();
							} catch (NotConnectedException e) {
								// TODO Auto-generated catch block
								e.printStackTrace();
							} catch (DuplicateGroupException e) {
								// TODO Auto-generated catch block
								e.printStackTrace();
							}
            				
        					for (Entry<String, Item> temp : map.entrySet()) {
        						try {
        							Thread.sleep(100);
        						} catch (InterruptedException e) {
        							// TODO Auto-generated catch block
        							e.printStackTrace();
        						}
        					
								try {
									String id= temp.getValue().getId();
	        						Object value = temp.getValue().read(true).getValue().getObject();
	        						System.out.println("------------value----------"+value);
									 String[] a=id.split("读数据.");
						            	String key=a[1];
						            	if(key.contains("#")){
						            		key=key.replace("#", "");
						            	}
						            	boolean b=isNumeric(String.valueOf(value));
						            	System.out.println("------b---"+b);
						            	if(b==false){
						            		value = temp.getValue().read(true).getValue().getObject();
						            	}
						                  String s=String.format("%.1f",value);
						                  dmap.put(key, s);
								} catch (JIException e) {
									// TODO Auto-generated catch block
									e.printStackTrace();
								}
        						
        					}
        					
        					   server.dispose();
        					   
        					   Map<String, Object> insMap=new HashMap<>();
        					   
        					   insMap.put("hrz", "二委站"); 
        					   insMap.put("ycssgll", dmap.get("一次供水瞬时流量"));insMap.put("ycssgrl", dmap.get("一次供水瞬时热量"));insMap.put("ycljgll", dmap.get("一次供水累计流量"));
        					   insMap.put("ycljgrl", dmap.get("一次供水累计热量"));insMap.put("ycgsyl", dmap.get("一次供水压力"));insMap.put("ycgswd", dmap.get("一次供水温度"));
        					   insMap.put("ychsyl", dmap.get("一次回水压力"));insMap.put("ychswd", dmap.get("一次回水温度"));insMap.put("bbssll", dmap.get("补水瞬时流量"));
        					   insMap.put("bbljll", dmap.get("补水累计流量"));insMap.put("sxyw", dmap.get("水箱液位"));insMap.put("zlszbsl", dmap.get("自来水总补水量"));
        					   insMap.put("zdl", dmap.get("电量实际值"));insMap.put("Ady", dmap.get("A相电压值"));insMap.put("Bdy", dmap.get("B相电压值"));
        					   insMap.put("Cdy", dmap.get("A相电压值"));insMap.put("Adl", dmap.get("A相电流值"));insMap.put("Bdl", dmap.get("B相电流值"));
        					   insMap.put("Cdl", dmap.get("C相电流值"));insMap.put("ecgssll", dmap.get("二次供水瞬时流量"));insMap.put("ecgljll", dmap.get("二次供水累计流量"));
        					   insMap.put("ecgsyl", dmap.get("二次供水压力"));insMap.put("ecgswd", dmap.get("二次供水温度"));insMap.put("echsyl", dmap.get("二次回水压力"));
        					   insMap.put("echswd", dmap.get("二次回水温度"));insMap.put("eccwhyl", dmap.get(""));
        					   insMap.put("snwd", dmap.get("室内温度"));insMap.put("xhb1fk", dmap.get("循环泵1频率反馈"));insMap.put("xhb2fk", dmap.get("循环泵2频率反馈"));
        					   insMap.put("bsb1fk", dmap.get("补水泵1频率反馈"));insMap.put("bsb2fk", dmap.get(""));insMap.put("tjfkdfk", dmap.get("调节阀反馈"));
        					   Date date = new Date();
        					   insMap.put("time", dateFormat.format(date));
        					   
        					   opcService.insertHistory(insMap);
    }      
    
	@Scheduled(cron="0 0 */1  * * ? ")   //每一小时执行一次   
    public void rbbTask(){      
		 ConnectionInformation ci=OPCConfiguration.getCLSIDConnectionInfomation();
	       final Server server = new Server ( ci, Executors.newSingleThreadScheduledExecutor () );
	       String[] d=DUtil.dsj(DUtil.ewz);
	       
	       Map<String,Object> dmap=new HashMap<String, Object>();
	       Map<String, Item> map = null;
            	     Group group = null;
            				try {
								server.connect ();
            					 group = server.addGroup ( "groupyx" );
            					 group.setActive ( true );
				                try {
									map = group.addItems(d);
								} catch (AddFailedException e) {
									// TODO Auto-generated catch block
									e.printStackTrace();
								}
							} catch (IllegalArgumentException e1) {
								// TODO Auto-generated catch block
								e1.printStackTrace();
							} catch (UnknownHostException e1) {
								// TODO Auto-generated catch block
								e1.printStackTrace();
							} catch (JIException e1) {
								// TODO Auto-generated catch block
								e1.printStackTrace();
							} catch (AlreadyConnectedException e1) {
								// TODO Auto-generated catch block
								e1.printStackTrace();
							} catch (NotConnectedException e) {
								// TODO Auto-generated catch block
								e.printStackTrace();
							} catch (DuplicateGroupException e) {
								// TODO Auto-generated catch block
								e.printStackTrace();
							}
            				
        					for (Entry<String, Item> temp : map.entrySet()) {
        						try {
        							Thread.sleep(100);
        						} catch (InterruptedException e) {
        							// TODO Auto-generated catch block
        							e.printStackTrace();
        						}
        					
								try {
									String id= temp.getValue().getId();
	        						Object value = temp.getValue().read(true).getValue().getObject();
	        						System.out.println("------------value----------"+value);
									 String[] a=id.split("读数据.");
						            	String key=a[1];
						            	if(key.contains("#")){
						            		key=key.replace("#", "");
						            	}
						            	boolean b=isNumeric(String.valueOf(value));
						            	System.out.println("------b---"+b);
						            	if(b==false){
						            		value = temp.getValue().read(true).getValue().getObject();
						            	}
						                  String s=String.format("%.1f",value);
						                  dmap.put(key, s);
								} catch (JIException e) {
									// TODO Auto-generated catch block
									e.printStackTrace();
								}
        						
        					}
        					
        					   server.dispose();
        					   
        					   Map<String, Object> insMap=new HashMap<>();
        					   
        					   insMap.put("hrz", "二委站"); 
        					   insMap.put("ycssgll", dmap.get("一次供水瞬时流量"));insMap.put("ycssgrl", dmap.get("一次供水瞬时热量"));insMap.put("ycljgll", dmap.get("一次供水累计流量"));
        					   insMap.put("ycljgrl", dmap.get("一次供水累计热量"));insMap.put("ycgsyl", dmap.get("一次供水压力"));insMap.put("ycgswd", dmap.get("一次供水温度"));
        					   insMap.put("ychsyl", dmap.get("一次回水压力"));insMap.put("ychswd", dmap.get("一次回水温度"));insMap.put("bbssll", dmap.get("补水瞬时流量"));
        					   insMap.put("bbljll", dmap.get("补水累计流量"));insMap.put("sxyw", dmap.get("水箱液位"));insMap.put("zlszbsl", dmap.get("自来水总补水量"));
        					   insMap.put("zdl", dmap.get("电量实际值"));insMap.put("Ady", dmap.get("A相电压值"));insMap.put("Bdy", dmap.get("B相电压值"));
        					   insMap.put("Cdy", dmap.get("A相电压值"));insMap.put("Adl", dmap.get("A相电流值"));insMap.put("Bdl", dmap.get("B相电流值"));
        					   insMap.put("Cdl", dmap.get("C相电流值"));insMap.put("ecgssll", dmap.get("二次供水瞬时流量"));insMap.put("ecgljll", dmap.get("二次供水累计流量"));
        					   insMap.put("ecgsyl", dmap.get("二次供水压力"));insMap.put("ecgswd", dmap.get("二次供水温度"));insMap.put("echsyl", dmap.get("二次回水压力"));
        					   insMap.put("echswd", dmap.get("二次回水温度"));insMap.put("eccwhyl", dmap.get(""));
        					   insMap.put("snwd", dmap.get("室内温度"));insMap.put("xhb1fk", dmap.get("循环泵1频率反馈"));insMap.put("xhb2fk", dmap.get("循环泵2频率反馈"));
        					   insMap.put("bsb1fk", dmap.get("补水泵1频率反馈"));insMap.put("bsb2fk", dmap.get(""));insMap.put("tjfkdfk", dmap.get("调节阀反馈"));
        					   Date date = new Date();
        					   insMap.put("time", dateFormat.format(date));
        					   
        					   opcService.insertRbb(insMap);
    }  
	
	
	@Scheduled(cron="0 0 12 * * ? ")   //每天12点执行一次  
    public void zybbTask(){      
		 ConnectionInformation ci=OPCConfiguration.getCLSIDConnectionInfomation();
	       final Server server = new Server ( ci, Executors.newSingleThreadScheduledExecutor () );
	       String[] d=DUtil.dsj(DUtil.ewz);
	       
	       Map<String,Object> dmap=new HashMap<String, Object>();
	       Map<String, Item> map = null;
            	     Group group = null;
            				try {
								server.connect ();
            					 group = server.addGroup ( "groupyx" );
            					 group.setActive ( true );
				                try {
									map = group.addItems(d);
								} catch (AddFailedException e) {
									// TODO Auto-generated catch block
									e.printStackTrace();
								}
							} catch (IllegalArgumentException e1) {
								// TODO Auto-generated catch block
								e1.printStackTrace();
							} catch (UnknownHostException e1) {
								// TODO Auto-generated catch block
								e1.printStackTrace();
							} catch (JIException e1) {
								// TODO Auto-generated catch block
								e1.printStackTrace();
							} catch (AlreadyConnectedException e1) {
								// TODO Auto-generated catch block
								e1.printStackTrace();
							} catch (NotConnectedException e) {
								// TODO Auto-generated catch block
								e.printStackTrace();
							} catch (DuplicateGroupException e) {
								// TODO Auto-generated catch block
								e.printStackTrace();
							}
            				
        					for (Entry<String, Item> temp : map.entrySet()) {
        						try {
        							Thread.sleep(100);
        						} catch (InterruptedException e) {
        							// TODO Auto-generated catch block
        							e.printStackTrace();
        						}
        					
								try {
									String id= temp.getValue().getId();
	        						Object value = temp.getValue().read(true).getValue().getObject();
	        						System.out.println("------------value----------"+value);
									 String[] a=id.split("读数据.");
						            	String key=a[1];
						            	if(key.contains("#")){
						            		key=key.replace("#", "");
						            	}
						            	boolean b=isNumeric(String.valueOf(value));
						            	System.out.println("------b---"+b);
						            	if(b==false){
						            		value = temp.getValue().read(true).getValue().getObject();
						            	}
						                  String s=String.format("%.1f",value);
						                  dmap.put(key, s);
								} catch (JIException e) {
									// TODO Auto-generated catch block
									e.printStackTrace();
								}
        						
        					}
        					
        					   server.dispose();
        					   
        					   Map<String, Object> insMap=new HashMap<>();
        					   
        					   insMap.put("hrz", "二委站"); 
        					   insMap.put("ycssgll", dmap.get("一次供水瞬时流量"));insMap.put("ycssgrl", dmap.get("一次供水瞬时热量"));insMap.put("ycljgll", dmap.get("一次供水累计流量"));
        					   insMap.put("ycljgrl", dmap.get("一次供水累计热量"));insMap.put("ycgsyl", dmap.get("一次供水压力"));insMap.put("ycgswd", dmap.get("一次供水温度"));
        					   insMap.put("ychsyl", dmap.get("一次回水压力"));insMap.put("ychswd", dmap.get("一次回水温度"));insMap.put("bbssll", dmap.get("补水瞬时流量"));
        					   insMap.put("bbljll", dmap.get("补水累计流量"));insMap.put("sxyw", dmap.get("水箱液位"));insMap.put("zlszbsl", dmap.get("自来水总补水量"));
        					   insMap.put("zdl", dmap.get("电量实际值"));insMap.put("Ady", dmap.get("A相电压值"));insMap.put("Bdy", dmap.get("B相电压值"));
        					   insMap.put("Cdy", dmap.get("A相电压值"));insMap.put("Adl", dmap.get("A相电流值"));insMap.put("Bdl", dmap.get("B相电流值"));
        					   insMap.put("Cdl", dmap.get("C相电流值"));insMap.put("ecgssll", dmap.get("二次供水瞬时流量"));insMap.put("ecgljll", dmap.get("二次供水累计流量"));
        					   insMap.put("ecgsyl", dmap.get("二次供水压力"));insMap.put("ecgswd", dmap.get("二次供水温度"));insMap.put("echsyl", dmap.get("二次回水压力"));
        					   insMap.put("echswd", dmap.get("二次回水温度"));insMap.put("eccwhyl", dmap.get(""));
        					   insMap.put("snwd", dmap.get("室内温度"));insMap.put("xhb1fk", dmap.get("循环泵1频率反馈"));insMap.put("xhb2fk", dmap.get("循环泵2频率反馈"));
        					   insMap.put("bsb1fk", dmap.get("补水泵1频率反馈"));insMap.put("bsb2fk", dmap.get(""));insMap.put("tjfkdfk", dmap.get("调节阀反馈"));
        					   Date date = new Date();
        					   insMap.put("time", dateFormat.format(date));
        					   
        					   opcService.insertZybb(insMap);
    }  
	
    @Scheduled(cron="0 0/10 * * * ? ")
	public void  bjxx() throws NotConnectedException, DuplicateGroupException, AddFailedException, UnsupportedEncodingException, JIException, IllegalArgumentException, UnknownHostException, AlreadyConnectedException{
		
       ConnectionInformation ci=OPCConfiguration.getCLSIDConnectionInfomation();
       final Server server = new Server ( ci, Executors.newSingleThreadScheduledExecutor () );
           String hrz="吉利.二委站.读数据.";
	       String[] d=DUtil.bjxx("吉利.二委站.读状态.");
	     
	      
	       Map<String, Item> map = null;
            	     Group group = null;
            				try {
								server.connect ();
            					 group = server.addGroup ( "groupyx" );
            					 group.setActive ( true );
				                map = group.addItems(d);
							} catch (IllegalArgumentException e1) {
								// TODO Auto-generated catch block
								e1.printStackTrace();
							} catch (UnknownHostException e1) {
								// TODO Auto-generated catch block
								e1.printStackTrace();
							} catch (JIException e1) {
								// TODO Auto-generated catch block
								e1.printStackTrace();
							} catch (AlreadyConnectedException e1) {
								// TODO Auto-generated catch block
								e1.printStackTrace();
							}
            				
        					for (Entry<String, Item> temp : map.entrySet()) {
        						try {
        							Thread.sleep(10);
        						} catch (InterruptedException e) {
        							// TODO Auto-generated catch block
        							e.printStackTrace();
        						}
        					
								try {
									String id= temp.getValue().getId();
	        						Object value = temp.getValue().read(true).getValue().getObject();
	        						System.out.println("------------value----------"+value);
									 String[] a=id.split("读状态.");
						            	String key=a[1];
						            	if(key.contains("#")){
						            		key=key.replace("#", "");
						            	}
						            		try {
												Thread.sleep(10);
											} catch (InterruptedException e) {
												// TODO Auto-generated catch block
												e.printStackTrace();
											}						           						            	
						            	String val =String.valueOf(value);
						            	
						            	if(val.equals("true")){
						            		Map<String, Object> pdMap = new HashMap<>();
						            		pdMap.put("hrz", "二委站");
						            		pdMap.put("bjlx", key);
						            		int count = opcService.pdbj(pdMap);
						            		if(count==0){
						            			Map<String, Object> insMap = new HashMap<>();
						            			insMap.put("hrz", "二委站");
						            			insMap.put("bjlx", key);
						            			opcService.InsertBjdl(insMap);
						            			Date t=temp.getValue().read(true).getTimestamp().getTime();
								                String time = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss ").format(t.getTime());
								                insMap.put("bjsj", time);
								                opcService.InsertBjxx(insMap);
						            		}
						            		
						            	}
						                 
						                  //dmap.put(key);
								} catch (JIException e) {
									// TODO Auto-generated catch block
									e.printStackTrace();
								}
        						
        					}
        					   server.dispose();        			                 			        				          
        					}
	
    @Scheduled(cron="0 0/5 * * * ? ")
	public void  updatebjxx() throws NotConnectedException, DuplicateGroupException, AddFailedException, UnsupportedEncodingException, JIException, IllegalArgumentException, UnknownHostException, AlreadyConnectedException{
		
       ConnectionInformation ci=OPCConfiguration.getCLSIDConnectionInfomation();
       final Server server = new Server ( ci, Executors.newSingleThreadScheduledExecutor () );
          
        					   
        					
        			          List<String> list =opcService.getbjdl("二委站");
        			          String[] kStrings = new String[list.size()];
        			          for (int i = 0; i < list.size(); i++) {
        			        	  kStrings[i]="吉利.二委站.读状态."+list.get(i);
								
							}
        			          
        			          Group group1 = null;
        			          Map<String, Item> map1 = null;
        			          
        			         server.connect ();
         					 group1 = server.addGroup ( "groupyx" );
         					 group1.setActive ( true );
				             map1 = group1.addItems(kStrings);
				             
				             for (Entry<String, Item> temp : map1.entrySet()) {
	        						try {
	        							Thread.sleep(10);
	        						} catch (InterruptedException e) {
	        							// TODO Auto-generated catch block
	        							e.printStackTrace();
	        						}
	        					
									try {
										String id= temp.getValue().getId();
		        						Object value = temp.getValue().read(true).getValue().getObject();
		        						System.out.println("------------value----------"+value);
										 String[] a=id.split("读状态.");
							            	String key=a[1];
							            	if(key.contains("#")){
							            		key=key.replace("#", "");
							            	}
							            		try {
													Thread.sleep(10);
												} catch (InterruptedException e) {
													// TODO Auto-generated catch block
													e.printStackTrace();
												}						           						            	
							            	String val =String.valueOf(value);
							            	if(val.equals("false")){
							            		Map<String, Object> updateMap = new HashMap<>();
							            		
							            		Date t=temp.getValue().read(true).getTimestamp().getTime();
								                String time = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss ").format(t.getTime());
								                updateMap.put("jcsj", time);
								                updateMap.put("hrz", "二委站");
								                updateMap.put("bjlx", key);
							            		opcService.UpdateBjxx(updateMap);
							            		opcService.DeleteBjdl(updateMap);
							            	}
							                 
							                  //dmap.put(key);
									} catch (JIException e) {
										// TODO Auto-generated catch block
										e.printStackTrace();
									}
	        						
	        					}server.dispose();
        					}
	
	 public boolean isNumeric(String value){
         Pattern pattern = Pattern.compile("-?[0-9]+.*[0-9]*");
         Matcher isNum = pattern.matcher(value);
         if( !isNum.matches() ){
             return false;
         }
         return true;
  }
	
}
