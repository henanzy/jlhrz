
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
<script type="text/javascript" src="../js/tjfx.js"></script> 

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
				  <span class="mws-i-24 i-graph">能耗曲线图&nbsp;&nbsp;&nbsp;
				  <select id="hrz" style="size:15px">
                       
                       	<option value="教育局站">教育局站</option>
                       	<option value="一委站">一委站</option>
                       	<option value="二委站">二委站</option>
                    </select><input type="date" id="startTime"  style="width:140px" value="" />-
                  <input type="date" id="endTime" style="width:140px" value="" />&nbsp;<input id="search_btn" type="submit" style="size: 10px" value="搜索" /></span>
					
				</div>
				
		
				<div class="mws-panel-body" style="width:96%;min-width: 550px; height:500px" >
					<div class="mws-panel-content">
					<div id="Ncontainer" ></div>
			
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
					<div id="container"  style="width:96%; height:450px;float:left;" >
					</div>
					
				

				</div>	
				
				
				
				

				</div>
			</div>
		<div class="mws-panel grid_8"
				style="width:96%;min-width: 550px;">
				<div class="mws-panel-header">
					<span class="mws-i-24 i-graph">供热预测</span>
				</div>
				
		
				<div class="mws-panel-body" style="width:96%;min-width: 550px; height:500px" >
					<div class="mws-panel-content">
					<div id="Tqcontainer" ></div>
			
					</div>
				</div>
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
	
	var points0 = chart.series[0].points;
	console.log(points0[points0.length -1]);
	chart.tooltip.refresh(points0[points0.length -1]);
	
	var points1 = chart.series[1].points;
	chart.tooltip.refresh(points1[points1.length -1]);
	
	var points2 = chart.series[2].points;
	chart.tooltip.refresh(points2[points2.length -1]);
	
	var points3 = chart.series[3].points;
	chart.tooltip.refresh(points3[points3.length -1]);
	
	var points4 = chart.series[4].points;
	chart.tooltip.refresh(points4[points4.length -1]);
	
	var points5 = chart.series[5].points;
	chart.tooltip.refresh(points5[points5.length -1]);
	
	var points6 = chart.series[6].points;
	chart.tooltip.refresh(points6[points6.length -1]);
	
	var points7 = chart.series[7].points;
	chart.tooltip.refresh(points7[points7.length -1]);
}

function FormatDate() {
	var date = new Date();
	return date.getFullYear() + "-" + (date.getMonth() + 1) + "-"
			+ date.getDate() + " " + date.getHours() + ":"
			+ date.getMinutes() + ":" + date.getSeconds();
}
var ints=self.setInterval("csh()",1000);
function csh (){
	var dataList=[];
	var snwd=[];
	 var ychsyl = [];
	 var ycgsyl = [];
	 var ychswd = [];
	 var ycgswd = [];
	 var ecgsyl = [];
	 var ecgswd = [];
	 var echsyl = [];
	 var echswd = [];
	$.ajax({
		url : getRootPath()+"/OpcCon/qxsj.action", 
		async : false,
		dataType : "json",
		data : {
			"hrz":"吉利.教育局站.读数据.",
		},
		success : function(data) {
			
			map=data.map;
			console.log(map);
			snwd.push(parseFloat(map.室内温度));
			ycgsyl.push(parseFloat(map.一次供水压力));
			ycgswd.push(parseFloat(map.一次供水温度));
			ychsyl.push(parseFloat(map.一次回水压力));
			ychswd.push(parseFloat(map.一次回水温度));
			ecgsyl.push(parseFloat(map.二次供水压力));
			ecgswd.push(parseFloat(map.二次供水温度));
			echsyl.push(parseFloat(map.二次回水压力));
			echswd.push(parseFloat(map.二次回水温度));
			
		}
	});
	
	

	
	var chart = Highcharts.chart('container',{
	 	chart: {
	 		type: 'column'
	 	},
	 	title: {
	 		text: '实时数据柱状图'
	 	},
	 	subtitle: {
	 		text: ''
	 	},
	 	xAxis: {

	 		//categories: ['室内温度','一次供水压力','一次供水温度','一次回水压力','一次回水温度','二次供水压力','二次供水温度','二次回水压力','二次回水温度' ],
	 		crosshair: true
	 	},
	 	yAxis: [{
	 		min: 0,
	 		title: {
	 			text: '温度'
	 		},opposite: true
	 	},{
	 		min: 0,
	 		title: {
	 			text: '压力'
	 		}
	 	}],
	 	tooltip: {
	 		// head + 每个 point + footer 拼接成完整的 table
	 		headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
	 		pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
	 		'<td style="padding:0"><b>{point.y:.1f} </b></td></tr>',
	 		footerFormat: '</table>',
	 		shared: true,
	 		useHTML: true
	 	},

	 	plotOptions: {
			column: {
				// 关于柱状图数据标签的详细配置参考：https://api.hcharts.cn/highcharts#plotOptions.column.dataLabels
				dataLabels: {
					enabled: true,
					// verticalAlign: 'top', // 竖直对齐方式，默认是 center
					inside: true
				}
			}
		},

	 	series:  [{
	 		name: '室内温度',
	 		data: snwd,
	 		animation: false,
	 		 yAxis : 0,
    		 tooltip : {
    				valueSuffix : '℃'
    			}	,
	 	},
	 	{
	 		name: '一次供水温度',
	 		data: ycgswd,
	 		animation: false,
	 		 yAxis : 0,
    		 tooltip : {
    				valueSuffix : '℃'
    			}	,
	 	},
	 	{
	 		name: '一次回水温度',
	 		data: ychswd,
	 		animation: false,
	 		 yAxis : 0,
    		 tooltip : {
    				valueSuffix : '℃'
    			}	,
	 	},
	 	{
	 		name: '一次供水压力',
	 		data: ycgsyl,
	 		animation: false,
	 		 yAxis : 1,
    		 tooltip : {
    				valueSuffix : 'Mpa'
    			}	,
	 	}
	 	,
	 	{
	 		name: '一次回水压力',
	 		data: ychsyl,
	 		animation: false,
	 		 yAxis : 1,
    		 tooltip : {
    				valueSuffix : 'Mpa'
    			}	,
	 	},
	 	{
	 		name: '二次供水温度',
	 		data: ecgswd,
	 		animation: false,
	 		 yAxis : 0,
    		 tooltip : {
    				valueSuffix : '℃'
    			}	,
	 	},
	 	{
	 		name: '二次回水温度',
	 		data: echswd,
	 		animation: false,
	 		 yAxis : 0,
    		 tooltip : {
    				valueSuffix : '℃'
    			}	,
	 	},
	 	{
	 		name: '二次供水压力',
	 		data: ecgsyl,
	 		animation: false,
	 		 yAxis : 1,
    		 tooltip : {
    				valueSuffix : 'Mpa'
    			}	,
	 	}
	 	,
	 	{
	 		name: '二次回水压力',
	 		data: echsyl,
	 		animation: false,
	 		 yAxis : 1,
    		 tooltip : {
    				valueSuffix : 'Mpa'
    			}	,
	 	}]
	 });
}
csh();
</script>

</body>
</html>