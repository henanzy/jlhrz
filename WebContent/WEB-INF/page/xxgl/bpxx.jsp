
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

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
<script type="text/javascript" src="../plugins/spinner/ui.spinner.js"></script>
<script type="text/javascript" src="../js/jquery-ui.js"></script>

<script type="text/javascript" src="../js/mws.js"></script>
<script type="text/javascript" src="../js/demo.js"></script>
<script type="text/javascript" src="../js/themer.js"></script>

<script type="text/javascript" src="../js/bpxx.js"></script>

<style>

/* 固定表头 */
.table-th-css {
	position: relative !important;
	top: 0;
}
	th,td{  
  
  white-space: nowrap;
} 
/* 搜索DIV */
.jk_search {
	display: block;
	width: 99.8%;
	height: 40px;
	background-color: #ccc;
	margin: 0px auto;
	font-size: 12px;
}

.jk_search p {
	height: 40px;
}

.jk_search p select {
	width: 120px;
	height: 24px;
	border: none;
	border-radius: 6px;
	margin-left: 20px;
	padding-left: 6px;
}

/* 搜索按钮 */
#jk_search_btn {
	margin-top: 8px;
	margin-left: 20px;
	border: none;
	background-color: rgb(60, 61, 61);
	width: 60px;
	height: 24px;
	margin-right: 6px;
	color: #fff;
	border-radius: 6px;
}

#jk_search_btn1 {
	margin-top: 8px;
	margin-left: 20px;
	border: none;
	background-color: rgb(60, 61, 61);
	width: 60px;
	height: 24px;
	margin-right: 6px;
	color: #fff;
	border-radius: 6px;
}

/* thead排序按钮 */
.span-up {
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

.span-down {
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

.put_btn, .out_btn {
	border: none;
	background-color: rgb(60, 61, 61);
	height: 24px;
	margin-right: 6px;
	margin-bottom: 2px;
	color: #fff;
	font-size: 12px;
	border-radius: 4px;
}

/* 新增修改弹出框 */
	#out_word,
	#put_word{
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
	#out_word .close,
	#put_word .close{
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
	#out_word .close::before,
	#put_word .close::before {
	    content: "\2716";
	}
	
	/* 新增修改弹出框input */
	#out_word .mws-form-row .out_word_input,
	#put_word .mws-form-row .put_word_input {
		width:300px;
	}
	
	/* 新增修改弹出框label */
	#out_word .mws-form-row label,
	#put_word .mws-form-row label{
		width:100px;
	}
	
	/* 新增修改弹出框确认按钮 */
	#out_word #word_out_btn,
	#put_word #word_put_btn{
		position:relative;
		top:10px;
		left:47%;
	}
	
	#out_word .out_num_sp{
		display:block;
		width:280px;
		height:24px;
		position:absolute;
		top:204px;
		left:150px;
		color:red;
	}

