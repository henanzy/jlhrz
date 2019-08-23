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
<title>换热站</title>

<!-- Required Stylesheets -->
<link rel="stylesheet" type="text/css" href="../css/reset.css" media="screen" />
<link rel="stylesheet" type="text/css" href="../css/text.css" media="screen" />
<link rel="stylesheet" type="text/css" href="../css/fonts/ptsans/stylesheet.css" media="screen" />
<link rel="stylesheet" type="text/css" href="../css/fluid.css" media="screen" />

<link rel="stylesheet" type="text/css" href="../js/layer/2.4/skin/layer.css" media="screen" />
<script type="text/javascript" src="../js/layer/2.4/layer.js"></script>
<script type="text/javascript" src="../js/layui/layui.js"></script>
<script type="text/javascript" src="../js/layui/layui.all.js"></script>
<link rel="stylesheet" type="text/css" href="../js/layui/css/layui.css" media="screen" />
<link rel="stylesheet" type="text/css" href="../css/mws.style.css" media="screen" />
<link rel="stylesheet" type="text/css" href="../css/icons/icons.css"  />
<link rel="stylesheet" type="text/css" href="../css/admin-all.css"media="screen" /> 

<link rel="stylesheet" type="text/css" href="../css/mws.theme.css" media="screen" />


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

<script type="text/javascript" src="../js/mws.js"></script>
<script type="text/javascript" src="../js/demo.js"></script>
<script type="text/javascript" src="../js/themer.js"></script>
<!-- <script type="text/javascript">
var yhInfoj=${yhInfo};
var tel=${tel}
alert(yhInfoj);
</script> -->

<!-- 来电即时信息 -->
<style>
.layui-layer-close{
background-color: #C5D52B
}
td
{
    text-align:center;
}
fieldset {
    width:350px;
	margin: 0px; 
	padding:6px; 
	border:1px solid  #3E403C; 
	text-align:left;
} 
legend {
	color: #3E403C;
	font-weight:800; 
	padding:3px 6px;	
} 

	
.table-th-css {
		position: relative !important;
		top: 0;
	}	

#increase_word
	{
		display:none; 
		position: fixed; 
		left: 0;
	    top:0;
	    right:0;
	    bottom:0;
	    z-index: 100;
		background-color:white;
	} 
.alert-skin .layui-layer-title  {
  background-color: #333;
  color: #C5D52B;
}
body .alert-skin{background: rgba(255,255,255,0.6); }
</style>


<script type="text/javascript" src="../js/swfobject.js"></script>

<script type="text/javascript">
</script>


 <script type="text/html" id="pswModel">
    <form id="pswForm" class="layui-form model-form" action="" method="PUT">

     
        <div class="layui-form-item">
            <label class="layui-form-label">用户名</label>
            <div class="layui-input-block">
                <input style="width:200px" autocomplete="off" id="username" readonly="readonly" name="username" value="${UserName}" class="layui-input" maxlength="12"
                       lay-verify="required" required/>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">旧密码</label>
            <div class="layui-input-block">
                <input style="width:200px" autocomplete="off" id="oldpassword" name="oldpassword" placeholder="请输入旧密码" type="password" class="layui-input" maxlength="12"
                       lay-verify="required" required/>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">新密码</label>
            <div class="layui-input-block">
                <input style="width:200px" autocomplete="off" id="newpassword" name="newpassword" placeholder="请输入新密码" type="password" class="layui-input" maxlength="12"
                       lay-verify="required|pass" required/>
            </div>
        </div>
        
        <div class="layui-form-item model-form-footer" style="margin-left:130px">
            <button class="layui-btn layui-btn-primary" type="button" id="pswCancel">取消</button>
            <button class="layui-btn layui-btn-normal" id="pswSubmit" >修改</button>
        </div>
    </form>

</script>
<script type="text/html" id="YhModel">

<form id="addYhForm" class="layui-form model-form" action="" method="PUT">

    
       <div class="layui-form-item">
           <label class="layui-form-label">用户名</label>
           <div class="layui-input-block">
               <input style="width:200px" autocomplete="off" id="username" name="username" placeholder="请输入用户名" value="" class="layui-input" maxlength="12"
                      lay-verify="required" required/>
           </div>
       </div>

       <div class="layui-form-item">
           <label class="layui-form-label">密码</label>
           <div class="layui-input-block">
               <input style="width:200px" autocomplete="off" id="password" name="password" placeholder="请输入新密码" type="password" class="layui-input" maxlength="12"
                      lay-verify="required|pass" required/>
           </div>
       </div>
       
       <div class="layui-form-item model-form-footer" style="margin-left:130px">
           <button class="layui-btn layui-btn-primary" type="button" id="adYhCancel">取消</button>
           <button class="layui-btn layui-btn-normal" id="addYhSubmit" >添加</button>
       </div>
   </form>
