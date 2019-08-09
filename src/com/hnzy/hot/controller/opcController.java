package com.hnzy.hot.controller;

import java.io.UnsupportedEncodingException;
import java.net.UnknownHostException;
import java.util.ArrayList;
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
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hnzy.hot.util.DUtil;
import com.hnzy.hot.util.OPCConfiguration;

import net.sf.json.JSONObject;

@RequestMapping("OpcCon")
@Controller
public class opcController {

	 public boolean isNumeric(String value){
         Pattern pattern = Pattern.compile("-?[0-9]+.*[0-9]*");
         Matcher isNum = pattern.matcher(value);
         if( !isNum.matches() ){
             return false;
         }
         return true;
  }
	//定时调用数据
	@RequestMapping("xtkzSj")
	@ResponseBody
	public JSONObject xtkzSj(String hrz) throws NotConnectedException, DuplicateGroupException, AddFailedException, UnsupportedEncodingException{
				JSONObject json=new JSONObject();
		       ConnectionInformation ci=OPCConfiguration.getCLSIDConnectionInfomation();
		       final Server server = new Server ( ci, Executors.newSingleThreadScheduledExecutor () );
		       hrz=new String(hrz.getBytes("ISO-8859-1"),"utf-8");
		       System.out.println(hrz);
			       String[] d=DUtil.dsj(hrz);
			     
			       Map<String,Object> dmap=new HashMap<String, Object>();
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
								            		try {
														Thread.sleep(500);
													} catch (InterruptedException e) {
														// TODO Auto-generated catch block
														e.printStackTrace();
													}
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
		        					 
		        					  hrz=hrz.replace("吉利.", "");
		        					  hrz=hrz.replace(".读数据.", "");
		        					   dmap.put("hrz", hrz);
		        			            json.put("map", dmap);
		        			            return json;
		        					}
}
