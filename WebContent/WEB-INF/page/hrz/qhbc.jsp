<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>



<!-- Required Stylesheets -->
<link rel="stylesheet" type="text/css" href="../css/reset.css"
	media="screen" />
<link rel="stylesheet" type="text/css" href="../css/text.css"
	media="screen" />
<link rel="stylesheet" type="text/css"
	href="../css/fonts/ptsans/stylesheet.css" media="screen" />
<link rel="stylesheet" type="text/css" href="../css/fluid.css"
	media="screen" />

<link rel="stylesheet" type="text/css" href="../css/mws.style.css"
	media="screen" />
<link rel="stylesheet" type="text/css" href="../css/icons/icons.css"
	media="screen" />

<!-- Demo and Plugin Stylesheets -->
<link rel="stylesheet" type="text/css" href="../css/demo.css"
	media="screen" />

<link rel="stylesheet" type="text/css"
	href="../plugins/colorpicker/colorpicker.css" media="screen" />
<link rel="stylesheet" type="text/css"
	href="../plugins/jimgareaselect/css/imgareaselect-default.css"
	media="screen" />
<link rel="stylesheet" type="text/css"
	href="../plugins/fullcalendar/fullcalendar.css" media="screen" />
<link rel="stylesheet" type="text/css"
	href="../plugins/fullcalendar/fullcalendar.print.css" media="print" />
<link rel="stylesheet" type="text/css" href="../plugins/tipsy/tipsy.css"
	media="screen" />
<link rel="stylesheet" type="text/css"
	href="../plugins/sourcerer/Sourcerer-1.2.css" media="screen" />
<link rel="stylesheet" type="text/css"
	href="../plugins/jgrowl/jquery.jgrowl.css" media="screen" />
<!-- <link rel="stylesheet" type="text/css"
	href="../plugins/spinner/spinner.css" media="screen" /> -->
<link rel="stylesheet" type="text/css" href="../css/jui/jquery.ui.css"
	media="screen" />
<link rel="stylesheet" type="text/css"
	href="../js/layer/2.4/skin/layer.css" media="screen" />
<script type="text/javascript" src="../js/layer/2.4/layer.js"></script>
<script type="text/javascript" src="../js/layui/layui.js"></script>
<script type="text/javascript" src="../js/layui/layui.all.js"></script>
<link rel="stylesheet" type="text/css" href="../js/layui/css/layui.css"
	media="screen" />
<!-- Theme Stylesheet -->
<link rel="stylesheet" type="text/css" href="../css/mws.theme.css"
	media="screen" />

<!-- JavaScript Plugins -->

<script type="text/javascript" src="../js/jquery-1.7.1.min.js"></script>

<script type="text/javascript"
	src="../plugins/jimgareaselect/jquery.imgareaselect.min.js"></script>
<script type="text/javascript"
	src="../plugins/jquery.dualListBox-1.3.min.js"></script>
<script type="text/javascript" src="../plugins/jgrowl/jquery.jgrowl.js"></script>
<script type="text/javascript" src="../plugins/jquery.filestyle.js"></script>
<script type="text/javascript"
	src="../plugins/fullcalendar/fullcalendar.min.js"></script>
<script type="text/javascript" src="../plugins/jquery.dataTables.js"></script>
<!--[if lt IE 9]>
<script type="text/javascript" src="../plugins/flot/excanvas.min.js"></script>
<![endif]-->
<script type="text/javascript" src="../plugins/flot/jquery.flot.min.js"></script>
<script type="text/javascript"
	src="../plugins/flot/jquery.flot.pie.min.js"></script>
<script type="text/javascript"
	src="../plugins/flot/jquery.flot.stack.min.js"></script>
<script type="text/javascript"
	src="../plugins/flot/jquery.flot.resize.min.js"></script>
<script type="text/javascript"
	src="../plugins/colorpicker/colorpicker.js"></script>
<script type="text/javascript" src="../plugins/tipsy/jquery.tipsy.js"></script>
<script type="text/javascript"
	src="../plugins/sourcerer/Sourcerer-1.2.js"></script>
<script type="text/javascript" src="../plugins/jquery.placeholder.js"></script>
<script type="text/javascript" src="../plugins/jquery.validate.js"></script>
<script type="text/javascript" src="../plugins/jquery.mousewheel.js"></script>
<!-- <script type="text/javascript" src="../plugins/spinner/ui.spinner.js"></script> -->
<script type="text/javascript" src="../js/jquery-ui.js"></script>

<script type="text/javascript" src="../js/mws.js"></script>
<!-- <script type="text/javascript" src="../js/demo.js"></script> -->
<script type="text/javascript" src="../js/themer.js"></script>