</script>
<script type="text/javascript">



var ints=self.setInterval("clock()",5000);

function clock()
{
	var list;



	 $.ajax({
			url : "<%=basePath%>OpcCon/getbjxx.action", 
			async : false,
			dataType : "json",
			data : {
			
			},
			success : function(data) {
				
				list=data.list;	   
			}

		}); 
	 if(list!=null){
		 var qgxxList=[];
			function jsArrChange(json){
				for (var i = 0 ; i < json.length ; i ++) {
					var arr1 = [];
					
					arr1[0] = json[i].hrz;
					arr1[1] = json[i].bjsj;
					arr1[2] = json[i].bjlx;
					qgxxList.push(arr1);
				};
			}
			jsArrChange(list);
			$("#bjbody").empty();
			var html = "";
			for(var i = 0; i < qgxxList.length; i++) {
				 // 通过间隔分隔数组
					if(i%2 == 1){
						html += "<tr class='gradeX odd'>";
					}else if(i%2 == 0){
						html += "<tr class='gradeX even'>";
					}
					

					for (var j = 0 ; j <qgxxList[i].length ; j ++) {
						
	    				
	                  html += "<td>" + qgxxList[i][j] + "</td>"
	    				
					}
					
				
			}
			bjbody.innerHTML = html;
		 var local = layui.data('layui');
		  layer.open({
		    type: 1
		    ,title: '实时报警'
		    ,shade: false
		 /*    ,offset: ['150px', '200px'] */
		 	,offset:"rb"
		    ,id: 'LAY_Notice'//防止重复弹出
		    ,skin:"alert-skin"
		    ,area: ['510px', '180px']
		    ,moveType: 0
		    ,resize: false
		    ,content:$("#increase_word").html()
		  }); 
	 }
	 else{
		 layer.closeAll();
	 }
	
}


</script> 

<!-- 选项卡 -->
<link rel="stylesheet" type="text/css" href="../tag/css/style.css" />
<link rel="stylesheet" type="text/css" href="../tag/css/tabstyle.css" />
<script type="text/javascript" src="../tag/js/tab.js"></script>


<!-- 侧边树状图 -->
<link rel="stylesheet" type="text/css" href="../css/treecss/jquery.treemenu.css" />
<script type="text/javascript" src="../js/treejs/jquery.treemenu.js"></script>


<style>
table.mws-table1
{
	width:100%;
	margin:0;
	border:0;
	border-collapse:collapse;
}

/* .mws-table1 thead tr
{
	background:url(../../images/core/mws-table-header.png) repeat-x left bottom #f5f5f5;
 */}

.mws-table1 thead tr th:first-child
{
	border-left:none;
}

.mws-table1 thead tr th
{
	padding:10px 16px;
	border-bottom:1px solid #cccccc;
	border-left:1px solid #cccccc;
}

.mws-table11 tbody td, 
.mws-table1 tfoot td
{
	padding:8px 16px;
	border-left-width:1px;
	border-left-style:dotted;
	border-left-color:#bebebe !important;
}

.mws-table1 tbody td:first-child, 
.mws-table1 tfoot td:first-child
{
	border-left:none;
}


	* {
	margin: 0px;
	padding: 0px;
}

#demo_m {
	display: block;
	width: 46px;
	height: 40px;
	position: fixed;
	bottom: 30px;
	left: 160px;
	z-index: 999;
}

#demo_m ul {
	width: 34px;
	height: 20px;
	position: absolute;
	top: 20px;
}

#demo_m ul li {
	list-style: none;
	padding: 0px;
	margin: 0px;
	display: inline-block;
	width: 6px;
	height: 6px;
	border-radius: 4px;
	background-color: rgba(255, 255, 255, 0.7);
}

#demo_menu1 {
	display: none;
	width: 80px;
	height: 140px;
	background-color: rgba(43, 45, 49, 0.9);
	text-align: center;
	padding: 10px;
	border-radius: 10px;
	box-shadow: 4px 4px 4px 4px rgba(0, 0, 0, 0.1);
	position: fixed;
	bottom: 30px;
	left: 204px;
	z-index: 998;
}

