package com.hnzy.hot.util;

public class XUtil {
	public static final String jyjz="吉利.教育局站.写数据.";
	
	private static String bcwd1="补偿温度1";
	private static String bcwd2="补偿温度2";
	private static String bcwd3="补偿温度3";
	private static String bcwd4="补偿温度4";
	private static String bsb1plsd="补水泵1频率设定";
	private static String dyjbjcz="电压报警解除值";
	private static String ecgswd1="二次供水温度1";	private static String ecgswd5="二次供水温度5";
	private static String ecgswd2="二次供水温度2";	private static String ecgswd6="二次供水温度6";
	private static String ecgswd3="二次供水温度3";	private static String ecgswd7="二次供水温度7";
	private static String ecgswd4="二次供水温度4";	private static String ecgswd8="二次供水温度8";	
	private static String ecgswdsx="二次供水温度上限"; private static String ecgswdxx="二次供水温度下限";	
	private static String ecgsylsx="二次供水压力上限"; private static String ecgsylxx="二次供水压力下限";	
	private static String ecgsylsdz="二次供水压力设定值";
	private static String echsbsylsx="二次回水补水压力上限"; private static String echsbsylxx="二次回水补水压力下限";	
	private static String echstjyl="二次回水停机压力";	
	private static String echswdsx="二次回水温度上限";  private static String echswdxx="二次回水温度下限";	
	private static String echswdsdz="二次回水温度设定值"; 	
	private static String echsylsx="二次回水压力上限";  private static String echsylxx="二次回水压力下限";
	private static String echsylsdz="二次回水压力设定值";
	private static String fmkdsd="阀门开度设定";
	private static String gbtjfsj="关闭调节阀时间";private static String kqtjfsj="开启调节阀时间";	
	private static String lnbqdsx="冷凝泵启动上限";private static String lnbtzxx="冷凝泵停止下限";	
	private static String lnhylsx="冷凝水压力上限";private static String lnhylxx="冷凝水压力下限";
	private static String qdgpbsbpl="启动工频补水泵频率";
	private static String qgpbsbsj="启动工频补水泵时间";
	private static String tzgpbsbpl="停止工频补水泵频率";
	private static String tzgpbsbsj="停止工频补水泵时间";
	private static String dybjjxz="欠压报警界限值";
	private static String snwdsx="室内温度上限";private static String snwdxx="室内温度下限";
	private static String tjfzdkd="调节阀最低开度";
	private static String xyylsx="泄压压力上限";private static String xyylxx="泄压压力下限";
	private static String xhb1plsd="循环泵1频率设定";private static String xhb2plsd="循环泵2频率设定";
	private static String ywqdxx="液位启动下限"; private static String ywsx="液位上限";private static String ywxx="液位下限";
	private static String ywxxx="液位下下限";
	private static String ywtzsx="液位停止上限";
	private static String ycgswdsx="一次供水温度上限";private static String ycgswdxx="一次供水温度下限";
	private static String ycgsylsx="一次供水压力上限";private static String ycgsylxx="一次供水压力下限";
	private static String ychswdsx="一次回水温度上限";private static String ychswdxx="一次回水温度下限";
	private static String ychsylsx="一次回水压力上限";private static String ychsylxx="一次回水压力下限";
	private static String sjdf1="时间段分1";private static String sjdf2="时间段分2";
	private static String sjdf3="时间段分3";private static String sjdf4="时间段分4";
	private static String sjds1="时间段时1";private static String sjds2="时间段时2";
	private static String sjds3="时间段时3";private static String sjds4="时间段时4";
	
	private static String swwd1="室外温度1";private static String swwd2="室外温度2";
	private static String swwd3="室外温度3";private static String swwd4="室外温度4";
	private static String swwd5="室外温度5";private static String swwd6="室外温度6";
	private static String swwd7="室外温度7";private static String swwd8="室外温度8";
	
	
	
	
	
	
	
	
	
	
//	private static String ssrl="北京华誉.新乡商务大厦.读数据.瞬时热量";//瞬时热量
	//总图显示
	public static String[] csxs(String zm){
	  String[] str=new String[]{zm+ycgsylsx,zm+ycgsylxx,zm+ycgswdsx,zm+ycgswdxx,zm+ychsylsx,zm+ychsylxx,zm+ychswdsx,zm+ychswdxx,zm+ecgsylsx,
			  zm+ecgsylxx,zm+ecgswdsx,zm+ecgswdxx,zm+echswdsx,zm+echswdxx,zm+echsylsx,zm+echsylxx,zm+ywsx,zm+ywxx,zm+dyjbjcz,zm+echswdsdz,
			zm+ecgsylsdz,zm+echsylsdz,zm+echsbsylsx,zm+echsbsylxx,zm+kqtjfsj,zm+gbtjfsj,zm+qdgpbsbpl,zm+dybjjxz,zm+qgpbsbsj,zm+xyylsx,
			zm+xyylxx,zm+echstjyl,zm+ywxxx,zm+tzgpbsbpl,zm+tzgpbsbsj,zm+tjfzdkd};
		return str;
	}
	
	public static String[] qhbc(String zm){
		  String[] str=new String[]{zm+bcwd1,zm+bcwd2,zm+bcwd3,zm+bcwd4,zm+ecgswd1,zm+ecgswd2,zm+ecgswd3,zm+ecgswd4,zm+ecgswd5,zm+ecgswd6,zm+ecgswd7,
				  zm+ecgswd8,zm+sjdf1,zm+sjdf2,zm+sjdf3,zm+sjdf4,zm+sjds1,zm+sjds2,zm+sjds3,zm+sjds4,zm+swwd1,zm+swwd2,zm+swwd3,zm+swwd4,
				  zm+swwd5,zm+swwd6,zm+swwd7,zm+swwd8,};
			return str;
		}
	
}