<style type="text/css">
.mws-report {
	width: 98% !important;
	min-width: 170px;
	margin: 8px 1%;
	height: 60px;
	float: left;
	cursor: pointer;
	display: block;
	text-decoration: none;
	color: #323232;
	margin-bottom: 0px;
}
html,body{
	height:100%
}
.csinput {
	text-align: center;
	border-radius: 5px;
	height: 24px;
}

table {
	width:97%;
	padding:0px;
	margin: 0px auto;
	background-color: rgb(250, 250, 250);
	margin-bottom: 20px;
	border: 1px solid #ccc;
}

table thead {
width:100%;
	background-color: rgb(236, 236, 236);
	border-bottom: 1px dashed #ccc;
}
#jk_search_btn{
		margin-top:8px;
		margin-left:20px;
		border:none;
		background-color:rgb(60,61,61);
		width:60px;
		height:24px;
		margin-right:6px;
		color:#fff;
		border-radius:6px;
	}
table thead tr {
	height: 40px;
	line-height: 40px;
}

table thead tr th {
	border-right: 1px dashed #ccc;
	text-align: center;
}

table tbody{
width:100%;
}

table tbody tr td{
	padding:4px;
	border-right: 1px dashed #ccc;
	width: 16%;
	text-align: center;
}

table tbody tr td:nth-of-type(2){
	border-right: 1px solid #7D9EC0;
}

.qhinp{
	width:100px;
	text-align: center;
}

.sjinp{
	width:60px;
	text-align: center;
}

input:focus{
	border:1px solid #4682B4;
}

</style>

</head>
<script type="text/javascript">

$(function(){	
 	
	 function csh(){
    var hrzname = $("#hrzname").val();
    
	$.ajax({
		url :"<%=basePath%>OpcCon/qhbc.action",
		type : "post",
		dataType : "json",
		async:false,
		data : {
			"hrz":"吉利."+hrzname+".写数据.",
		},
		success : function(data) {
		    var map=data.map;
		     $("#swwd1").val(map.室外温度1); $("#swwd2").val(map.室外温度2); $("#swwd3").val(map.室外温度3); $("#swwd4").val(map.室外温度4);
		    $("#swwd5").val(map.室外温度5); $("#swwd6").val(map.室外温度6); $("#swwd7").val(map.室外温度7); $("#swwd8").val(map.室外温度8);
		    $("#gswd1").val(map.二次供水温度1);  $("#gswd2").val(map.二次供水温度2); $("#gswd3").val(map.二次供水温度3); $("#gswd4").val(map.二次供水温度4);
		    $("#gswd5").val(map.二次供水温度5);  $("#gswd6").val(map.二次供水温度6); $("#gswd7").val(map.二次供水温度7); $("#gswd8").val(map.二次供水温度8);
		    $("#s1").val(map.时间段时1); $("#s2").val(map.时间段时2); $("#s3").val(map.时间段时3); $("#s4").val(map.时间段时4);
		    $("#f1").val(map.时间段分1); $("#f2").val(map.时间段分2); $("#f3").val(map.时间段分3); $("#f4").val(map.时间段分4);
		    $("#bcwd1").val(map.补偿温度1);$("#bcwd2").val(map.补偿温度2);$("#bcwd3").val(map.补偿温度3);$("#bcwd4").val(map.补偿温度4); 
			
		}
     });	
	 }
	 csh();
	 $("#hrzname").change(function(){
		 csh();
		});
});
</script>
<script type="text/javascript">
layui.form.render();
	function cstj() {
		alert("参数修改成功！")
	}
	
	
	 function tqsz(name,id){
		 var hrz="吉利."+$("#hrzname").val()+"."
		  var val = $("#"+id).val();
		
			$.ajax({
				url : "<%=basePath%>OpcCon/cssz.action",
				async : false,
				dataType : "json",
				data : {
					"name" : name,
					"hrz" : hrz,
					"id" : id,
					"val":val,
				},
				success : function(data) {
					
				
					var val = data.value;
					var id = data.id;
					$("#"+id).val(val);	
				
				}
		}) 
}
	