#demo_menu1 li a {
	color: #bbb;
	line-height: 27px;
}

#demo_menu1 li a:hover {
	color: #fff;
}

#demo_menu1::before {
	content: "";
	display: block;
	position: absolute;
	width: 0px;
	height: 0px;
	border: 10px solid transparent;
	left: -20px;
	bottom: 16px;
	border-right-color: rgba(43, 45, 49, 0.8);
}

		
#demo_menu2 {
	width: 36px;
	height: 32px;
	position: fixed;
	top: 8%;
	right: 0px;
	background-color: #2B2D31;
	border-radius: 4px;
	z-index: 11;
}

#demo_menu2 img {
	display: block;
	width: 28px;
	height: 22px;
	margin: 5px auto;
}

#demo_menu3 {
	display: none; 
	width : 160px;
	height: 106%;
	border-radius:10px;
	background-color: #444;
	position: absolute;
	top: 62px;
	right: 0px;
	z-index: 12;
}

.tree {
	color: #46CFB0;
	width: 146px;
	margin: 10px auto;
}

.tree li, .tree li>a, .tree li>span {
	padding: 4pt;
	border-radius: 4px;
}

.tree li a {
	color: #46CFB0;
	text-decoration: none;
	line-height: 20pt;
	border-radius: 4px;
}

.tree li a:hover {
	background-color: #34BC9D;
	color: #fff;
}

.active {
	background-color: #34495E;
	color: white;
}

.active a {
	color: #fff;
}

.tree li a.active:hover {
	background-color: #34BC9D;
}
	
.xqname,.ldname,.dyname{
	background:url("../images/background/cir.png") no-repeat left center;
}

.xqname:hover,.ldname:hover,.dyname:hover{
	background:url("../images/background/cirf.png") no-repeat left center;
}
	
	#increase_word .close
	{
		display:block;
		background-color:rgb(193,213,43);
		width:24px;
		height:24px;
		color: #fff;
    	border-radius: 13px;
		position:absolute;
		top:14px;
		right:20px;
		line-height: 24px;
   		text-align: center;
   		font-size: 18px;
	}

	#increase_word .close::before,
	#change_word .close::before {
	    content: "\2716";
	}

	#xincreate_table_body .mws-table tbody .gradeX .xinjgd_show,
	#xincreate_table_body .mws-table tbody .gradeX .xinjgd_change,
	#xincreate_table_body .mws-table tbody .gradeX .xinjgd_del{
		border:none;
		background-color:rgb(60,61,61);
		height:24px;
		margin-right:6px;
		margin-top:2px;
		color:#fff;
		font-size: 12px;
		border-radius:4px;
	}
	
	 

</style>

 <script type="text/javascript">
 function rbb(){// 
		window.open("<%=basePath%>user/rbb.action","Conframe");
	} 

	function zbb(){// 
		window.open("<%=basePath%>user/zbb.action","Conframe");
	} 

	function ybb(){// 
		window.open("<%=basePath%>user/ybb.action","Conframe");
	} 


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

