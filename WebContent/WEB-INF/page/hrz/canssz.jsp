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
	
</script>
<body>

	<div id="" class="clearfix" style="overflow-x: hidden;min-width:1650px;height:900px;">


		<p class="mws-report" href="#"
			style="font-size: 14px; border-color: #c5d52b; background: url(../images/core/mws-header-bg.png) repeat-x;">
			<span class="mws-report-icon mws-ic ic-building"></span> <span
				class="mws-report-content" style="margin-top: 10px; color: #C5D52B;">
				报警参数设置  &nbsp;<select style="display:inline" id="hrz" class="csinput">
					<option value="一委站">一委站</option>
					<option value="二委站">二委站</option>
					<option value="教育局站" selected="selected">教育局站</option>
				</select></span>
				
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
					<th class="table-th-css">
					<input class="csinput"  id="ycgsylbjsx" 
						width="120px"><span class="span-up"></span> <span
						class="span-down"><input type="button" 
						 class="mws-button black" value="修改"  onclick="szcs('一次供水压力上限','ycgsylbjsx')" /></span></th>
					<th class="table-th-css">
					<input class="csinput" id="ycgsylbjxx" 
						width="120px"><span class="span-up"></span> <span
						class="span-down"><input type="button" 
						 class="mws-button black" value="修改" onclick="szcs('一次供水压力下限','ycgsylbjxx')"/></span></th>
					<th class="table-th-css">二次除污器出口压力（MPa）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input class="csinput" 
						width="120px"><input type="button" 
						 class="mws-button black" value="修改" /><span class="span-up"></span> <span
						class="span-down"></span></th>
					<th class="table-th-css"><input class="csinput" 
						width="120px"><input type="button" 
						 class="mws-button black" value="修改" /><span class="span-up"></span> <span
						class="span-down"></span></th>

				</tr>

				<tr>
					<th class="table-th-css">一次供水温度（℃）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input  class="csinput" id="ycgswdbjsx"
						width="120px"><input type="button" 
						 class="mws-button black" value="修改" onclick="szcs('一次供水温度上限','ycgswdbjsx')"/><span class="span-up"></span> <span
						class="span-down"></span></th>
					<th class="table-th-css"><input  class="csinput" id="ycgswdbjxx"
						width="120px"><input type="button" 
						 class="mws-button black" value="修改"  onclick="szcs('一次供水温度下限','ycgswdbjxx')"/><span class="span-up"></span> <span
						class="span-down"></span></th>
					<th class="table-th-css">水箱液位（m）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input id="ywsx" class="csinput" id="ywsx"
						width="120px"><input type="button" 
						 class="mws-button black" value="修改" onclick="szcs('液位上限','ywsx')" /><span class="span-up"></span> <span
						class="span-down"></span></th>
					<th class="table-th-css"><input id="ywxx" class="csinput" d="ywxx"
						width="120px"><input type="button"  
						 class="mws-button black" value="修改" onclick="szcs('液位下限','ywxx')"/><span class="span-up"></span> <span
						class="span-down"></span></th>

				</tr>

				<tr>
					<th class="table-th-css">一次回水压力（MPa）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input id="ychsylbjsx" class="csinput"
						width="120px"><input type="button" 
						 class="mws-button black" value="修改" onclick="szcs('一次回水压力上限','ychsylbjsx')" /><span class="span-up"></span> <span
						class="span-down"></span></th>
					<th class="table-th-css"><input id="ychsylbjxx" class="csinput"
						width="120px"><input type="button" 
						 class="mws-button black" value="修改" onclick="szcs('一次回水压力下限','ychsylbjxx')" /><span class="span-up"></span> <span
						class="span-down"></span></th>
					<th class="table-th-css">电压报警界限值（V）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input class="csinput" id="dyjbjxz"
						width="120px"><input type="button" 
						 class="mws-button black" value="修改" onclick="szcs('欠压报警界限值','dyjbjxz')" /><span class="span-up"></span> <span
						class="span-down"></span></th>


				</tr>

				<tr>
					<th class="table-th-css">一次回水温度（℃）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input id="ychswdbjsx" class="csinput"
						width="120px"><input type="button" 
						 class="mws-button black" value="修改" onclick="szcs('一次回水温度上限','ychswdbjsx')" /><span class="span-up"></span> <span
						class="span-down"></span></th>
					<th class="table-th-css"><input id="ychswdbjxx"  class="csinput"
						width="120px"><input type="button" 
						 class="mws-button black" value="修改" onclick="szcs('一次回水温度下限','ychswdbjxx')"  /><span class="span-up"></span> <span
						class="span-down"></span></th>
					<th class="table-th-css">电压报警解除值（V）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input id="dyjbjcz" class="csinput"
						width="120px"><input type="button" 
						 class="mws-button black" value="修改" onclick="szcs('电压报警解除值','dyjbjcz')" /><span class="span-up"></span> <span
						class="span-down"></span></th>


				</tr>

				<tr>
					<th class="table-th-css">二次供水压力（MPa）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input id="ecgsylbjsx" class="csinput"
						width="120px"><input type="button" 
						 class="mws-button black" value="修改"  onclick="szcs('二次供水压力上限','ecgsylbjsx')"/><span class="span-up"></span> <span
						class="span-down"></span></th>
					<th class="table-th-css"><input id="ecgsylbjxx" class="csinput"
						width="120px"><input type="button" 
						 class="mws-button black" value="修改" onclick="szcs('二次供水压力下限','ecgsylbjxx')" /><span class="span-up"></span> <span
						class="span-down"></span></th>


				</tr>

				<tr>
					<th class="table-th-css">二次供水温度（℃）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input id="ecgswdbjsx" class="csinput"
						width="120px"><input type="button" 
						 class="mws-button black" value="修改" onclick="szcs('二次供水温度上限','ecgswdbjsx')"/><span class="span-up"></span> <span
						class="span-down"></span></th>
					<th class="table-th-css"><input id="ecgswdbjxx" class="csinput"
						width="120px"><input type="button" 
						 class="mws-button black" value="修改"  onclick="szcs('二次供水温度下限','ecgswdbjxx')"/><span class="span-up"></span> <span
						class="span-down"></span></th>


				</tr>

				<tr>
					<th class="table-th-css">二次回水压力（MPa）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input id="echsylbjsx" class="csinput"
						width="120px"><input type="button" 
						 class="mws-button black" value="修改" onclick="szcs('二次回水压力上限','echsylbjsx')"/><span class="span-up"></span> <span
						class="span-down"></span></th>
					<th class="table-th-css"><input id="echsylbjxx" class="csinput"
						width="120px"><input type="button" 
						 class="mws-button black" value="修改" onclick="szcs('二次回水压力下限','echsylbjxx')"/><span class="span-up"></span> <span
						class="span-down"></span></th>


				</tr>

				<tr>
					<th class="table-th-css">二次回水温度（℃）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input id="echswdbjsx" class="csinput"
						width="120px"><input type="button" 
						 class="mws-button black" value="修改" onclick="szcs('二次回水温度上限','echswdbjsx')" /><span class="span-up"></span> <span
						class="span-down"></span></th>
					<th class="table-th-css"><input id="echswdbjxx" class="csinput"
						width="120px"><input type="button" 
						 class="mws-button black" value="修改" onclick="szcs('二次回水温度下限','echswdbjxx')"/><span class="span-up"></span> <span
						class="span-down"></span></th>
					<th class="table-th-css"><span class="span-up"></span> <span
						class="span-down"></span></th>
					<th class="table-th-css"><span class="span-up"></span> <span
						class="span-down"></span></th>
					


				</tr>
			</tbody>
		</table>



		<p class="mws-report" href="#"
			style="font-size: 14px; border-color: #c5d52b; background: url(../images/core/mws-header-bg.png) repeat-x;">
			<span class="mws-report-icon mws-ic ic-building"></span> <span
				class="mws-report-content" style="margin-top: 10px; color: #C5D52B;">
				运行参数设置  &nbsp;</span>
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
					<th class="table-th-css">二次回水温度（℃）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input class="csinput" id="echswd"
						width="120px"><input type="button" 
						 class="mws-button black" value="修改" onclick="szcs('二次回水温度设定值','echswd')"/><span class="span-up"></span> <span
						class="span-down"></span></th>
					<th class="table-th-css">开启调节阀时间（时）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input value="6" class="csinput" id="kqtjfsj"
						width="120px"><input type="button" 
						 class="mws-button black" value="修改" onclick="szcs('开启调节阀时间','kqtjfsj')" /><span class="span-up"></span> <span
						class="span-down"></span></th>
					<th class="table-th-css">泄压阀开启上限（Mpa）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input value="0.70" class="csinput" id="xyfkqsx"
						width="120px"><input type="button" 
						 class="mws-button black" value="修改"  onclick="szcs('泄压压力上限','xyfkqsx')"/><span class="span-up"></span> <span
						class="span-down"></span></th>

				</tr>

				<tr>
					<th class="table-th-css">二次供水压力（Mpa）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input value="0.50" class="csinput" id="ecgsyl"
						width="120px"><input type="button"  onclick="szcs('二次供水压力设定值','ecgsyl')"
						 class="mws-button black" value="修改" /><span class="span-up"></span> <span
						class="span-down"></span></th>
					<th class="table-th-css">关闭调节阀时间（时）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input value="18" class="csinput" id="gbtjfsj"
						width="120px"><input type="button" 
						 class="mws-button black" value="修改" onclick="szcs('关闭调节阀时间','gbtjfsj')" /><span class="span-up"></span> <span
						class="span-down"></span></th>
					<th class="table-th-css">泄压阀关闭下限（Mpa）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input value="0.45" class="csinput" id="xyfgbxx"
						width="120px"><input type="button" 
						 class="mws-button black" value="修改" onclick="szcs('泄压压力下限','xyfgbxx')"/><span class="span-up"></span> <span
						class="span-down"></span></th>

				</tr>

				<tr>
					<th class="table-th-css">二次回水压力（Mpa）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input  class="csinput" id="echsyl"
						width="120px"><input type="button"  
						 class="mws-button black" value="修改" onclick="szcs('二次回水压力设定值','echsyl')" /><span class="span-up"></span> <span
						class="span-down"></span></th>
					<th class="table-th-css">补泵工频启动频率（HZ）<span class="span-up"></span> 
						<span class="span-down"></span></th>
					<th class="table-th-css"><input  class="csinput" id="bbgpqdpl"
						width="120px"><input type="button" 
						 class="mws-button black" value="修改" onclick="szcs('启动工频补水泵频率','bbgpqdpl')" /><span class="span-up"></span> <span
						class="span-down"></span></th>
					<th class="table-th-css">允许启动补水泵限值（m）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input id="" class="csinput"
						width="120px"><input type="button" 
						 class="mws-button black" value="修改"  /><span class="span-up"></span> <span
						class="span-down"></span></th>

				</tr>

				<tr>
					<th class="table-th-css">二次回水补水上限（Mpa）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input id="echsbssx" class="csinput"
						width="120px"><input type="button" 
						 class="mws-button black" value="修改" onclick="szcs('二次回水补水压力上限','echsbssx')" /><span class="span-up"></span> <span
						class="span-down"></span></th>
					<th class="table-th-css">补泵工频停止频率（HZ）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input id="bbgptzpl" class="csinput"
						width="120px"><input type="button" 
						 class="mws-button black" value="修改" onclick="szcs('停止工频补水泵频率','bbgptzpl')"/><span class="span-up"></span> <span
						class="span-down"></span></th>
					<th class="table-th-css">水箱最低液位限值（m）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input id="sxzdywxz" class="csinput"
						width="120px"><input type="button"  onclick="szcs('液位下下限','sxzdywxz')"
						 class="mws-button black" value="修改" /><span class="span-up"></span> <span
						class="span-down"></span></th>

				</tr>

				<tr>
					<th class="table-th-css">二次回水补水下限（Mpa）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input id="echsbsxx" class="csinput"
						width="120px"><input type="button" 
						 class="mws-button black" value="修改" onclick="szcs('二次回水补水压力下限','echsbsxx')"/><span class="span-up"></span> <span
						class="span-down"></span></th>
					<th class="table-th-css">启动工频补水泵时间（s）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input id="qdgpbsbsj" class="csinput"
						width="120px"><input type="button" 
						 class="mws-button black" value="修改" onclick="szcs('启动工频补水泵时间','qdgpbsbsj')"/><span class="span-up"></span> <span
						class="span-down"></span></th>
					<th class="table-th-css">二次回水停机压力（Mpa）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input id="echstjyl" class="csinput"
						width="120px"><input type="button" 
						 class="mws-button black" value="修改"  onclick="szcs('二次回水停机压力','echstjyl')"/><span class="span-up"></span> <span
						class="span-down"></span></th>

				</tr>

				<tr>
					<th class="table-th-css">水阀开关上限（m）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input id="sfkqsx" class="csinput"
						width="120px"><input type="button" 
						 class="mws-button black" value="修改" /><span class="span-up"></span> <span
						class="span-down"></span></th>
					<th class="table-th-css">停止工频补水泵时间（s）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input id="tzgpbsbsj" class="csinput"
						width="120px"><input type="button" onclick="szcs('停止工频补水泵时间','tzgpbsbsj')"
						 class="mws-button black" value="修改" /><span class="span-up"></span> <span
						class="span-down"></span></th>

				</tr>

				<tr>
					<th class="table-th-css">水阀开关下限（m）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input id="sfgbxx" class="csinput"
						width="120px"><input type="button" 
						 class="mws-button black" value="修改" /><span class="span-up"></span> <span
						class="span-down"></span></th>
					<th class="table-th-css">调节阀最低开度（%）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input id="tjfzdkd" class="csinput"
						width="120px"><input type="button" 
						 class="mws-button black" value="修改" onclick="szcs('调节阀最低开度','tjfzdkd')" /><span class="span-up"></span> <span
						class="span-down"></span></th>
					<th class="table-th-css"><span class="span-up"></span> <span
						class="span-down"></span></th>
					

				</tr>
			</tbody>
		</table>
	</div>