</script>
<body>

	<div id="" class="clearfix" style="overflow-x: hidden;min-width:1150px;">

 &nbsp;   &nbsp;   &nbsp;   <select id="hrzname" class="csinput" >
	    <option value="教育局站">教育局站</option>
	    <option value="一委站">一委站</option>
	    <option value="二委站">二委站</option>
	    </select>
	   
		<p class="mws-report" 
			style="font-size: 14px; border-color: #c5d52b; background: url(../images/core/mws-header-bg.png) repeat-x;position:relative;">
			<span class="mws-report-icon mws-ic ic-building"></span> <span
				class="mws-report-content" style="margin-top: 10px; color: #C5D52B;">
				温度补偿 </span>
				
			<span style="diaplay:block;position:absolute;top:12px;left:130px;background-color:#fff;border-radius:4px;padding:4px;">
				气候补偿: <img class="switchimg" id="img" style="width:26px;" alt="" src="">
			</span>
		</p>
	     <form action="">
			<table border="1" cellspacing="0" cellpadding="0">
				<thead>
					<tr>
						<th colspan="2">
							气候补偿
						</th>
						<th colspan="2">
							时间补偿
						</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>
							室外温度
						</td>
						<td>
							供水温度
						</td>
						<td>
							时间段
						</td>
						<td>
							补偿温度
						</td>
					</tr>
					
					<!-- 内容 -->
					<tr>
						<td>
							<input class="qhinp" type="text" id="swwd1" value="" />℃
							<button class="layui-btn layui-btn-xs" style="width:45px;" type="button" onclick="tqsz('写数据.室外温度1','swwd1')"   id="qingd">设置</button>
								
						</td>
						<td>
							<input class="qhinp" type="text" id="gswd1" value="" />℃
							<button class="layui-btn layui-btn-xs" style="width:45px" type="button" onclick="tqsz('写数据.二次供水温度1','gswd1')"   id="qingd">设置</button>
						</td>
						<td>
							<input class="sjinp" id="s1"  type="text"  value="" /> 时
							<button class="layui-btn layui-btn-xs" style="width:45px" type="button" onclick="tqsz('写数据.时间段时1','s1')"   id="qingd">设置</button>
							 <input class="sjinp" id="f1" type="text"  value="" />分
							 <button class="layui-btn layui-btn-xs" style="width:45px" type="button" onclick="tqsz('写数据.时间段分1','f1')"   id="qingd">设置</button>
							 
							 
						</td>
						<td>
							<input class="sjinp" id="bcwd1" type="text" value="" />℃
							<button class="layui-btn layui-btn-xs" style="width:45px" type="button" onclick="tqsz('写数据.补偿温度1','bcwd1')"   id="qingd">设置</button>	
						</td>
					</tr>
					<tr>
						<td>
							<input class="qhinp" id="swwd2" type="text" value="" />℃
							<button class="layui-btn layui-btn-xs" style="width:45px" type="button" onclick="tqsz('写数据.室外温度2','swwd2')"   id="qingd">设置</button>	
						</td>
						<td>
							<input class="qhinp" id="gswd2" type="text" value="" />℃
							<button class="layui-btn layui-btn-xs" style="width:45px" type="button" onclick="tqsz('写数据.二次供水温度2','gswd2')"   id="qingd">设置</button>	
						</td>
						<td>
							
						</td>
						<td>
							
						</td>
					</tr>
					<tr>
						<td>
							<input class="qhinp" type="text" id="swwd3" value="" />℃
							<button class="layui-btn layui-btn-xs" style="width:45px" type="button" onclick="tqsz('写数据.室外温度3','swwd3')"   id="qingd">设置</button>	
						</td>
						<td>
							<input class="qhinp" type="text" id="gswd3" value="" />℃
							<button class="layui-btn layui-btn-xs" style="width:45px" type="button" onclick="tqsz('写数据.二次供水温度3','gswd3')"   id="qingd">设置</button>	
						</td>
						<td>
							<input class="sjinp" type="text" id="s2" value="" /> 时
							<button class="layui-btn layui-btn-xs" style="width:45px" type="button" onclick="tqsz('写数据.时间段时2','s2')"   id="qingd">设置</button>
							 <input class="sjinp" type="text" id="f2" value="" /> 分
							 <button class="layui-btn layui-btn-xs" style="width:45px" type="button" onclick="tqsz('写数据.时间段分2','f2')"   id="qingd">设置</button>
						</td>
						<td>
							<input class="sjinp" type="text" id="bcwd2" value="" />℃
							<button class="layui-btn layui-btn-xs" style="width:45px" type="button" onclick="tqsz('写数据.补偿温度2','bcwd2')"   id="qingd">设置</button>	
						</td>
					</tr>
					<tr>
						<td>
							<input class="qhinp" type="text" id="swwd4" value="" />℃
							<button class="layui-btn layui-btn-xs" style="width:45px" type="button" onclick="tqsz('写数据.室外温度4','swwd4')"   id="qingd">设置</button>
						</td>
						<td>
							<input class="qhinp" type="text" id="gswd4" value="" />℃
							<button class="layui-btn layui-btn-xs" style="width:45px" type="button" onclick="tqsz('写数据.二次供水温度4','gswd4')"   id="qingd">设置</button>	
						</td>
						<td>
							
						</td>
						<td>
							
						</td>
					</tr>
					<tr>
						<td>
							<input class="qhinp" id="swwd5" type="text" value="" />℃
							<button class="layui-btn layui-btn-xs" style="width:45px" type="button" onclick="tqsz('写数据.室外温度5','swwd5')"   id="qingd">设置</button>	
						</td>
						<td>
							<input class="qhinp" id="gswd5" type="text" value="" />℃
							<button class="layui-btn layui-btn-xs" style="width:45px" type="button" onclick="tqsz('写数据.二次供水温度5','gswd5')"   id="qingd">设置</button>	
						</td>
						<td>
							<input class="sjinp" id="s3" type="text" value="" /> 时 
							<button class="layui-btn layui-btn-xs" style="width:45px" type="button" onclick="tqsz('写数据.时间段时3','s3')"   id="qingd">设置</button>
							<input class="sjinp" id="f3" type="text" value="" /> 分
							<button class="layui-btn layui-btn-xs" style="width:45px" type="button" onclick="tqsz('写数据.时间段分3','f3')"   id="qingd">设置</button>
						</td>
						<td>
							<input class="sjinp" id="bcwd3" type="text" value="" />℃
							<button class="layui-btn layui-btn-xs" style="width:45px" type="button" onclick="tqsz('写数据.补偿温度3','bcwd3')"   id="qingd">设置</button>	
						</td>
					</tr>
					<tr>
						<td>
							<input class="qhinp" id="swwd6" type="text" value="" />℃
							<button class="layui-btn layui-btn-xs" style="width:45px" type="button" onclick="tqsz('写数据.室外温度6','swwd6')"   id="qingd">设置</button>	
						</td>
						<td>
							<input class="qhinp" id="gswd6" type="text" value="" />℃
							<button class="layui-btn layui-btn-xs" style="width:45px" type="button" onclick="tqsz('写数据.二次供水温度6','gswd6')"   id="qingd">设置</button>
						</td>
						<td>
							
						</td>
						<td>
							
						</td>
					</tr>
					<tr>
						<td>
							<input class="qhinp" type="text" id="swwd7" value="" />℃
							<button class="layui-btn layui-btn-xs" style="width:45px" type="button" onclick="tqsz('写数据.室外温度7','swwd7')"   id="qingd">设置</button>	
						</td>
						<td>
							<input class="qhinp" type="text" id="gswd7" value="" />℃
							<button class="layui-btn layui-btn-xs" style="width:45px" type="button" onclick="tqsz('写数据.二次供水温度7','gswd7')"   id="qingd">设置</button>	
						</td>
						<td>
							<input class="sjinp" type="text" id="s4" value="" /> 时
							<button class="layui-btn layui-btn-xs" style="width:45px" type="button" onclick="tqsz('写数据.时间段时4','s4')"   id="qingd">设置</button>
							 <input class="sjinp" type="text" id="f4" value="" />分
							 <button class="layui-btn layui-btn-xs" style="width:45px" type="button" onclick="tqsz('写数据.时间段分4','f4')"   id="qingd">设置</button>
						</td>
						<td>
							<input class="sjinp" type="text" id="bcwd4" value="" />℃
							<button class="layui-btn layui-btn-xs" style="width:45px" type="button" onclick="tqsz('写数据.补偿温度4','bcwd4')"   id="qingd">设置</button>	
						</td>
					</tr>
					<tr>
						<td>
							<input class="qhinp" id="swwd8" type="text" value="" />℃
							<button class="layui-btn layui-btn-xs" style="width:45px" type="button" onclick="tqsz('写数据.室外温度8','swwd8')"   id="qingd">设置</button>	
						</td>
						<td>
							<input class="qhinp" id="gswd8" type="text" value="" />℃
							<button class="layui-btn layui-btn-xs" style="width:45px" type="button" onclick="tqsz('写数据.二次供水温度8','gswd8')"   id="qingd">设置</button>	
						</td>
						<td>
						</td>
						<td>
						</td>
					</tr>
				</tbody>
			</table>
	
		</form>
</div>

<script>
	
	
		$(".switchimg").click(function(){
			var src = $('img').attr('src');
			var reg = RegExp(/close/);
			var flag=reg.test(src); // true
			
				$.ajax({
				url : "qhbcxg.action",
				async : false,
				dataType : "json",
				data : {
					"flag" : flag,
				},
				success : function(data) {
					
					var flag = eval(data).maps.vs;
					if(flag){

					/* 	$(this).attr("src","../images/switch/open.png"); */
					 $("#img").attr("src","../images/switch/open.png");
						/* flag = !flag; */
					}else{
						 $("#img").attr("src","../images/switch/close.png");
					/* 	$(this).attr("src","../images/switch/close.png");
						flag = !flag; */
					}	
				
				}
		}) 
	
		})
	

</script>

</body>
</html>