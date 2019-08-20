package com.hnzy.hot.util;

public class DUtil {
	public static final String jyjz="吉利.教育局站.读数据.";
	public static final String ywz="吉利.一委站.读数据.";
	public static final String ewz="吉利.二委站.读数据.";
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

	private static String btgz="泵体故障";
	private static String btjcgq="泵体及传感器故障";
	private static String bsb1gz="补水泵1故障";
	private static String bsb1wdbjsx="补水泵1温度报警上限";
	private static String bsb1wdbjxx="补水泵1温度报警下限";
	private static String bsb1ycjd="补水泵1远程就地";
	private static String bsb2gz="补水泵2故障";
	private static String bsb2wdbjsx="补水泵2温度报警上限";
	private static String bsb2wdbjxx="补水泵2温度报警下限";
	private static String dbAxbj="电表A项报警";
	private static String dbBxbj="电表B项报警";
	private static String dbCxbj="电表C项报警";
	private static String ecgscwbj="二次供水超温报警";
	private static String ecgswdbjsx="二次供水温度报警上限";
	private static String ecgswdbjxx="二次供水温度报警下限";
	private static String ecgsylbjsx="二次供水压力报警上限";
	private static String ecgsylbjxx="二次供水压力报警下限";
	
	private static String echswdbjsx="二次回水温度报警上限";
	private static String echswdbjxx="二次回水温度报警下限";
	private static String echsylbjsx="二次回水压力报警上限";
	private static String echsylbjxx="二次回水压力报警下限";
	private static String ecgssycgqgz="二水供水压传感器故障";
	private static String echssycgqgz="二水回水压传感器故障";
	private static String gzzs="故障指示";
	private static String lnb1gz="冷凝泵1故障";
	private static String lnb1ycjd="冷凝泵1远程就地";
	private static String lnb2gz="冷凝泵2故障";
	private static String lnsylbjsx="冷凝水压力报警上限";
	private static String lnsylbjxx="冷凝水压力报警下限";
	
	private static String lnycgqgz="冷凝压传感器故障";
	private static String snwdsxbj="室内温度上限报警";
	private static String snwdxxbj="室内温度下限报警";
	private static String sxywcgqgz="水箱液位传感器故障";
	private static String sxywgd="水箱液位过低";
	private static String tjfnjsx="调节阀报警上限";
	private static String tjfnjxx="调节阀报警下限";
	private static String tjfycjd="调节阀远程就地";
	private static String wdcxgz="温度超限故障";
	private static String xyfycjd="泄压阀远程就地";
	private static String xyfzt="泄压阀状态";
	private static String xhb1gz="循环泵1故障";
	private static String xhb1wdbjsx="循环泵1温度报警上限";
	private static String xhb1wdbjxx="循环泵1温度报警下限";
	private static String xhb1ycjd="循环泵1远程就地";
	private static String xhb2gz="循环泵2故障";
	private static String xhb2wdbjsx="循环泵2温度报警上限";
	private static String xhb2wdbjxx="循环泵2温度报警下限";
	private static String xhb2ycjd="循环泵2远程就地";
	private static String ylcxgz="压力超限故障";
	private static String ylcgqgz="压力传感器故障";
	private static String ywbj="烟雾报警";
	private static String ywbjsx="液位报警上限";
	private static String ywbjxx="液位报警下限";
	private static String ycgswdbjsx="一次供水温度报警上限";
	private static String ycgswdbjxx="一次供水温度报警下限";
	private static String ycgsylbjsx="一次供水压力报警上限";
	private static String ycgsylbjxx="一次供水压力报警下限";
	private static String ychswdbjsx="一次回水温度报警上限";
	private static String ychswdbjxx="一次回水温度报警下限";
	private static String ychsylbjsx="一次回水压力报警上限";
	private static String ychsylbjxx="一次回水压力报警下限";
	