<script type="text/javascript">
var ints=self.setInterval("csh()",60000);
function csh(){
	 var hrz=$("#hrz").val();
	$.ajax({
		url:"<%=basePath%>OpcCon/csxs.action",
		async:false,
		dataType:"json",
		data:{	
			"hrz":"吉利."+hrz+".写数据.",
		},
		success:function(data){
			var map=data.map;
			
			$("#ycgsylbjsx").val(map.一次供水压力上限);
			$("#ycgsylbjxx").val(map.一次供水压力下限);
			$("#ycgswdbjsx").val(map.一次供水温度上限);
			$("#ycgswdbjxx").val(map.一次供水温度下限);
			
			$("#ychsylbjxx").val(map.一次回水压力下限);
			$("#ychsylbjsx").val(map.一次回水压力上限);
			$("#ychswdbjsx").val(map.一次回水温度上限);
			$("#ychswdbjxx").val(map.一次回水温度下限);
			
			
			$("#ecgsylbjsx").val(map.二次供水压力上限);
			$("#ecgsylbjxx").val(map.二次供水压力下限);
			$("#ecgswdbjsx").val(map.二次供水温度上限);
			$("#ecgswdbjxx").val(map.二次供水温度下限);
			
			$("#echsylbjxx").val(map.二次回水压力下限);
			$("#echsylbjsx").val(map.二次回水压力上限);
			$("#echswdbjsx").val(map.二次回水温度上限);
			$("#echswdbjxx").val(map.二次回水温度下限);
			$("#ywsx").val(map.液位上限);
			$("#ywxx").val(map.液位下限);
			$("#dyjbjxz").val(map.欠压报警界限值);
			$("#dyjbjcz").val(map.电压报警解除值);
			$("#echswd").val(map.二次回水温度设定值);
			$("#ecgsyl").val(map.二次供水压力设定值);
			$("#echsyl").val(map.二次回水压力设定值);
			$("#echsbssx").val(map.二次回水补水压力上限);
			$("#echsbsxx").val(map.二次回水补水压力下限);
			$("#kqtjfsj").val(map.开启调节阀时间);
			$("#gbtjfsj").val(map.关闭调节阀时间);
			
			$("#bbgpqdpl").val(map.启动工频补水泵频率);
			$("#bbgptzpl").val(map.停止工频补水泵频率);
			$("#qdgpbsbsj").val(map.启动工频补水泵时间);
			$("#tzgpbsbsj").val(map.停止工频补水泵时间);
			$("#xyfkqsx").val(map.泄压压力上限);
			$("#xyfgbxx").val(map.泄压压力下限);
			$("#sxzdywxz").val(map.液位下下限);
			$("#echstjyl").val(map.二次回水停机压力);
			$("#tjfzdkd").val(map.调节阀最低开度);
			
			
		}
		
	});	
}
	
csh();
$("#hrz").change(function(){
	 csh();
	});
function szcs(name,id){
	 
		 
		  var val = $("#"+id).val();
		  var hrz=$("#hrz").val();
		
			$.ajax({
				url : "<%=basePath%>OpcCon/cssz.action",
				async : false,
				dataType : "json",
				data : {
					"name" : name,
					"id" : id,
					"val":val,
					"hrz":"吉利."+hrz+".写数据."
				},
				success : function(data) {
					
					
					var val = eval(data).value;
					var id = eval(data).id;
					$("#"+id).val(val);	
				
				}
		}) 

}
</script>
</body>
</html>