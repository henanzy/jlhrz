
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
					<span class="mws-i-24 i-graph">能耗曲线图&nbsp;&nbsp;&nbsp;<input type="date" id="startTime"  style="width:140px" value="" />-
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
function csh (){
	
	
	var opt = {
	        chart: {
	            type: 'spline',// 指定图表的类型，默认是折线图（line）,
	            events: {
	    				load: function () {
	    					$.ajax({
	    						url : getRootPath()+"/OpcCon/qxsj.action", 
	    						async : false,
	    						dataType : "json",
	    						data : {
	    							"hrz":"吉利.教育局站.读数据.",
	    						},
	    						success : function(data) {
	    							
	    							map=data.map;
	    						}
	    					});
	    				 var series0 = this.series[0],
	    					 series1 = this.series[1],
	    					 series2 = this.series[2],
	    					 series3 = this.series[3],
	    					 series4 = this.series[4],
	    					 series5 = this.series[5],
	    					 series6 = this.series[6],
	    					 series7 = this.series[7], 
	    					 chart = this;
	    					
	    					activeLastPointToolip(chart); 
	    					setInterval(function () {
	    						var x =FormatDate() // 当前时间
	    							          // 随机值
	    					    
	    						series0.addPoint([x, map.一次回水压力], true, true);
	    						series1.addPoint([x, map.一次回水温度], true, true);
	    						series2.addPoint([x, map.一次供水压力], true, true);
	    						series3.addPoint([x, map.一次供水温度], true, true);
	    						series4.addPoint([x, map.二次供水压力], true, true);
	    						series5.addPoint([x, map.二次供水温度], true, true);
	    						series6.addPoint([x, map.二次回水压力], true, true);
	    						series7.addPoint([x, map.二次回水温度], true, true); 
	    						chart.redraw();
	    						 activeLastPointToolip(chart);
	    					}, 2000);
	    				}
	    			},
	        },
	        title:{
	        	text:null
	        },
	        
	        tooltip: {
				crosshairs: [{
					width: 1,
					color:'#aaaaaa'
				}],
				shared: true
			},
	        xAxis: {  // x 轴分类
		       
	        },
	        yAxis: {
	            title: {
	                text: null
	                // y 轴标题
	            }
	        }
	    };
	
	$.ajax({
		url : getRootPath()+"/OpcCon/selQx.action", 
		async : false,
		dataType : "json",
		data : {
			"hrz":$("#hrz").val(),
		},
		success : function(data) {
			
			dataList=data.list;
		}
	});
	 var ychsyl = [];
	 var ycgsyl = [];
	 var ychswd = [];
	 var ycgswd = [];
	 var ecgsyl = [];
	 var ecgswd = [];
	 var echsyl = [];
	 var echswd = [];
	 var time = [];
	 for (var i = 0 ; i < dataList.length ; i ++) {
			var arr = [];
			/*arr1[0] = json[i].id;*/
			ychsyl.push(parseFloat(dataList[i].ychsyl));
			ycgsyl.push(parseFloat(dataList[i].ycgsyl));
			ychswd.push(parseFloat(dataList[i].ychswd));
			ycgswd.push(parseFloat(dataList[i].ycgswd));
			ecgsyl.push(parseFloat(dataList[i].ecgsyl));
			ecgswd.push(parseFloat(dataList[i].ecgswd));
			echsyl.push(parseFloat(dataList[i].echsyl));
			echswd.push(parseFloat(dataList[i].echswd));
			
			time.push(dataList[i].time);
			
		};
	var data = {name:$("#hrz").val(),ychsyl:ychsyl,ycgsyl:ycgsyl,ecgsyl:ecgsyl,ecgswd:ecgswd,echsyl:echsyl,echswd:echswd};
	
	opt.xAxis = {
			title: {
				text: '时间'
			},
			categories: time,
			tickInterval: 10,
			labels: {
			   
			  }
		};
	opt.series = [];
	
	opt.series.push({
				 name:"一次回水压力",
				 data:data.ychsyl,
				 tooltip : {
						valueSuffix : 'Mpa'
					}	,marker: {

			             enabled: false,
			         },		 
			 });
	  opt.series.push({ 
		 name:"一次回水温度",
		 data:data.ychswd,
		 tooltip : {
				valueSuffix : 'Mpa'
			}	,marker: {

	             enabled: false,
	         },		 
	 });
	opt.series.push({                       
				 name:"一次供水压力",
				 data:data.ycgsyl,
				 tooltip : {
						valueSuffix : 'Mpa'
					}	,marker: {

			             enabled: false,
			         },		 
			 });
	  opt.series.push({                       
			 name:"一次供水温度",
			 data:data.ycgswd,
			 tooltip : {
					valueSuffix : 'Mpa'
				}	,marker: {

		             enabled: false,
		         },		 
		 });
	opt.series.push({
				 name:"二次供水压力",
				 data:data.ecgsyl,
				 tooltip : {
						valueSuffix : 'Mpa'
					}	,marker: {

			             enabled: false,
			         },		 
			 });
			 
	opt.series.push({
				 name:"二次供水温度",
				 data:data.ecgswd,
				 tooltip : {
						valueSuffix : '℃'
					}	,marker: {

			             enabled: false,
			         },		 
			 });

	opt.series.push({
				 name:"二次回水压力",
				 data:data.echsyl,
				 tooltip : {
						valueSuffix : 'Mpa'
					}	,marker: {

			             enabled: false,
			         },		 
			 });
			 
	opt.series.push({
				 name:"二次回水温度",
				 data:data.echswd,
				 tooltip : {
						valueSuffix : '℃'
					}	,marker: {

			             enabled: false,
			         },		 
			 }); 
	// 图表初始化函数
	var chart = Highcharts.chart("container", opt);
}
//csh();
</script>

</body>
</html>