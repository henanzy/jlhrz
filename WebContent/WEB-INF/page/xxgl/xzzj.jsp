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
<link rel="stylesheet" type="text/css"
	href="../plugins/spinner/spinner.css" media="screen" />
<link rel="stylesheet" type="text/css" href="../css/jui/jquery.ui.css"
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
<script type="text/javascript" src="../js/layer/2.4/layer.js"></script>
<script type="text/javascript" src="../js/layui/layui.js"></script>
<script type="text/javascript" src="../js/layui/layui.all.js"></script>

<script type="text/javascript" src="../plugins/flot/jquery.flot.min.js"></script>
<script type="text/javascript" src="../js/layer/2.4/layer.js"></script>
<script type="text/javascript" src="../js/layui/layui.js"></script>
<script type="text/javascript" src="../js/layui/layui.all.js"></script>
<link rel="stylesheet" type="text/css" href="../js/layui/css/layui.css" media="screen" />
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
<script type="text/javascript" src="../plugins/spinner/ui.spinner.js"></script>
<script type="text/javascript" src="../js/jquery-ui.js"></script>

<script type="text/javascript" src="../js/mws.js"></script>
<script type="text/javascript" src="../js/demo.js"></script>
<script type="text/javascript" src="../js/themer.js"></script>
 <script type="text/javascript">



</script>

<style>

	/* 固定表头 */
	/* .table-th-css {
		position: relative !important;
		top: 0;
	} */
	
	/*修改按钮 */
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
	
	/* 新增搜索DIV */
	.increase{
		display:block;
		width:99.8%;
		height:40px;
		background-color:#ccc;
		margin:0px auto;
		font-size:12px;
	}
	
	.increase p{
		height:40px;
	}
		th,td{  
  
  white-space: nowrap;
} 
	select{
		width:110px;
		height:24px;
		line-height:24px;
		border-radius:4px;
		background-color:rgba(43,45,49,0.8);
		color:#fff;
		cursor:pointer;
		text-align:center;
	}
	
	/* 新增搜索按钮 */
	#increase_btn,
	#xin_search_btn{
		margin-top:8px;
		margin-left:20px;
		border:none;
		background-color:rgb(60,61,61);
		width:100px;
		height:24px;
		margin-right:6px;
		color:#fff;
		border-radius:4px;
	}
	
	/* 新增修改弹出框 */
	#increase_word,
	#change_word{
		display:none;
		position: fixed;
		left: 0;
	    top:0;
	    right:0;
	    bottom:0;
	    z-index: 100; 
		background-color:rgba(0,0,0,0.6);
	}
	
	/* 新增修改弹出框关闭按钮 */
	#increase_word .close,
	#change_word .close{
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
	
	/* 新增修改弹出框input */
	#increase_word .mws-form-row .increase_word_input,
	#change_word .mws-form-row .change_word_input {
		width:120px;
	}
	
	/* 新增修改弹出框label */
	#increase_word .mws-form-row label,
	#change_word .mws-form-row label{
		width:120px;
	}
	
	/* 新增修改弹出框确认按钮 */
	#increase_word #word_increase_btn,
	#word_change_btn{
		position:relative;
		top:-10px;
		left:200px;
	}
	#change_word #word_change_btn{
		position:relative;
		top:-10px;
		left:200px;
	}
	
	/* thead排序按钮 */
	.span-up{
        border-style: solid;
        border-width: 0px 5px 5px 5px;
        border-color: transparent transparent black transparent;
        width: 0px;
        height: 0px;
        display: block;
        position: absolute;
        top: 14px;
       	right: 6px;
    }
    
    .span-down{
        border-style: solid;
        border-width: 5px 5px 0px 5px;
        border-color: black transparent transparent transparent;
        width: 0px;
        height: 0px;
        display: block;
        position: absolute;
        top: 20px;
        right: 6px;
    }
	
	
</style>


 <script type="text/javascript">

/* var state = ${xinwordList};
alert(state); */

