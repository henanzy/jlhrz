<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
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
<link rel="stylesheet" type="text/css"
	href="../plugins/spinner/spinner.css" media="screen" />
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
<script type="text/javascript" src="../plugins/spinner/ui.spinner.js"></script>
<script type="text/javascript" src="../js/jquery-ui.js"></script>

<script type="text/javascript" src="../js/mws.js"></script>
<script type="text/javascript" src="../js/demo.js"></script>
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

.csinput {
	text-align: center;
	border-radius: 5px;
	height: 24px;
}
	th,td{  
  
  white-space: nowrap;
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

table thead tr {
	height: 40px;
	line-height: 40px;
}

table thead tr th {
	border-right: 1px dashed #ccc;
}

table tbody{
width:100%;
}

table tbody tr {
	height: 40px;
	line-height: 40px;
}

table tbody tr input {
	margin-top: 6px;
}

th {
	width: 16%;
	text-align: center;
}
</style>

</head>

<script type="text/javascript">
	function cstj() {
		alert("参数修改成功！")
	}
</script>
<body>

	<div id="" class="clearfix" style="overflow-x: hidden;min-width:1150px;height:800px;">


		<p class="mws-report" href="#"
			style="font-size: 14px; border-color: #c5d52b; background: url(../images/core/mws-header-bg.png) repeat-x;">
			<span class="mws-report-icon mws-ic ic-building"></span> <span
				class="mws-report-content" style="margin-top: 10px; color: #C5D52B;">
				报警参数设置 </span>
		</p>

		<table>
			<thead>
				<tr>
					<th class="table-th-css">参数名称</th>
					<th class="table-th-css">上限值<span class="span-up"></span> <span
						class="span-down"></span></th>
					<th class="table-th-css">下限值<span class="span-up"></span> <span
						class="span-down"></span></th>
					<th class="table-th-css">参数名称<span class="span-up"></span> <span
						class="span-down"></span></th>
					<th class="table-th-css">上限值<span class="span-up"></span> <span
						class="span-down"></span></th>
					<th class="table-th-css">下限值<span class="span-up"></span> <span
						class="span-down"></span></th>


				</tr>
			</thead>
			<tbody>
				<tr>
					<th style="width: 200px; text-align: center;">一次供水压力（MPa）<span
						class="span-up"></span> <span class="span-down"></span></th>
					<th class="table-th-css"><input class="csinput" value="1.00"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span></th>
					<th class="table-th-css"><input class="csinput" value="0.00"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span></th>
					<th class="table-th-css">二次除污器出口压力（MPa）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input class="csinput" value="1.00"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span></th>
					<th class="table-th-css"><input class="csinput" value="0.00"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span></th>

				</tr>

				<tr>
					<th class="table-th-css">一次供水温度（℃）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input value="100.00" class="csinput"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span></th>
					<th class="table-th-css"><input value="0.00" class="csinput"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span></th>
					<th class="table-th-css">水箱液位（m）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input value="2.00" class="csinput"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span></th>
					<th class="table-th-css"><input value="0.00" class="csinput"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span></th>

				</tr>

				<tr>
					<th class="table-th-css">一次回水压力（MPa）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input value="1.00" class="csinput"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span></th>
					<th class="table-th-css"><input value="0.00" class="csinput"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span></th>
					<th class="table-th-css">电压报警界限值（V）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input class="csinput" value="210.00"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span></th>


				</tr>

				<tr>
					<th class="table-th-css">一次回水温度（℃）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input value="80.00" class="csinput"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span></th>
					<th class="table-th-css"><input value="0.00" class="csinput"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span></th>
					<th class="table-th-css">电压报警解除值（V）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input value="220.00" class="csinput"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span></th>


				</tr>

				<tr>
					<th class="table-th-css">二次供水压力（MPa）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input value="1.00" class="csinput"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span></th>
					<th class="table-th-css"><input value="0.00" class="csinput"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span></th>


				</tr>

				<tr>
					<th class="table-th-css">二次供水温度（℃）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input value="80.00" class="csinput"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span></th>
					<th class="table-th-css"><input value="0.00" class="csinput"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span></th>


				</tr>

				<tr>
					<th class="table-th-css">二次回水压力（MPa）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input value="1.00" class="csinput"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span></th>
					<th class="table-th-css"><input value="0.00" class="csinput"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span></th>


				</tr>

				<tr>
					<th class="table-th-css">二次供水温度（℃）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input value="80.00" class="csinput"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span></th>
					<th class="table-th-css"><input value="0.00" class="csinput"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span></th>
					<th class="table-th-css"><span class="span-up"></span> <span
						class="span-down"></span></th>
					<th class="table-th-css"><span class="span-up"></span> <span
						class="span-down"></span></th>
					<th class="table-th-css"><input type="submit" id="cstj"
						onclick="cstj()" class="mws-button black" value="提交" /></span></th>


				</tr>
			</tbody>
		</table>



		<p class="mws-report" href="#"
			style="font-size: 14px; border-color: #c5d52b; background: url(../images/core/mws-header-bg.png) repeat-x;">
			<span class="mws-report-icon mws-ic ic-building"></span> <span
				class="mws-report-content" style="margin-top: 10px; color: #C5D52B;">
				运行参数设置 </span>
		</p>
		<table>
			<thead>
				<tr>
					<th class="table-th-css">参数名称</th>
					<th class="table-th-css">数值</th>
					<th class="table-th-css">参数名称</th>
					<th class="table-th-css">数值</th>
					<th class="table-th-css">参数名称</th>
					<th class="table-th-css">数值</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th class="table-th-css">二次供水温度（℃）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input value="40.00" class="csinput"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span></th>
					<th class="table-th-css">开启调节阀时间（时）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input value="6" class="csinput"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span></th>
					<th class="table-th-css">泄压阀开启上限（Mpa）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input value="0.70" class="csinput"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span></th>

				</tr>

				<tr>
					<th class="table-th-css">二次供水压力（Mpa）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input value="0.50" class="csinput"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span></th>
					<th class="table-th-css">关闭调节阀时间（时）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input value="18" class="csinput"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span></th>
					<th class="table-th-css">泄压阀关闭下限（Mpa）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input value="0.45" class="csinput"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span></th>

				</tr>

				<tr>
					<th class="table-th-css">二次回水压力（Mpa）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input value="0.40" class="csinput"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span></th>
					<th class="table-th-css">补泵工频启动频率（HZ）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input value="48" class="csinput"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span></th>
					<th class="table-th-css">允许启动补水泵限值（m）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input value="0.70" class="csinput"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span></th>

				</tr>

				<tr>
					<th class="table-th-css">二次回水补水上限（Mpa）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input value="0.45" class="csinput"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span></th>
					<th class="table-th-css">补泵工频停止频率（HZ）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input value="35" class="csinput"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span></th>
					<th class="table-th-css">水箱最低液位限值（m）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input value="0.50" class="csinput"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span></th>

				</tr>

				<tr>
					<th class="table-th-css">二次回水补水下限（Mpa）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input value="0.35" class="csinput"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span></th>
					<th class="table-th-css">启动工频补水泵时间（s）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input value="300" class="csinput"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span></th>
					<th class="table-th-css">二次回水停机压力（Mpa）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input value="0.00" class="csinput"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span></th>

				</tr>

				<tr>
					<th class="table-th-css">水阀开关上限（m）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input value="1.50" class="csinput"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span></th>
					<th class="table-th-css">停止工频补水泵时间（s）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input value="30" class="csinput"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span></th>

				</tr>

				<tr>
					<th class="table-th-css">水阀开关下限（m）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input value="0.70" class="csinput"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span></th>
					<th class="table-th-css">调节阀最低开度（%）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input value="20" class="csinput"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span></th>
					<th class="table-th-css"><span class="span-up"></span> <span
						class="span-down"></span></th>
					<th class="table-th-css"><input type="submit" id="cstj"
						onclick="cstj()" class="mws-button black" value="提交" /></span></th>

				</tr>
			</tbody>
		</table>
	</div>



</body>
</html>