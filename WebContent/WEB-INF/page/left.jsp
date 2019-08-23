<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>     


<!-- Required Stylesheets -->
<link rel="stylesheet" type="text/css" href="../css/reset.css" media="screen" />
<link rel="stylesheet" type="text/css" href="../css/text.css" media="screen" />
<link rel="stylesheet" type="text/css" href="../css/fonts/ptsans/stylesheet.css" media="screen" />
<link rel="stylesheet" type="text/css" href="../css/fluid.css" media="screen" />

<link rel="stylesheet" type="text/css" href="../css/mws.style.css" media="screen" />
<link rel="stylesheet" type="text/css" href="../css/icons/icons.css" media="screen" />

<!-- Demo and Plugin Stylesheets -->
<link rel="stylesheet" type="text/css" href="../css/demo.css" media="screen" />

<link rel="stylesheet" type="text/css" href="../plugins/colorpicker/colorpicker.css" media="screen" />
<link rel="stylesheet" type="text/css" href="../plugins/jimgareaselect/css/imgareaselect-default.css" media="screen" />
<link rel="stylesheet" type="text/css" href="../plugins/fullcalendar/fullcalendar.css" media="screen" />
<link rel="stylesheet" type="text/css" href="../plugins/fullcalendar/fullcalendar.print.css" media="print" />
<link rel="stylesheet" type="text/css" href="../plugins/tipsy/tipsy.css" media="screen" />
<link rel="stylesheet" type="text/css" href="../plugins/sourcerer/Sourcerer-1.2.css" media="screen" />
<link rel="stylesheet" type="text/css" href="../plugins/jgrowl/jquery.jgrowl.css" media="screen" />
<link rel="stylesheet" type="text/css" href="../plugins/spinner/spinner.css" media="screen" />
<link rel="stylesheet" type="text/css" href="../css/jui/jquery.ui.css" media="screen" />

<!-- Theme Stylesheet -->
<link rel="stylesheet" type="text/css" href="../css/mws.theme.css" media="screen" />

<!-- JavaScript Plugins -->

<script type="text/javascript" src="../js/jquery-1.7.1.min.js"></script>

<script type="text/javascript" src="../plugins/jimgareaselect/jquery.imgareaselect.min.js"></script>
<script type="text/javascript" src="../plugins/jquery.dualListBox-1.3.min.js"></script>
<script type="text/javascript" src="../plugins/jgrowl/jquery.jgrowl.js"></script>
<script type="text/javascript" src="../plugins/jquery.filestyle.js"></script>
<script type="text/javascript" src="../plugins/fullcalendar/fullcalendar.min.js"></script>
<script type="text/javascript" src="../plugins/jquery.dataTables.js"></script>

<script type="text/javascript" src="../plugins/flot/jquery.flot.min.js"></script>
<script type="text/javascript" src="../plugins/flot/jquery.flot.pie.min.js"></script>
<script type="text/javascript" src="../plugins/flot/jquery.flot.stack.min.js"></script>
<script type="text/javascript" src="../plugins/flot/jquery.flot.resize.min.js"></script>
<script type="text/javascript" src="../plugins/colorpicker/colorpicker.js"></script>
<script type="text/javascript" src="../plugins/tipsy/jquery.tipsy.js"></script>
<script type="text/javascript" src="../plugins/sourcerer/Sourcerer-1.2.js"></script>
<script type="text/javascript" src="../plugins/jquery.placeholder.js"></script>
<script type="text/javascript" src="../plugins/jquery.validate.js"></script>
<script type="text/javascript" src="../plugins/jquery.mousewheel.js"></script>
<script type="text/javascript" src="../plugins/spinner/ui.spinner.js"></script>
<script type="text/javascript" src="../js/jquery-ui.js"></script>
<!-- <script type="text/javascript" src="../js/jquery-1.9.js"></script> -->

<script type="text/javascript" src="../js/mws.js"></script>
<script type="text/javascript" src="../js/demo.js"></script>
<script type="text/javascript" src="../js/themer.js"></script>
<!-- <script type="text/javascript" src="../js/jquery.ztree.core.js"></script> -->

<script type="text/javascript" src="../js/demo.dashboard.js"></script>

<script type="text/javascript" src="../js/left.js"></script>

 <script type="text/javascript">


function canssz(){// 
	    window.open("<%=basePath%>user/canssz.action","Conframe");
	} 
	

function xtkz(){// 
    window.open("<%=basePath%>user/xtkz.action", "Conframe");
} 

function sssj(){// 
    window.open("<%=basePath%>user/sssj.action", "Conframe");
} 

function lssj(){// 
    window.open("<%=basePath%>user/lssj.action", "Conframe");
} 