	private static String ycgssycgqgz="一水供水压传感器故障";
	private static String ychssycgqgz="一水回水压传感器故障";
	private static String zlsfycjd="自来水阀远程就地";
	private static String zlsfzt="自来水阀状态";
	private static String zlsylbjsx="自来水压力报警上限";
	private static String zlsylcgqgz="自来水压力传感器故障";
	private static String zlsylbjxx="自来水压力报警下限";
	
	
	
	
//	private static String ssrl="北京华誉.新乡商务大厦.读数据.瞬时热量";//瞬时热量
	//总图显示
	public static String[] dsj(String zm){
	  String[] str=new String[]{zm+ycgswd,zm+ycgsyl,zm+ycgsssll,zm+ycgsssrl,zm+ycgsljll,zm+ycgsljrl,zm+ecgsssll,zm+ecgsljll,zm+ecgswd,
			  zm+ecgsyl,zm+ychswd,zm+ychsyl,zm+echswd,zm+echsyl,zm+xhb1plfk,zm+xhb2plfk,zm+zlszbsl,zm+bsssll,zm+bsljll,zm+bsb1plfk,
			zm+dlsjz,zm+Axdlz,zm+Axdyz,zm+Bxdlz,zm+Bxdyz,zm+Cxdlz,zm+Cxdyz,zm+sxyw,zm+snwd,zm+tjffk};
		return str;
	}
	public static String[] ssqx(String zm){
		  String[] str=new String[]{zm+ycgswd,zm+ycgsyl,zm+ecgsyl,zm+ecgswd,zm+echsyl,zm+echswd,zm+ychswd,zm+ychsyl};
			return str;
	}
	
	public static String[] qxsj(String zm){
		String[] str=new String[]{zm+ecgswd,zm+ecgsyl,zm+echsyl,zm+echswd,zm+ycgswd,zm+ycgsyl,zm+ychsyl,zm+ychswd,zm+snwd};
		return str;
	}
		
	public static String[] bjxx(String zm){
		String[] str=new String[]{zm+btgz,zm+btjcgq,zm+bsb1gz,zm+bsb1wdbjsx,zm+bsb1wdbjxx,zm+bsb2gz,zm+bsb2wdbjsx,
				zm+bsb2wdbjxx,zm+dbAxbj,zm+dbBxbj,zm+dbCxbj,zm+ecgscwbj,zm+ecgswdbjsx,zm+ecgswdbjxx,zm+ecgsylbjsx,
				zm+ecgsylbjxx,zm+echswdbjsx,zm+echswdbjxx,zm+echsylbjsx,zm+echsylbjxx,zm+ecgssycgqgz,zm+echssycgqgz,zm+gzzs,
				zm+lnb1gz,zm+lnb2gz,zm+lnsylbjsx,zm+lnsylbjxx,zm+lnycgqgz,zm+snwdsxbj,zm+snwdxxbj,zm+sxywcgqgz,
				zm+sxywgd,zm+tjfnjsx,zm+tjfnjxx,zm+wdcxgz,zm+xhb1gz,zm+xhb1wdbjsx,zm+xhb1wdbjxx,zm+xhb2gz,
				zm+xhb2wdbjsx,zm+xhb2wdbjxx,zm+ylcxgz,zm+ylcgqgz,zm+ywbj,zm+ywbjsx,zm+ywbjxx,zm+ycgswdbjsx,
				zm+ychssycgqgz,zm+zlsfycjd,zm+zlsylbjsx,zm+zlsylcgqgz,zm+zlsylbjxx,zm+zlsylbjxx,
				zm+ycgswdbjxx,zm+ycgsylbjsx,zm+ycgsylbjxx,zm+ychswdbjsx,zm+ychswdbjxx,zm+ychsylbjsx,zm+ychsylbjxx,zm+ycgssycgqgz};
		return str;
	}
	
	public static String[] dyxcs(String zm){
		String[] str=new String[]{zm+ecgswd,zm+ecgsyl,zm+echsyl};
			return str;
		}
	
	public static String[] ryjk(String zm){
		  String[] str=new String[]{zm+ycgswd,zm+ychswd,zm+ycgsssll,zm+ycgsssrl,zm+ycgsljll,zm+ycgsljrl};
			return str;
		}
	
	
}