</script>
</head>
<body>

	<div id="increasedis" class="clearfix" style="overflow-x: hidden;">
	

		<div class="mws-panel grid_8 "
			style="width: 98%; padding-left: 12px; margin: 0px 0px 30px 0px; min-width:500px">
			<div class="mws-panel-header">
				<span class="mws-i-24 i-table-1">设备信息</span>
			</div>
			<div class="increase">
				 <p>
					<input id="increase_btn" type="submit" value="新增站点" />
					<!-- <span style="font-size:20px;margin-left:20px;"> | </span>
					<select id="hrz" name="hrz">
	                    <option value="一委站">一委站</option>
						<option value="二委站">二委站</option>
						<option value="教育局站">教育局站</option>
	                </select>
					
					<input id="xin_search_btn" type="submit" value="搜索" /> -->
				</p> 
			</div>
			<div id="xincreate_table_body" class="mws-panel-body"
				style="overflow: auto !important; height: 600px;">
				<table class="mws-table" align="center">
					<thead align="center">
					
					     <tr style=" text-align:center !important"  >
							<th align="center" class="table-th-css" rowspan="2">站点<span class="span-up"></span> <span class="span-down"></span></th>
							
							<th align="center" class="table-th-css" colspan="4">一次供水<span class="span-up"></span> <span class="span-down"></span></th>
							<th align="center" class="table-th-css" colspan="3">二次供水<span class="span-up"></span> <span class="span-down"></span></th>
							<th align="center" class="table-th-css" colspan="2">一次回水<span class="span-up"></span> <span class="span-down"></span></th>
							<th align="center" class="table-th-css" colspan="4">二次回水<span class="span-up"></span> <span class="span-down"></span></th>
							<th align="center" class="table-th-css" colspan="6">补水<span class="span-up"></span> <span class="span-down"></span></th>
							
							<th align="center" class="table-th-css" rowspan="2">泄压阀<span class="span-up"></span> <span class="span-down"></span></th>
							
							
						</tr>
						<tr  >
							<th class="table-th-css">调节阀<span class="span-up"></span> <span class="span-down"></span></th>
							<th class="table-th-css" >热量表<span class="span-up"></span> <span class="span-down"></span></th>
							<th class="table-th-css">压力<span class="span-up"></span> <span class="span-down"></span></th>
							<th class="table-th-css">温度<span class="span-up"></span> <span class="span-down"></span></th>
							
							<th class="table-th-css">流量表<span class="span-up"></span> <span class="span-down"></span></th>
							<th class="table-th-css">压力<span class="span-up"></span> <span class="span-down"></span></th>
							<th class="table-th-css">温度<span class="span-up"></span> <span class="span-down"></span></th>
							
							
							
							<th class="table-th-css">压力<span class="span-up"></span> <span class="span-down"></span></th>
							<th class="table-th-css">温度<span class="span-up"></span> <span class="span-down"></span></th>
							
							
							<th class="table-th-css">压力<span class="span-up"></span> <span class="span-down"></span></th>
							<th class="table-th-css">温度<span class="span-up"></span> <span class="span-down"></span></th>
							<th class="table-th-css" >1#循环泵<span class="span-up"></span> <span class="span-down"></span></th>
							<th class="table-th-css" >2#循环泵<span class="span-up"></span> <span class="span-down"></span></th>
							
							<th class="table-th-css" >水表<span class="span-up"></span> <span class="span-down"></span></th>
							<th class="table-th-css" >1#补水泵<span class="span-up"></span> <span class="span-down"></span></th>
							<th class="table-th-css" >2#补水泵<span class="span-up"></span> <span class="span-down"></span></th>
							<th class="table-th-css" >补水阀<span class="span-up"></span> <span class="span-down"></span></th>
							<th class="table-th-css" >流量表<span class="span-up"></span> <span class="span-down"></span></th>
							<th class="table-th-css" >除污器<span class="span-up"></span> <span class="span-down"></span></th>
							
						</tr>
					</thead>
					<tbody id="xinword_body">
						<tr class="gradeX odd" align="center">
						
						<td>一委站</td><td>√</td><td>×</td><td>√</td>
						<td>√</td><td>√</td><td>√</td>					
						<td>√</td><td>√</td><td>√</td><td>√</td>
						<td>√</td><td>√</td><td>√</td><td>√</td>
						<td>√</td><td>√</td><td>√</td>
						<td>√</td><td>√</td><td>√</td>
						</tr>
						<tr class="gradeX even" align="center">
						
						<td>二委站</td><td>√</td><td>×</td><td>√</td>
						<td>√</td><td>√</td><td>√</td>					
						<td>√</td><td>√</td><td>√</td><td>√</td>
						<td>√</td><td>√</td><td>√</td><td>√</td>
						<td>√</td><td>√</td><td>√</td>
						<td>√</td><td>√</td><td>√</td>
						</tr>
						<tr class="gradeX odd" align="center">
						
						<td>教育局站</td><td>√</td><td>×</td><td>√</td>
						<td>√</td><td>√</td><td>√</td>					
						<td>√</td><td>√</td><td>√</td><td>√</td>
						<td>√</td><td>√</td><td>√</td><td>√</td>
						<td>√</td><td>√</td><td>√</td>
						<td>√</td><td>√</td><td>√</td>
						</tr>
				
					</tbody>
				</table>
			</div>
		</div>

		<div id="increase_word">
			<div class="mws-panel grid_4"
				style="width: 500px; min-width: 500px; margin: 100px 30%;">
				<div class="mws-panel-header">
					<span class="mws-i-24 i-pencil">新增站点</span> <span class="close"></span>
				</div>
				<div class="mws-panel-body" style="height: 450px;">
					
					<form class="mws-form" action=""  method="post">
					
					<table>
					<!-- <tr>
					<th style="width:150px">
					<label>&emsp;&emsp;站点名称：</label>
					</th>
					<th style="width:150px">
					<input type="text" class="mws-textinput increase_word_input" 
										name="telephone" value="" autofocus="autofocus" />
					</th>
					<th style="width:150px"></th>
					</tr> -->
					<tr align="right" style="height:50px">
					
					<th style="width:150px">
					<label style="text-align:left">&emsp;&emsp;一次供热量表</label>
					<input type="checkbox" name="box" value="一次瞬时供流量"/>
					</th>
					
					<th style="width:150px">
					<label style="text-align:left">&emsp;&emsp;一次供温度传感器</label>
					<input type="checkbox" name="box" value="一次供水压力"/>
					</th>
					
					<th style="width:150px">
					<label style="text-align:left">&emsp;&emsp;一次供压力传感器</label>
					<input type="checkbox" name="box" value="补泵瞬时流量"/>
					</th>
					
					</tr>
					
					<tr align="right" style="height:50px">
					<th style="width:150px">
					<label style="text-align:left">&emsp;&emsp;调节阀</label>
					<input type="checkbox" name="box" value="一次瞬时供热量"/>
					</th>
					
					<th>
					<label style="text-align:left">&emsp;&emsp;二次供流量表</label>
					<input type="checkbox" name="box" value="一次供水温度"/>
					</th>
					
					<th>
					<label style="text-align:left">&emsp;&emsp;二次供温度传感器</label>
					<input type="checkbox" name="box" value="补泵累计流量"/>
					</th>
					
					</tr>
					
					<tr align="right" style="height:50px">
					<th style="width:150px">
					<label style="text-align:left">&emsp;&emsp;二次供压力传感器</label>
					<input type="checkbox" name="box" value="一次累计供流量"/>
					</th>
					
					<th>
					<label style="text-align:left">&emsp;&emsp;一次回压力传感器</label>
					<input type="checkbox" name="box" value="一次回水压力"/>
					</th>
					
					<th>
					<label style="text-align:left">&emsp;&emsp;一次回温度传感器</label>
					<input type="checkbox" name="box" value="水箱液位"/>
					</th>
					
					</tr>
					
					<tr align="right" style="height:50px">
					<th>
					<label style="text-align:left">&emsp;&emsp;二次回压力传感器</label>
					<input type="checkbox" name="box" value="一次累计供热量"/>
					</th>
					
					<th>
					<label style="text-align:left">&emsp;&emsp;二次回温度传感器</label>
					<input type="checkbox" name="box" value="一次回水温度"/>
					</th>
					
					<th>
					<label style="text-align:left">&emsp;&emsp;1#循环泵</label>
					<input type="checkbox" name="box" value="自来水总补水量"/>
					</th>
					
					</tr>
					
					<tr align="right" style="height:50px"> 
					<th>
					<label style="text-align:left">&emsp;&emsp;2#循环泵</label>
					<input type="checkbox" name="box" value="总电量"/>
					</th>
					
					<th>
					<label style="text-align:left">&emsp;&emsp;补水水表</label>
					<input type="checkbox" name="box" value="二次供水瞬时流量"/>
					</th>
					
					<th>
					<label style="text-align:left">&emsp;&emsp;1#补水泵</label>
					<input type="checkbox" name="box" value="一次瞬时流量"/>
					</th>
					
					</tr>
					
					
					
					<tr align="right" style="height:50px"> 
					<th>
					<label style="text-align:left">&emsp;&emsp;2#补水泵</label>
					<input type="checkbox" name="box" value="A项电压"/>
					</th>
					
					<th>
					<label style="text-align:left">&emsp;&emsp;补水阀</label>
					<input type="checkbox" name="box" value="二次供水累计流量"/>
					</th>
					
					<th>
					<label style="text-align:left">&emsp;&emsp;补水流量表</label>
					<input type="checkbox" name="box" value="1#循环泵频率反馈"/>
					</th>
					
					</tr>
					
					<tr align="right" style="height:50px"> 
					<th>
					<label style="text-align:left">&emsp;&emsp;除污器</label>
					<input type="checkbox" name="box" value="B项电压"/>
					</th>
					
					<th>
					<label style="text-align:left">&emsp;&emsp;泄压阀</label>
					<input type="checkbox" name="box" value="二次供水压力"/>
					</th>
					
					</tr>
				
					</table>
					
				    <span style="text-align: center">
					<label style="text-align:left">&emsp;&emsp;站点名称</label>
					<select size="10px">
					<option>一委站</option>
					<option>二委站</option>
					<option>教育局站</option>
					</select>
				   </span>
						<input type="button" id="word_change_btn"
							class="mws-button black" value="新增" />
							
					</form>
				
				</div>
			</div>
		</div>
		
		
		
		
		
	</div>

</body>
<!-- <script type="text/javascript" src="../js/xinjgd.js"></script> -->
<script type="text/javascript">
$("#increase_btn").click(function(){
	
	
	$("#increase_word").show();
});
$(".close").click(function(){
	$("#increase_word").hide();
	
});
</script>
</html>