function tjfx(){// 
    window.open("<%=basePath%>tjfxCon/tjfx.action", "Conframe");
} 

function bjxx(){// 
    window.open("<%=basePath%>user/bjxx.action", "Conframe");
} 

function zdxx(){// 
    window.open("<%=basePath%>user/xzzj.action", "Conframe");
} 

function map(){// 
    window.open("<%=basePath%>MapCon/Map.action", "Conframe");
}

/* 知识库 */
function qiytl(){// 
    window.open("<%=basePath%>user/qiytl.action?type=企业条例", "Conframe");
} 
function guojfg(){// 
	window.open("<%=basePath%>user/guojfg.action?type=国家法规", "Conframe");
} 
function hangyzs(){// 
	window.open("<%=basePath%>user/hangyzs.action?type=行业知识", "Conframe");
} 
function xitsm(){// 
	window.open("<%=basePath%>user/xitsm.action?type=系统说明", "Conframe");
} 
function wentjd(){// 
	window.open("<%=basePath%>user/wentjd.action?type=问题解答", "Conframe");
} 
 	/* 员工定位 */
function shisdw(){// 
	window.open("<%=basePath%>user/shisdw.action","Conframe");
} 
function lisgj(){// 
	window.open("<%=basePath%>user/lisgj.action","Conframe");
} 

function bpxx(){// 
	window.open("<%=basePath%>user/bpxx.action","Conframe");
} 

function sdrfx(){// 
	window.open("<%=basePath%>user/sdrfx.action","Conframe");
} 
function gryc(){// 
	window.open("<%=basePath%>user/gryc.action","Conframe");
} 
function rcwh(){// 
	window.open("<%=basePath%>user/rcwh.action","Conframe");
} 
function tqyb1(){// 
	window.open("<%=basePath%>user/tqyb1.action","Conframe");
} 

function qiangxiu(){// 
	window.open("<%=basePath%>user/qiangxiu.action","Conframe");
} 

function gaizao(){// 
	window.open("<%=basePath%>user/gaizao.action","Conframe");
} 

function shebwh(){// 
	window.open("<%=basePath%>user/shebwh.action","Conframe");
} 
function rbb(){// 
	window.open("<%=basePath%>user/rbb.action","Conframe");
} 

function zbb(){// 
	window.open("<%=basePath%>user/zbb.action","Conframe");
} 

function ybb(){// 
	window.open("<%=basePath%>user/ybb.action","Conframe");
} 
function grmx(){// 
	window.open("<%=basePath%>user/grmx.action","Conframe");
} 

function sbwhjl(){// 
	window.open("<%=basePath%>user/sbwhjl.action","Conframe");
} 
function dbjc(){// 
	window.open("<%=basePath%>user/dbjc.action","Conframe");
} 
function gwjg(){// 
	window.open("<%=basePath%>user/gwjg.action","Conframe");
}

function ddkz(){// 
    window.open("<%=basePath%>user/ddkz.action", "Conframe");
} 
function qhbc(){// 
    window.open("<%=basePath%>user/qhbc.action", "Conframe");
} 

function ygrl(){// 
    window.open("<%=basePath%>user/ygrl.action", "Conframe");
} 
function hrzxx(){// 
    window.open("<%=basePath%>OpcCon/hrzxx.action", "Conframe");
} 

function ryjk(){// 
	window.open("<%=basePath%>user/ryjk.action","Conframe");
} 
</script>
	<style>
        ul.ac_kf li a{
	        border-radius:6px;
	        cursor:pointer;
        }
        ul.ac_kf li a:hover{
        	background-color:rgba(197,213,43,0.1);
        }
      
      	#tab{
      		margin:0 auto;
      	}

    </style>


