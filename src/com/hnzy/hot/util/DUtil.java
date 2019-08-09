package com.hnzy.hot.util;

public class DUtil {
	public static final String jyjz="吉利.教育局站.读数据.";
	
	private static String Axdlz="A相电流值";
	private static String Axdyz="A相电压值";
	private static String Bxdlz="B相电流值";
	private static String Bxdyz="B相电压值";
	private static String Cxdlz="C相电流值";
	private static String Cxdyz="C相电压值";
	private static String dlsjz="电量实际值";
	
	private static String ycgsljll="一次供水累计流量";
	private static String ycgsljrl="一次供水累计热量";
	private static String ycgsssll="一次供水瞬时流量";
	private static String ycgsssrl="一次供水瞬时热量";
	
	private static String ecgsljll="二次供水累计流量";
	
	private static String ecgsssll="二次供水瞬时流量";
	private static String bsb1plfk="补水泵1频率反馈";
	private static String bsb1wd="补水泵1温度";
	private static String bsb2wd="补水泵2温度";
	private static String bsljll="补水累计流量";
	private static String bsssll="补水瞬时流量";
	private static String ecgsyl="二次供水压力";
	private static String ecgswd="二次供水温度";
	private static String echsyl="二次回水压力";
	private static String echswd="二次回水温度";
	private static String snwd="室内温度";
	private static String sxyw="水箱液位";
	private static String tjffk="调节阀反馈";
	private static String xhb1plfk="循环泵1频率反馈";
	private static String xhb1wd="循环泵1温度";
	private static String xhb2plfk="循环泵2频率反馈";
	private static String xhb2wd="循环泵2温度";
	
	private static String ycgswd="一次供水温度";
	private static String ycgsyl="一次供水压力";
	private static String ychswd="一次回水温度";
	private static String ychsyl="一次回水压力";
	
	private static String zlsyl="自来水压力";
	private static String zlszbsl="自来水总补水量";

	
	
//	private static String ssrl="北京华誉.新乡商务大厦.读数据.瞬时热量";//瞬时热量
	//总图显示
	public static String[] dsj(String zm){
	  String[] str=new String[]{zm+ycgswd,zm+ycgsyl,zm+ycgsssll,zm+ycgsssrl,zm+ycgsljll,zm+ycgsljrl,zm+ecgsssll,zm+ecgsljll,zm+ecgswd,
			  zm+ecgsyl,zm+ychswd,zm+ychsyl,zm+echswd,zm+echsyl,zm+xhb1plfk,zm+xhb2plfk,zm+zlszbsl,zm+bsssll,zm+bsljll,zm+bsb1plfk,
			zm+dlsjz,zm+Axdlz,zm+Axdyz,zm+Bxdlz,zm+Bxdyz,zm+Cxdlz,zm+Cxdyz,zm+sxyw,zm+snwd,zm+tjffk};
		return str;
	}
	
	
	
	//参数设定
	/*public static String[] csxs(){
		  String[] str=new String[]{ssll,ljrl,zdl,cxdy,caxdy,hswd,cxdl,bsljll,ghsyc,ssrl,gswd,axdy,abxdy,axdl,
				  sxyw,gsyl,xhbpl,ljll,gswd,bxdy,bcxdy,hsyl,bxdl,bsssll,gsyl,lcwd1,ljwd1,rcwd1,rjwd1,lcwd2,ljwd2,rcwd2,rjwd2,lcwd3
					,ljwd3,rcwd3,rjwd3,lcwd4,ljwd4,rcwd4,rjwd4};
			return str;
		}*/
}