function rcwh(){// 
	window.open("<%=basePath%>user/rcwh.action","Conframe");
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

function sbwhjl(){// 
	window.open("<%=basePath%>user/sbwhjl.action","Conframe");
} 
</script>



</head>
<body  onload="doit()">


	 <!--   模块连接 -->
      	<div>
      		<div id="demo_m">
      			<ul>
      				<li></li>
      				<li></li>
      				<li></li>
      			</ul>
      		</div>
			<ul id="demo_menu1" class="sidebar-menu">
				<li style="margin-left: 0px;"><a
				href="http://192.144.169.217:8090/zhineng/user/home.action">换热站管理</a></li>
					<li style="margin-left: 0px;"><a
				href="http://192.144.169.217:8090/rebiao/user/home.action">热表集抄</a></li>
				<li style="margin-left: 0px;"><a
				href="http://192.144.169.217:8090/zhineng/user/home.action?fl=nhjk">智能入户</a></li>
			  <li style="margin-left: 0px;"><a
				href="http://192.144.169.217:8090/kefu/user/home.action">客服系统</a></li>
			<li style="margin-left: 0px;"><a
				href="http://192.144.169.217:8090/zykt/user/home.action">缴费管理</a></li>
				<!-- <li style="margin-left: 0px;">
					<a href="http://localhost:8080/zhishi/user/home.action">知识库</a>
				</li> -->
			</ul>
			


			<div id="demo_menu2">
				<img src="../images/background/menu.png" />
			</div>
	
			<div id="demo_menu3">
				<ul class="tree">
	
				</ul>
			</div>

			
		</div>
	
	
	
	<!-- 悬浮框 -->
      
        <div id="increase_word">
			<div 
				style="width: 500px; min-width: 500px; ">
				
				<div class="mws-panel-body" style="height: 120px;">
					<form class="mws-form" action="" method="post">
						<table class="mws-table1" >
					<thead>
						<tr>
						    <th class="table-th-css" style="text-align:center !important">换热站</th>
							<th class="table-th-css" style="text-align:center !important">报警时间</th>							
							<th class="table-th-css" style="text-align:center !important">报警类型</th>							
						</tr>
					</thead>
					<tbody id="bjbody">
						
					</tbody>
						</table>
					</form>
				</div>
			</div>
		</div>
        

  <!-- 头部 -->

	<div id="mws-header" class="clearfix" style="width:100%;" >
    	<div id="mws-logo-container" style="width:60%;">
        	<div id="mws-logo-wrap" style="width:100%;float:right;">
            	<!-- <img src="../images/logo.png" alt="mws admin" style="width:300px;height:34px;float:right;margin-top:10px;" /> -->

            	<p style="width:450px;height:34px;float:left;font-size:30px;color:#C5D52B;line-height:60px"> ZYIS-H 无人值守换热站管理系统</p>
			</div>
        </div>
      
        <!-- 登录头像 -->
        <div id="mws-user-tools" class="clearfix">
            <div id="mws-user-info" class="mws-inset">
            	<div id="mws-user-photo">
                	<img src="../example/profile.jpg" alt="User Photo" />
                </div>
                <div id="mws-user-functions">
                    <div id="mws-username">
                        Hello,${UserName}
                    </div>
                    <ul>
                   	<!-- <li><a href="#" onclick="xzyh(0)">新增用户</a></li>
						<li><a href="#" onclick="xgmm(0)">更改密码</a></li> -->
						<li><a href="http://192.144.169.217:8090/zhineng/user/toLogin.action">登录</a></li>
						<li><a href="http://192.144.169.217:8090/zhineng/user/toLogin.action">退出</a></li>
						<li><a href="http://192.144.169.217:8090/zhineng/user/ZHome.action">退到主页面</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    

    
   <!-- 下面内容 start-->
   <div id="mws-wrapper">
       <!--  必要的标记，不要删除 -->
           <div id="mws-sidebar-stitch"></div>
           <div id="mws-sidebar-bg"></div>

           <!-- 左边侧栏包装器 -->
           <div id="mws-sidebar">
           	
               <!--  搜索框-->
               <div id="mws-searchbox" class="mws-inset">
                   <form action="https://www.baidu.com/">
                       <input type="text" class="mws-search-input" />
                       <input type="submit" class="mws-search-submit" />
                   </form>
               </div>
       
                 <iframe scrolling="no" width="100%"   name="Conframel" id="Conframel" src="<%=basePath%>user/left.action" frameborder="0" onload="this.height=0;var fdh=(this.Document?this.Document.body.scrollHeight:this.contentDocument.body.offsetHeight);this.height=(fdh>1700?fdh:850)"></iframe>
           		 
           </div>
          <!-- 左边侧栏包装器  End -->

          <!--  右边主容器 start  -->
    
		  <div id="mws-container"  class="clearfix">
		  	
		     <div class="Conframe" style="height:95%;"> 
		     <div id="page-tab">
				<button class="tab-btn" id="page-prev"></button>
				<nav id="page-tab-content">
					<div id="menu-list">                </div>
				</nav>
				<button class="tab-btn" id="page-next"></button>
				
			</div>
		        <iframe name="Conframe" id="Conframe"  src="<%=basePath%>MapCon/Map.action" ></iframe>
		     </div> 
		 </div>

  </div>
  
  
  <script type="text/javascript">
	
  function doit(){
		$('#Conframel').contents().find(".ac_kf li a").tab();
	}
		
  
/* 	var list = ${YhList}; */
	var list = [
		{bj: "00",zdtime:0,bz: "一委站",dddtime: 0,ddtime: 0,dgdtime: 151.57,dw: "02",dyh: "01",dzdtime: 11.43,fpbh: "1",fpdz: "04",gdtime: "83.42",
			hh: "101",id: 208,jf: "01",jj: "01",kg: "01",ldh: "00",lxdh: "1522561364",mj: 120.5,ms: "01",sdwd: "26",snwd: "27",syje: -757929.5,
			time: "2019-03-09 20:55:52",xqm: "一委站",yf: 6,yhbh: "16000001",yhxm: "1层服务大厅",yydl: 1315.94},
		{bj: "00",zdtime:0,bz: "一委站",dddtime: 0,ddtime: 0,dgdtime: 151.57,dw: "02",dyh: "01",dzdtime: 11.43,fpbh: "1",fpdz: "04",gdtime: "83.42",
			hh: "101",id: 208,jf: "01",jj: "01",kg: "01",ldh: "00",lxdh: "1522561364",mj: 120.5,ms: "01",sdwd: "26",snwd: "27",syje: -757929.5,
			time: "2019-03-09 20:55:52",xqm: "一委站",yf: 6,yhbh: "16000001",yhxm: "1层服务大厅",yydl: 1315.94},
		{bj: "00",zdtime:0,bz: "二委站",dddtime: 0,ddtime: 0,dgdtime: 151.57,dw: "02",dyh: "01",dzdtime: 11.43,fpbh: "1",fpdz: "04",gdtime: "83.42",
			hh: "101",id: 208,jf: "01",jj: "01",kg: "01",ldh: "01",lxdh: "1522561364",mj: 120.5,ms: "01",sdwd: "26",snwd: "27",syje: -757929.5,
			time: "2019-03-09 20:55:52",xqm: "二委站",yf: 6,yhbh: "16000001",yhxm: "1层服务大厅",yydl: 1315.94},
		{bj: "00",zdtime:0,bz: "二委站",dddtime: 0,ddtime: 0,dgdtime: 151.57,dw: "02",dyh: "01",dzdtime: 11.43,fpbh: "1",fpdz: "04",gdtime: "83.42",
			hh: "101",id: 208,jf: "01",jj: "01",kg: "01",ldh: "00",lxdh: "1522561364",mj: 120.5,ms: "01",sdwd: "26",snwd: "27",syje: -757929.5,
			time: "2019-03-09 20:55:52",xqm: "二委站",yf: 6,yhbh: "16000001",yhxm: "1层服务大厅",yydl: 1315.94},
		{bj: "00",zdtime:0,bz: "教育局站",dddtime: 0,ddtime: 0,dgdtime: 151.57,dw: "02",dyh: "02",dzdtime: 11.43,fpbh: "1",fpdz: "04",gdtime: "83.42",
			hh: "101",id: 208,jf: "01",jj: "01",kg: "01",ldh: "00",lxdh: "1522561364",mj: 120.5,ms: "01",sdwd: "26",snwd: "27",syje: -757929.5,
			time: "2019-03-09 20:55:52",xqm: "教育局站",yf: 6,yhbh: "16000001",yhxm: "1层服务大厅",yydl: 1315.94},
		{bj: "00",zdtime:0,bz: "教育局站",dddtime: 0,ddtime: 0,dgdtime: 151.57,dw: "02",dyh: "01",dzdtime: 11.43,fpbh: "1",fpdz: "04",gdtime: "83.42",
			hh: "101",id: 208,jf: "01",jj: "01",kg: "01",ldh: "00",lxdh: "1522561364",mj: 120.5,ms: "01",sdwd: "26",snwd: "27",syje: -757929.5,
			time: "2019-03-09 20:55:52",xqm: "教育局站",yf: 6,yhbh: "16000001",yhxm: "1层服务大厅",yydl: 1315.94},
	];
	
	//侧面树图
	 var xqlilst = [];
	 for(var i = 0 ; i < list.length ; i ++){
		 if(xqlilst.indexOf(list[i].xqm) == -1){
			 xqlilst.push(list[i].xqm);
		 }
	 }
	 for(var j = 0; j < xqlilst.length; j++) {
			$(".tree").append("<li class='xq xqli"+j+"'><a class='xqname' href='#about'>&nbsp;&nbsp;"+xqlilst[j]+"</a></li>");
	}
	

	 var ldlist = [];
	 var ldl = [];
	 for(var x = 0 ; x < xqlilst.length ; x ++){
		 for(var i = 0 ; i < list.length ; i ++){
			 if( xqlilst[x] == list[i].xqm && ldl.indexOf(list[i].ldh) == -1){
				 ldl.push(list[i].ldh);
			 }
		 }
		 ldlist.push(ldl);
		 ldl = [];
	 }
	 
	 for(var j = 0; j < ldlist.length; j++) {
		 $(".xqli"+j).append("<ul></ul>");
		 for(var i = 0; i < ldlist[j].length; i++){
			 $(".xqli"+j).children("ul").append("<li class='ld'><a class='ldname' href='#'>&nbsp;&nbsp;&nbsp;"+ldlist[j][i]+"</a></li>");
		 }
	 } 
	
	 var dylist = [];
	 var ldlic = $(".ld");
	 $(".ld").each(function(i){
		$(this).addClass("ldli"+i);
		 
	 });
	 for(var y = 0 ; y < ldlic.length ; y ++){
		 var xqlddy = [];
		 var aldhtml = $(".ldli"+y).children("a.ldname").html();
		 aldhtml = aldhtml.replace(/&nbsp;/ig, "");
		 var axqhtml = $(".ldli"+y).parent().parent().children("a.xqname").html();
		 axqhtml = axqhtml.replace(/&nbsp;/ig, "");
		 for(var i = 0 ; i < list.length ;i ++){
			 if(axqhtml == list[i].xqm && aldhtml == list[i].ldh && xqlddy.indexOf(list[i].dyh)){
				 xqlddy.push(list[i].dyh);
			 }
		 }
		 if(xqlddy.length > 0){
			 $(".ldli"+y).append("<ul></ul>"); 
			 for(var a = 0 ; a < xqlddy.length ;a ++){
				 $(".ldli"+y).children("ul").append("<li class='dy'><a class='dyname' href='#job1'>&nbsp;&nbsp;&nbsp;&nbsp;"+xqlddy[a]+"</a></li>");
			 }
		 }
		
	 } 
	
	
	 
	
	$("#demo_menu2").mouseenter(function() {
		$("#demo_menu3").fadeIn(500);
	});
	
	$("#demo_menu3").mouseleave(function(){
		$("#demo_menu3").fadeOut(500);
	});
      
	$(".tree").treemenu({
		delay: 300
	}).openActive();
	
      

$("#demo_m").mouseenter(function() {
		$("#demo_m ul").css("transform", "rotate(90deg)");
		$("#demo_m ul li").css("background-color", "#C5D52B");
		$("#demo_menu1").show();
	}).mouseleave(function() {
		$("#demo_m ul").css("transform", "rotate(360deg)");
		$("#demo_m ul li").css("background-color","rgba(255,255,255,0.7)");
		$("#demo_menu1").hide();
	});

	$("#demo_menu1").mouseover(function() {
		$("#demo_m ul").css("transform", "rotate(90deg)");
		$("#demo_m ul li").css("background-color", "#C5D52B");
		$(this).show();
	}).mouseleave(function() {
		$("#demo_m ul").css("transform", "rotate(360deg)");
		$("#demo_m ul li").css("background-color","rgba(255,255,255,0.7)");
		$(this).hide();
	});

	var xq;
	var ld;
	var dy;
	
	
	/* 楼栋 */
	$("a.xqname").click(function(){
		window.open("<%=basePath%>user/szt.action","Conframe");
		$('#Conframel').contents().find(".ac_kf li a").css("cssText","color:#fff !important;");
		
		xq = $(this).html();
		xq = xq.replace(/&nbsp;/ig, "");
		
	});	 
	
	/* 楼栋 */
	$("a.ldname").click(function(){
		window.open("<%=basePath%>user/szt.action","Conframe");
		$('#Conframel').contents().find(".ac_kf li a").css("cssText","color:#fff !important;");
		
		ld = $(this).html();
		ld = ld.replace(/&nbsp;/ig, "");
		xq = $(this).parents("li.xq").children("a.xqname").html();
		xq = xq.replace(/&nbsp;/ig, "");
		
	});	 
	
	/* 单元 */
	$("a.dyname").click(function(){
		window.open("<%=basePath%>user/szt.action","Conframe");
		$('#Conframel').contents().find(".ac_kf li a").css("cssText","color:#fff !important;");
		
		dy = $(this).html();
		dy = dy.replace(/&nbsp;/ig, "");
		ld = $(this).parents("li.ld").children("a.ldname").html();
		ld = ld.replace(/&nbsp;/ig, "");
		xq = $(this).parents("li.xq").children("a.xqname").html();
		xq = xq.replace(/&nbsp;/ig, "");
		
	});	 
	
        
        
  </script>

                           
</body>


</html>