<body>
  <div id="mws-wrapper">
       <!--  必要的标记，不要删除 -->
           <div id="mws-sidebar-stitch"></div>
           <div id="mws-sidebar-bg"></div>
           <!-- 左边侧栏包装器 -->
            <div id="mws-navigation">
            	<ul>
            	
                    <!-- <li class="active">
                    	<a href="#" class="mws-i-24 i-users">换热站</a>
                          <ul class="ac_kf"> 
                                <li><a class="first-a" onclick="map()" target="Conframel">&nbsp;&nbsp;&nbsp;&nbsp;首页</a></li>
                    	        <li><a class="first-a" onclick="xtkz()" target="Conframel">&nbsp;&nbsp;&nbsp;&nbsp;系统控制</a></li>
                        	   
                             	<li><a onclick="sssj()" target="Conframel">&nbsp;&nbsp;&nbsp;&nbsp;实时数据</a></li>
                             	<li><a onclick="lssj()" target="Conframel">&nbsp;&nbsp;&nbsp;&nbsp;历史数据</a></li>
                             	
                             	
                             	<li><a onclick="tjfx()" target="Conframel">&nbsp;&nbsp;&nbsp;&nbsp;统计分析</a></li>
                             	
                             	
                        </ul>
                    </li> -->
                    <li class="active">
                    	<a href="#" class="mws-i-24 i-users">运行管理</a>
                          <ul class="ac_kf"> 
                                <li><a class="first-a" onclick="map()" target="Conframel">&nbsp;&nbsp;&nbsp;&nbsp;站点总览</a></li>
                    	        <li><a onclick="xtkz()" target="Conframel">&nbsp;&nbsp;&nbsp;&nbsp;运行设备</a></li>
                    	      <!--   <li><a onclick="dbjc()" target="Conframel">&nbsp;&nbsp;&nbsp;&nbsp;大表集抄</a></li> -->
                    	        <li><a onclick="ryjk()" target="Conframel">&nbsp;&nbsp;&nbsp;&nbsp;热表监控</a></li>
                    	         <li><a onclick="ddkz()" target="Conframel">&nbsp;&nbsp;&nbsp;&nbsp;调度控制</a></li> 
                             	
                             	

                        </ul>
                    </li>
              <li class="active"><a href="#" class="mws-i-24 i-users">参数设定</a>
					<ul class="ac_kf">
						

						<li><a onclick="canssz()" target="Conframel">&nbsp;&nbsp;&nbsp;&nbsp;参数设置</a></li>
                        <li><a onclick="qhbc()" target="Conframel">&nbsp;&nbsp;&nbsp;&nbsp;气候补偿</a></li>
					</ul></li>

				<li class="active"><a href="#" class="mws-i-24 i-users">监控分析</a>
					<ul class="ac_kf">
					<li><a onclick="tjfx()" target="Conframel">&nbsp;&nbsp;&nbsp;&nbsp;数据曲线</a></li>
						<li><a onclick="tqyb1()" target="Conframel">&nbsp;&nbsp;&nbsp;&nbsp;天气预报</a></li>
						<li><a onclick="lssj()" target="Conframel">&nbsp;&nbsp;&nbsp;&nbsp;历史数据</a></li>
						<li><a onclick="sssj()" target="Conframel">&nbsp;&nbsp;&nbsp;&nbsp;实时数据</a></li>
						<li><a onclick="bjxx()" target="Conframel">&nbsp;&nbsp;&nbsp;&nbsp;报警信息</a></li>
						

						

					</ul></li>
				<li class="active"><a href="#" class="mws-i-24 i-users">能耗分析</a>
					<ul class="ac_kf">
					
						<li><a onclick="sdrfx()" target="Conframel">&nbsp;&nbsp;&nbsp;&nbsp;水电热分析</a></li>
						<li><a onclick="ygrl()" target="Conframel">&nbsp;&nbsp;&nbsp;&nbsp;供热分析</a></li>
						<li><a onclick="grmx()" target="Conframel">&nbsp;&nbsp;&nbsp;&nbsp;供热模型</a></li>
                        <li><a onclick="gryc()" target="Conframel">&nbsp;&nbsp;&nbsp;&nbsp;供热预测</a></li>
						

					</ul></li>	
					<li class="active">
                    	<a href="#" class="mws-i-24 i-users">报表管理</a>
                          <ul class="ac_kf"> 

                              
                        	   
                          <li><a onclick="rbb()" target="Conframel">&nbsp;&nbsp;&nbsp;&nbsp;日报表</a></li>

						<li><a onclick="zbb()" target="Conframel">&nbsp;&nbsp;&nbsp;&nbsp;周报表</a></li>
						<li><a onclick="ybb()" target="Conframel">&nbsp;&nbsp;&nbsp;&nbsp;月报表</a></li>
                             
                        </ul>
                    </li>
					
				<li class="active">
                    	<a href="#" class="mws-i-24 i-users">基础信息管理</a>
                          <ul class="ac_kf"> 

                               <!--  <li><a onclick="zdxx()" target="Conframel">&nbsp;&nbsp;&nbsp;&nbsp;能源设备信息库</a></li> -->

                    	        <li><a  onclick="hrzxx()" target="Conframel">&nbsp;&nbsp;&nbsp;&nbsp;换热站信息</a></li>
                        	   
                     
                             
                        </ul>
                    </li>
                                                                             					
                </ul>
               
            </div>

            </div>

	
	    
<script type="text/javascript">
		$(".ac_kf li a").click(function(){
			$(".ac_kf li a").css("cssText","color:#fff !important;");
			$(this).css("cssText","color:#C5D52B !important;");
		});
	
	
</script>
	
</body>
</html>