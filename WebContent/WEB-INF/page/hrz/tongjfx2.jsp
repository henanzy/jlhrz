
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

<!-- Theme Stylesheet -->
<link rel="stylesheet" type="text/css" href="../css/mws.theme.css"
	media="screen" />

<!-- JavaScript Plugins -->

<script type="text/javascript" src="../js/jquery-1.7.1.min.js"></script>


<script type="text/javascript" src="../js/echarts-3.5.3/highcharts.js"></script>


<style>

	/* 固定表头 */
	.table-th-css {
		position: relative !important;
		top: 0;
	}
	
	
	/* 电话呼入呼出统计报表，各种状态工单统计表搜索div */
	.call-search,
	.word-search{
		display:block;
		width:99.8%;
		height:40px;
		background-color:#ccc;
		margin:0px auto;
		font-size:12px;
	}
	
	.call-search p,
	.word-search p{
		line-height:40px;
	}
	
	.call-search p input,
	.word-search p input{
		height:18px;
		width:120px;
		border:none;
		border-radius:4px;
		padding-left:4px;
	}
	
	/* 搜索开始结束时间 */
	.call_time,
	.word_time{
		margin-left:20px;
	}
	
	/* 搜索状态 */
	.call_type,
	.word_type{
		margin-left:30px
	}
	.call_type select,
	.word_type select{
		width:100px;
		height:18px;
		border:none;
		border-radius:4px;
		padding-left:6px;
	}
	
	/* 搜索导出框 */
	p ._btn input{
		width:50px;
		height:18px;
		background-color:#fff;
		margin-left:30px
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
</style>

</head>
<body>

	<div id="" class="clearfix" style="min-width: 1000px">
	
		
		<div>
		
		<div class="mws-panel grid_8"
				style="width:96%;min-width: 550px;">
				<div class="mws-panel-header">
					<span class="mws-i-24 i-graph">能耗曲线图</span>
				</div>
				
		
				<div class="mws-panel-body">
					<div class="mws-panel-content">
					<div id="Ncontainer" ></div>
				<input type="checkbox" id="yGyl" checked onclick="NcheckboxOnclick(this,1)">一委站
				<input type="checkbox" id="yGwd" checked onclick="NcheckboxOnclick(this,2)">二委站
				<input type="checkbox" id="yHyl" checked onclick="NcheckboxOnclick(this,3)">教育局站
					</div>
				</div>
			</div>
		
			<div class="mws-panel grid_8"
				style="width:96%;min-width: 550px;">
				<div class="mws-panel-header">
					<span class="mws-i-24 i-graph">实时曲线图</span>
				</div>
				
		
				<div class="mws-panel-body"  style="width:100%;">
				<div>
					<!-- <div class="mws-panel-content"> -->
					<div id="container"  style="width:85%; height:450px;float:left;" >
					</div>
					
				<div  style="width:15%; height:450px;float:left; " >
					<select id="wz" >
					<option value="0" >一委站</option>
					<option value="1" >二委站</option>
					<option value="2" selected="selected">教育局站</option>
					</select>
				</div>

				</div>	
				
				
				
				

				</div>
			</div>
		
	       <div class="mws-panel grid_8"
				style="width:96%;min-width: 550px;">
				<div class="mws-panel-header">
					<span class="mws-i-24 i-graph">温度曲线图</span>
				</div>
				<div class="mws-panel-body">
				
				   <div  class="mws-panel-body"  style="width:100%;">
					<div  style="width:85%; height:380px;float:left;" >
					<div id="Lcontainer" style="width: 100%; height: 380px;"></div>
				   </div>
				   
				   <div  style="width:15%; height:380px;float:left; " >
					<select id="wd" onchange="changeValueWd()">
					<option value="0" selected="selected" >一委站</option>
					<option value="1">二委站</option>
					<option value="2">教育局站</option>
					</select>
				   </div>
				
				    <input type="checkbox" id="LyHyl" checked onclick="LcheckboxOnclick(this,1)">一次回温度
				    <input type="checkbox" id="LeHyl" checked onclick="LcheckboxOnclick(this,2)">二次回温度
				    <input type="checkbox" id="qwdHyl" checked onclick="LcheckboxOnclick(this,3)">室外温度
				   	</div>
				</div>
				<p>
			</div>
			
		</div>
	</div>
<script type="text/javascript">
Highcharts.setOptions({
	global: {
		useUTC: false
	}
});
function activeLastPointToolip(chart) {
	var points = chart.series[0].points;
	chart.tooltip.refresh(points[points.length -1]);
}
var chart = Highcharts.chart('container', {
	chart: {
		type: 'spline',
		marginRight: 10,
		events: {
			load: function () {
				var series = this.series[0],
				    series1 = this.series[1],
					chart = this;
				activeLastPointToolip(chart);
				setInterval(function () {
					var x = (new Date()).getTime(), // 当前时间
						y = Math.random();          // 随机值
					series.addPoint([x, y], true, true);
					series1.addPoint([x, Math.random()+2], true, true);
					
					activeLastPointToolip(chart);
				}, 1000);
			}
		}
	},
	title: {
		text: '动态模拟实时数据'
	},
	xAxis: {
		type: 'datetime',
		tickPixelInterval: 150
	},
	yAxis: {
		title: {
			text: null
		}
	},
	tooltip: {
		formatter: function () {
			return '<b>' + this.series.name + '</b><br/>' +
				Highcharts.dateFormat('%Y-%m-%d %H:%M:%S', this.x) + '<br/>' +
				Highcharts.numberFormat(this.y, 2);
		}
	},
	legend: {
		enabled: false
	},
	series: [{
		name: '随机数据',
		data: [{x: 1565343293277, y: 0.521429478925473},{x: 1565343293277, y: 0.521429478925473}]
	},{
		name: '随机数据',
		data: [{x: 1565343293277, y: 0.521429478925473},{x: 1565343293277, y: 0.521429478925473}]
	}]
});
</script>

</body>
</html>