</style>
<script type="text/javascript">
/*  var list = ${list}; */
</script>
</head>
<body >

	<div id="" class="clearfix" style="overflow-x: scroll;min-width: 1700px">

		<div class="mws-panel grid_4 "
			style="width: 48%; padding-left: 12px; margin: 0px 0px 30px 0px; min-width: 800px">
			<div class="mws-panel-header">
				<span class="mws-i-24 i-table-1">备件信息</span>
			</div>
			<div class="jk_search">
				<p>
					<select id="type">
						<option value="全部">品名</option>
						<option value="调节阀">调节阀</option>
						<option value="热量表">热量表</option>
						<option value="换热器">换热器</option>
						<option value="流量表">流量表</option>
						<option value="循环泵">循环泵</option>
						<option value="补水泵">补水泵</option>
						<option value="泄压阀">泄压阀</option>
						<option value="补水阀">补水阀</option>
						<option value="水表">水表</option>

					</select> <input id="jk_search_btn" type="submit" value="搜索" />
				</p>
			</div>
			<div id="monitword_table_body" class="mws-panel-body"
				style="overflow: auto !important; height: 600px;">
				<table class="mws-table">
					<thead>
						<tr>
							<th class="table-th-css">备件名称</th>
							<th class="table-th-css">数量</th>
							<th class="table-th-css">厂商</th>
							<th class="table-th-css">型号</th>
							<th class="table-th-css">预警数量</th>
							<th class="table-th-css">操作</th>
						</tr>
					</thead>
					<tbody id="jkword_body">


					</tbody>
				</table>
			</div>

		</div>
		
		<div class="mws-panel grid_4 "
			style="width: 48%; padding-left: 12px; margin: 0px 0px 30px 0px; min-width: 800px">
			<div class="mws-panel-header">
				<span class="mws-i-24 i-table-1">出入库记录</span>
			</div>
			<div class="jk_search">
				<p>
					<select id="type1">
						<option value="全部">品名</option>
						<option value="调节阀">调节阀</option>
						<option value="热量表">热量表</option>
						<option value="换热器">换热器</option>
						<option value="流量表">流量表</option>
						<option value="循环泵">循环泵</option>
						<option value="补水泵">补水泵</option>
						<option value="泄压阀">泄压阀</option>
						<option value="补水阀">补水阀</option>
						<option value="水表">水表</option>

					</select>
					
					<select id="crk">
						<option value="全部">类型</option>
						<option value="出库">出库</option>
						<option value="入库">入库</option>
						

					</select>
					<span>出入库时间：
						<input type="date" id="startTime"  style="width:120px" value="" />
					</span>
					<span>到
						<input type="date" id="endTime" style="width:120px" value="" />
					</span>
					
					<input id="jk_search_btn1" type="submit" value="搜索" />
				</p>
			</div>
			<div id="monitword_table_body1" class="mws-panel-body"
				style="overflow: auto !important; height: 600px;">
				<table class="mws-table">
					<thead>
						<tr>
						    <th class="table-th-css">设备名称</th>
						    <th class="table-th-css">规格型号</th>
						    <th class="table-th-css">登记人</th>							
							<th class="table-th-css">类型</th>
							
							<th class="table-th-css">出入库数量</th>
							<th class="table-th-css">出入库时间</th>
							
						</tr>
					</thead>
					<tbody id="jkword_body1">


					</tbody>
				</table>
			</div>

		</div>
		
		<div id="put_word">
			<div class="mws-panel grid_4"
				style="width: 500px; min-width: 500px; margin: 100px 30%;">
				<div class="mws-panel-header">
					<span class="mws-i-24 i-pencil">入库信息登记表</span> <span class="close"></span>
				</div>
				<div class="mws-panel-body" style="height: 400px;">
					<form class="mws-form" action="updateGd.action"  method="post">
						<div class="mws-form-inline">
						
							<div class="mws-form-row">
								<label>&emsp;&emsp;备件名称：</label>

								<div class="mws-form-item large">
									<input type="text" class="mws-textinput put_word_input"
										name="" value="" autofocus="autofocus" readonly="readonly" />
								</div>
							</div>

							<div class="mws-form-row">
								<label>&emsp;&emsp;现有数量：</label>

								<div class="mws-form-item large">
									<input type="text" class="mws-textinput put_word_input"
										name="" value="" readonly="readonly" />
								</div>
							</div>

							<div class="mws-form-row">
								<label>&emsp;&emsp;入库数量：</label>

								<div class="mws-form-item large">
									<input type="number" class="mws-textinput put_word_input"
										name="put_num" value="" required="required" />
								</div>
							</div>

							<div class="mws-form-row">
								<label>&emsp;&emsp;入库时间：</label>
								<div class="mws-form-item large">
									<input type="text" class="mws-textinput put_word_input"
										name="put_time" value="" readonly="readonly" required="required" />
								</div>
							</div>
							
							<div class="mws-form-row">
								<label>&emsp;&emsp;申请人：</label>
								<div class="mws-form-item large">
									<input type="text" class="mws-textinput put_word_input"
										name="" value="" required="required" />
								</div>
							</div>
							
							<div class="mws-form-row">
								<label>&emsp;&emsp;用途：</label>
								<div class="mws-form-item large">
									<input type="text" class="mws-textinput put_word_input"
										name="" value="" required="required" />
								</div>
							</div>

						</div>
						<input type="button" id="word_put_btn"
							class="mws-button black" value="确定" />
					</form>
				</div>
			</div>
		</div>
		
		<div id="out_word">
			<div class="mws-panel grid_4"
				style="width: 500px; min-width: 500px; margin: 100px 30%;">
				<div class="mws-panel-header">
					<span class="mws-i-24 i-pencil">出库信息登记表</span> <span class="close"></span>
				</div>
				<div class="mws-panel-body" style="height: 400px;">
					<form class="mws-form" action="updateGd.action"  method="post">
						<div class="mws-form-inline">
						
							<div class="mws-form-row">
								<label>&emsp;&emsp;备件名称：</label>

								<div class="mws-form-item large">
									<input type="text" class="mws-textinput out_word_input"
										name="" value="" autofocus="autofocus" readonly="readonly" />
								</div>
							</div>

							<div class="mws-form-row">
								<label>&emsp;&emsp;现有数量：</label>

								<div class="mws-form-item large">
									<input type="text" class="mws-textinput out_word_input"
										name="" value="" readonly="readonly" />
								</div>
							</div>

							<div class="mws-form-row">
								<label>&emsp;&emsp;出库数量：</label>

								<div class="mws-form-item large">
									<input type="number" class="mws-textinput out_word_input"
										name="out_num" value="" required="required" /><span class="out_num_sp"></span>
								</div>
							</div>

							<div class="mws-form-row">
								<label>&emsp;&emsp;出库时间：</label>
								<div class="mws-form-item large">
									<input type="text" class="mws-textinput out_word_input"
										name="out_time" value="" readonly="readonly" required="required" />
								</div>
							</div>
							
							<div class="mws-form-row">
								<label>&emsp;&emsp;申请人：</label>
								<div class="mws-form-item large">
									<input type="text" class="mws-textinput out_word_input"
										name="" value="" required="required" />
								</div>
							</div>
							
							<div class="mws-form-row">
								<label>&emsp;&emsp;用途：</label>
								<div class="mws-form-item large">
									<input type="text" class="mws-textinput out_word_input"
										name="" value="" required="required" />
								</div>
							</div>

						</div>
						<input type="button" id="word_out_btn"
							class="mws-button black" value="确定" />
					</form>
				</div>
			</div>
		</div>

	</div>

</body>
</html>