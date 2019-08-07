
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

<script src="../js/echarts-3.5.3/highcharts.js"></script>


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
					<select id="wz" onchange="changeValue()">
					<option value="0" selected="selected" >一委站</option>
					<option value="1">二委站</option>
					<option value="2">教育局站</option>
					</select>
				</div>

				</div>	
				
				
				
				<input type="checkbox" id="yGyl" checked onclick="checkboxOnclick(this,1)">一次供压力
				<input type="checkbox" id="yGwd" checked onclick="checkboxOnclick(this,2)">一次回压力
				<input type="checkbox" id="eGyl" checked onclick="checkboxOnclick(this,3)">二次供压力
			    <input type="checkbox" id="eGwd" checked onclick="checkboxOnclick(this,4)">二次回压力
 				<input type="checkbox" id="eGll" checked onclick="checkboxOnclick(this,5)">二次流量
 				 <input type="checkbox" id="eGrl" checked onclick="checkboxOnclick(this,6)">一次热量
  				 <input type="checkbox" id="eGsb" checked onclick="checkboxOnclick(this,7)">补水水表
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

var Nchart = Highcharts.chart('Ncontainer', {
	title: {
		 text: '能耗数据' 
	},
	subtitle: {
		text: ''
	},
    xAxis: {
    	 labels: {
             formatter: function() {
                 return dateFormat(this.value); // 
             }
         }

    },
	yAxis: {
		title: {
			/* text: '就业人数' */
		},
    max:1, // 定义Y轴 最大值  
    min:0, // 定义最小值  
    minPadding: 0.1,   
    maxPadding: 0.1,  
    tickInterval:0.1, // 刻度值  
	plotLines : [ { //plotLines：标示线
	value : 0.38, //定义在哪个值上显示标示线，这里是在x轴上刻度为3的值处垂直化一条线
	width : 2, //标示线的宽度，2px
	dashStyle : 'solid', //默认值是solid实线，这里定义为虚线
	color : 'red',//线的颜色，定义为红色
} ]
	},
	legend: {
		layout: 'vertical',
		align: 'right',
		verticalAlign: 'middle'
	},
	plotOptions: {
		series: {
			label: {
				connectorAllowed: false
			},
			/* pointStart: 2012 */
		}
	},
	series: [],
	credits: {enabled: false},
	responsive: {
		rules: [{
			condition: {
				maxWidth: 500
			},
			chartOptions: {
				legend: {
					layout: 'horizontal',
					align: 'center',
					verticalAlign: 'bottom'
				}
			}
		}]
	}
});


/* [[2018-01-01,123],[2012-01-17,156],[2012-02-01,177],[2012-02-28,176][2012-03-05,156]] */
Nchart.addSeries({                        
	id:1,
	name: "一委站",
	data: [[Date.UTC(2018,11,15),0.27],[Date.UTC(2018,11,20),0.27], [Date.UTC(2018,11,27),0.20],  [Date.UTC(2018,12,04),0.21], [Date.UTC(2018,12,11),0.22], [Date.UTC(2018,12,18),0.23],[Date.UTC(2018,12,25),0.25], [Date.UTC(2019,01,01),0.33],[Date.UTC(2019,01,08),0.38], [Date.UTC(2019,01,15),0.25]]
}, false);
Nchart.addSeries({                        
	id:1,
	name: "二委站",
	data: [[Date.UTC(2018,11,15),0.25],[Date.UTC(2018,11,20),0.22], [Date.UTC(2018,11,27),0.29],  [Date.UTC(2018,12,04),0.23], [Date.UTC(2018,12,11),0.26], [Date.UTC(2018,12,18),0.22],[Date.UTC(2018,12,25),0.26], [Date.UTC(2019,01,01),0.35],[Date.UTC(2019,01,08),0.30], [Date.UTC(2019,01,15),0.22]]
}, false);

Nchart.addSeries({                        
	id:1,
	name: "教育局站",
	data: [[Date.UTC(2018,11,15),0.26],[Date.UTC(2018,11,20),0.21], [Date.UTC(2018,11,27),0.23],  [Date.UTC(2018,12,04),0.22], [Date.UTC(2018,12,11),0.29], [Date.UTC(2018,12,18),0.21],[Date.UTC(2018,12,25),0.24], [Date.UTC(2019,01,01),0.32],[Date.UTC(2019,01,08),0.33], [Date.UTC(2019,01,15),0.27]]
}, false);
Nchart.redraw();

function dateFormat(time){
    var now = new Date();
    now.setTime(time);
    return now.getFullYear()+"-"+(now.getMonth()+1)+"-"+(now.getDate()); 
}


var chart = Highcharts.chart('container', {
	title: {
		 text: '实时数据' 
	},
	subtitle: {
		text: ''
	},
	
	yAxis: {
		title: {
			/* text: '就业人数' */
		}
	},
	legend: {
		layout: 'vertical',
		align: 'right',
		verticalAlign: 'middle'
	},
	plotOptions: {
		series: {
			label: {
				connectorAllowed: false
			},
			pointStart: 2012
		}
	},
	series: [],
	credits: {enabled: false},
	responsive: {
		rules: [{
			condition: {
				maxWidth: 500
			},
			chartOptions: {
				legend: {
					layout: 'horizontal',
					align: 'center',
					verticalAlign: 'bottom'
				}
			}
		}]
	}
});



function changeValue(){
	var index=document.getElementById("wz").selectedIndex;//获取当前选择项的索引.
	var series=chart.series; 
	
	while(series.length > 0) {
        series[0].remove(false);
    }
	   chart.redraw();
	if(index==0){ //一委站
		 chart.addSeries({                        
				id:1,
				name: "一次供压力",
				data: [0.024036, 0.024615, 0.023458, 0.024543, 0.024398, 0.024398, 0.020255,0.020038,0.020689,0.018446,0.020978,0.020978]
			}, false);
		chart.addSeries({                        
				id:1,
				name: "一次回压力",
				data:  [0.019097, 0.019314, 0.020761, 0.020689, 0.019821, 0.019531, 0.020255,0.020038,0.019097,0.019531,0.018374,0.020038]
			}, false);
		chart.addSeries({                        
				id:1,
				name: "二次供压力",
				data: [0.056785, 0.056207, 0.05599, 0.056858, 0.056134,0.056134,0.055628,0.056134,0.0557,0.056279,0.056496,0.055917]
			}, false);
		chart.addSeries({                        
				id:1,
				name: "二次回压力",
				data: [0.054181, 0.052807, 0.054109, 0.053241, 0.055628, 0.053241,0.054109,0.054181,0.055845,0.054543,0.05476,0.056134]
			}, false);
		chart.addSeries({                        
			id:1,
			name: "一次热量",
			data: [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
		}, false);
		chart.addSeries({                        
			id:1,
			name: "二次流量",
			data:[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
		}, false);
		chart.addSeries({                        
			id:1,
			name: "补水表",
			data: [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
		}, false);
		chart.redraw();
	}else if(index==1){//二委站
		 chart.addSeries({                        
				id:1,
				name: "一次供压力",
				data: [0.024036, 0.024615, 0.023458, 0.024543, 0.024398, 0.024398, 0.020255,0.020038,0.020689,0.018446,0.020978,0.020978]
			}, false);
		chart.addSeries({                        
				id:1,
				name: "一次回压力",
				data:  [0.019097, 0.019314, 0.020761, 0.020689, 0.019821, 0.019531, 0.020255,0.020038,0.019097,0.019531,0.018374,0.020038]
			}, false);
		chart.addSeries({                        
				id:1,
				name: "二次供压力",
				data: [0.056785, 0.056207, 0.05599, 0.056858, 0.056134,0.056134,0.055628,0.056134,0.0557,0.056279,0.056496,0.055917]
			}, false);
		chart.addSeries({                        
				id:1,
				name: "二次回压力",
				data: [0.054181, 0.052807, 0.054109, 0.053241, 0.055628, 0.053241,0.054109,0.054181,0.055845,0.054543,0.05476,0.056134]
			}, false);
		chart.addSeries({                        
			id:1,
			name: "一次热量",
			data: [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
		}, false);
		chart.addSeries({                        
			id:1,
			name: "二次流量",
			data:[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
		}, false);
		chart.addSeries({                        
			id:1,
			name: "补水表",
			data: [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
		}, false);
		chart.redraw();
	}else if(index==2){//教育局站
		 chart.addSeries({                        
				id:1,
				name: "一次供压力",
				data: [0.024036, 0.024615, 0.023458, 0.024543, 0.024398, 0.024398, 0.020255,0.020038,0.020689,0.018446,0.020978,0.020978]
			}, false);
		chart.addSeries({                        
				id:1,
				name: "一次回压力",
				data:  [0.019097, 0.019314, 0.020761, 0.020689, 0.019821, 0.019531, 0.020255,0.020038,0.019097,0.019531,0.018374,0.020038]
			}, false);
		chart.addSeries({                        
				id:1,
				name: "二次供压力",
				data: [0.056785, 0.056207, 0.05599, 0.056858, 0.056134,0.056134,0.055628,0.056134,0.0557,0.056279,0.056496,0.055917]
			}, false);
		chart.addSeries({                        
				id:1,
				name: "二次回压力",
				data: [0.054181, 0.052807, 0.054109, 0.053241, 0.055628, 0.053241,0.054109,0.054181,0.055845,0.054543,0.05476,0.056134]
			}, false);
		chart.addSeries({                        
			id:1,
			name: "一次热量",
			data: [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
		}, false);
		chart.addSeries({                        
			id:1,
			name: "二次流量",
			data:[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
		}, false);
		chart.addSeries({                        
			id:1,
			name: "补水表",
			data: [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
		}, false);
		chart.redraw();
	}
}

/* 实时温度 */
 chart.addSeries({                        
			id:1,
			name: "一次供压力",
			data: [0.024036, 0.024615, 0.023458, 0.024543, 0.024398, 0.024398, 0.020255,0.020038,0.020689,0.018446,0.020978,0.020978]
		}, false);
	chart.addSeries({                        
			id:1,
			name: "一次回压力",
			data:  [0.019097, 0.019314, 0.020761, 0.020689, 0.019821, 0.019531, 0.020255,0.020038,0.019097,0.019531,0.018374,0.020038]
		}, false);
	chart.addSeries({                        
			id:1,
			name: "二次供压力",
			data: [0.056785, 0.056207, 0.05599, 0.056858, 0.056134,0.056134,0.055628,0.056134,0.0557,0.056279,0.056496,0.055917]
		}, false);
	chart.addSeries({                        
			id:1,
			name: "二次回压力",
			data: [0.054181, 0.052807, 0.054109, 0.053241, 0.055628, 0.053241,0.054109,0.054181,0.055845,0.054543,0.05476,0.056134]
		}, false);
	chart.addSeries({                        
		id:1,
		name: "一次热量",
		data: [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
	}, false);
	chart.addSeries({                        
		id:1,
		name: "二次流量",
		data:[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
	}, false);
	chart.addSeries({                        
		id:1,
		name: "补水表",
		data: [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
	}, false);
	chart.redraw();



var Lchart = Highcharts.chart('Lcontainer', {
	title: {
		 text: '温度数据' 
	},
	subtitle: {
		text: ''
	},
	
	yAxis: {
		title: {
			/* text: '就业人数' */
		}
	},
	xAxis:{ 
	    labels:{ 
	        step:2
	    } 
	},
	legend: {
		layout: 'vertical',
		align: 'right',
		verticalAlign: 'middle'
	},
	plotOptions: {
		series: {
			label: {
				connectorAllowed: false
			},
			pointStart: 0
		}
	},
	series: [],
	credits: {enabled: false},
	responsive: {
		rules: [{
			condition: {
				maxWidth: 500
			},
			chartOptions: {
				legend: {
					layout: 'horizontal',
					align: 'center',
					verticalAlign: 'bottom'
				}
			}
		}]
	}
});


Lchart.addSeries({                        
	id:1,
	name: "一次回温度",
	data: [10.3, 10.1 ,10.8, 10.7, 10.6, 10.7, 10.5, 10.4,10.3,10.2,10.1,10.2]
}, false);
Lchart.addSeries({                        
	id:1,
	name: "二次回温度",
	data: [13.1, 13.2, 13.3, 13.4,13.5, 13.6, 13.7,13.8,13.9,14,14.1,14.2]
}, false);
Lchart.addSeries({                        
	id:1,
	name: "室外温度",
	data: [3, 1, 2, 3, 2, 1, 1,2,3,1,2,4]
}, false);
Lchart.redraw();





function changeValueWd(){
	var index=document.getElementById("wd").selectedIndex;//获取当前选择项的索引.
	var series=Lchart.series; 
	
	while(series.length > 0) {
        series[0].remove(false);
    }
	   Lchart.redraw();
	if(index==0){ //一委站
		
		Lchart.addSeries({                        
			id:1,
			name: "一次回温度",
			data:  [10.3, 10.1 ,10.8, 10.7, 10.6, 10.7, 10.5, 10.4,10.3,10.2,10.1,10.2]
		}, false);
	Lchart.addSeries({                        
			id:1,
			name: "二次回温度",
			data: [13.1, 13.2, 13.3, 13.4,13.5, 13.6, 13.7,13.8,13.9,14,14.1,14.2]
		}, false);
	Lchart.addSeries({                        
			id:1,
			name: "室外温度",
			data: [3, 1, 2, 3, 2, 1, 1,2,3,1,2,4]
		}, false);
	Lchart.redraw();
	
	}else if(index==1){ //二委站
		Lchart.addSeries({                        
			id:1,
			name: "一次回温度",
			data:  [10.3, 10.1 ,10.8, 10.7, 10.6, 10.7, 10.5, 10.4,10.3,10.2,10.1,10.2]
		}, false);
	Lchart.addSeries({                        
			id:1,
			name: "二次回温度",
			data: [13.1, 13.2, 13.3, 13.4,13.5, 13.6, 13.7,13.8,13.9,14,14.1,14.2]
		}, false);
	Lchart.addSeries({                        
			id:1,
			name: "室外温度",
			data: [3, 1, 2, 3, 2, 1, 1,2,3,1,2,4]
		}, false);
	Lchart.redraw();
			
			}else if(index==2){ //二委站
				
				Lchart.addSeries({                        
					id:1,
					name: "一次回温度",
					data:  [10.3, 10.1 ,10.8, 10.7, 10.6, 10.7, 10.5, 10.4,10.3,10.2,10.1,10.2]
				}, false);
			Lchart.addSeries({                        
					id:1,
					name: "二次回温度",
					data: [13.1, 13.2, 13.3, 13.4,13.5, 13.6, 13.7,13.8,13.9,14,14.1,14.2]
				}, false);
			Lchart.addSeries({                        
					id:1,
					name: "室外温度",
					data: [3, 1, 2, 3, 2, 1, 1,2,3,1,2,4]
				}, false);
			Lchart.redraw();
			
			}
			
			
		}

</script>
<script type="text/javascript">


function NcheckboxOnclick(checkbox,a){

	if(a==1){ 
	 if ( checkbox.checked == true){
		 Nchart.addSeries({                        
 			id:1,
 			name: "一委站",
 			data:  [[Date.UTC(2018,11,15),0.27],[Date.UTC(2018,11,20),0.27], [Date.UTC(2018,11,27),0.20],  [Date.UTC(2018,12,04),0.21], [Date.UTC(2018,12,11),0.22], [Date.UTC(2018,12,18),0.23],[Date.UTC(2018,12,25),0.25], [Date.UTC(2019,01,01),0.33],[Date.UTC(2019,01,08),0.38], [Date.UTC(2019,01,15),0.25]]
 		}, false);

         Nchart.redraw();
	 }else{
  
		    for( index in chart.series ){
	            if(Nchart.series[index].name == "一委站"){
	                Nchart.series[index].remove()
	            }
	        }

	 }
	}else if(a==2){
		if ( checkbox.checked == true){
			 Nchart.addSeries({                        
	 			id:1,
	 			name: "二委站",
	 			data: [[Date.UTC(2018,11,15),0.25],[Date.UTC(2018,11,20),0.22], [Date.UTC(2018,11,27),0.29],  [Date.UTC(2018,12,04),0.23], [Date.UTC(2018,12,11),0.26], [Date.UTC(2018,12,18),0.22],[Date.UTC(2018,12,25),0.26], [Date.UTC(2019,01,01),0.35],[Date.UTC(2019,01,08),0.30], [Date.UTC(2019,01,15),0.22]]
	 		}, false);

	         Nchart.redraw();
		 }else{
			 for( index in chart.series ){
		            if(Nchart.series[index].name == "二委站"){
		                Nchart.series[index].remove()
		            }
		        }
		 }
	}else if(a==3){
		if ( checkbox.checked == true){
			 Nchart.addSeries({                        
	 			id:1,
	 			name: "教育局站",
	 			data: [[Date.UTC(2018,11,15),0.26],[Date.UTC(2018,11,20),0.21], [Date.UTC(2018,11,27),0.23],  [Date.UTC(2018,12,04),0.22], [Date.UTC(2018,12,11),0.29], [Date.UTC(2018,12,18),0.21],[Date.UTC(2018,12,25),0.24], [Date.UTC(2019,01,01),0.32],[Date.UTC(2019,01,08),0.33], [Date.UTC(2019,01,15),0.27]]
	 		}, false);

	         Nchart.redraw();
		 }else{
			 for( index in chart.series ){
		            if(Nchart.series[index].name == "教育局站"){
		                Nchart.series[index].remove()
		            }
		        }
		 }
	}
}



function checkboxOnclick(checkbox,a){

	if(a==1){ 
	 if ( checkbox.checked == true){
		 chart.addSeries({                        
 			id:1,
 			name: "一次供压力",
 			data:[0.024036, 0.024615, 0.023458, 0.024543, 0.024398, 0.024398, 0.020255,0.020038,0.020689,0.018446,0.020978,0.020978]
 		}, false);

         chart.redraw();
	 }else{
  
		    for( index in chart.series ){
	            if(chart.series[index].name == "一次供压力"){
	                chart.series[index].remove()
	            }
	        }

	 }
	}else if(a==2){
		if ( checkbox.checked == true){
			 chart.addSeries({                        
	 			id:1,
	 			name: "一次回压力",
	 			data:  [0.019097, 0.019314, 0.020761, 0.020689, 0.019821, 0.019531, 0.020255,0.020038,0.019097,0.019531,0.018374,0.020038]
	 		}, false);

	         chart.redraw();
		 }else{
			 for( index in chart.series ){
		            if(chart.series[index].name == "一次回压力"){
		                chart.series[index].remove()
		            }
		        }
		 }
	}else if(a==3){
		if ( checkbox.checked == true){
			 chart.addSeries({                        
	 			id:1,
	 			name: "二次供压力",
	 			data: [0.056785, 0.056207, 0.05599, 0.056858, 0.056134,0.056134,0.055628,0.056134,0.0557,0.056279,0.056496,0.055917]
	 		}, false);

	         chart.redraw();
		 }else{
			 for( index in chart.series ){
		            if(chart.series[index].name == "二次供压力"){
		                chart.series[index].remove()
		            }
		        }
			 
		 }
	}else if(a==4){
		if ( checkbox.checked == true){
			 chart.addSeries({                        
	 			id:1,
	 			name: "二次回压力",
	 			data: [0.054181, 0.052807, 0.054109, 0.053241, 0.055628, 0.053241,0.054109,0.054181,0.055845,0.054543,0.05476,0.056134]
	 		}, false);

	         chart.redraw();
		 }else{
			 for( index in chart.series ){
		            if(chart.series[index].name == "二次回压力"){
		                chart.series[index].remove()
		            }
		        }
		 }
	}else if(a==5){
		if ( checkbox.checked == true){
			 chart.addSeries({                        
	 			id:1,
	 			name: "一次热量",
	 			data: [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
	 		}, false);

	         chart.redraw();
		 }else{
			 for( index in chart.series ){
		            if(chart.series[index].name == "一次热量"){
		                chart.series[index].remove()
		            }
		        }
		 }
	}else if(a==6){
		if ( checkbox.checked == true){
			 chart.addSeries({                        
	 			id:1,
	 			name: "二次流量",
	 			data: [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
	 		}, false);

	         chart.redraw();
		 }else{
			 for( index in chart.series ){
		            if(chart.series[index].name == "二次流量"){
		                chart.series[index].remove()
		            }
		        }
		 }
	}else if(a==7){
		if ( checkbox.checked == true){
			 chart.addSeries({                        
	 			id:1,
	 			name: "补水表",
	 			data: [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
	 		}, false);

	         chart.redraw();
		 }else{
			 for( index in chart.series ){
		            if(chart.series[index].name == "补水表"){
		                chart.series[index].remove()
		            }
		        }
		 }
	}
}



function LcheckboxOnclick(checkbox,a){

	if(a==1){
		if ( checkbox.checked == true){
			Lchart.addSeries({                        
	 			id:1,
	 			name: "一次回温度",
	 			data:[10.3, 10.1 ,10.8, 10.7, 10.6, 10.7, 10.5, 10.4,10.3,10.2,10.1,10.2]
	 		}, false);

			Lchart.redraw();
		 }else{
			 for( index in Lchart.series ){
		            if(Lchart.series[index].name == "一次回温度"){
		            	Lchart.series[index].remove()
		            }
		        }
		 }
	}else if(a==2){
		if ( checkbox.checked == true){
			Lchart.addSeries({                        
	 			id:1,
	 			name: "二次回温度",
	 			data: [13.1, 13.2, 13.3, 13.4,13.5, 13.6, 13.7,13.8,13.9,14,14.1,14.2]
	 		}, false);

			 Lchart.redraw();
		 }else{
			 for( index in Lchart.series ){
		            if(Lchart.series[index].name == "二次回温度"){
		            	Lchart.series[index].remove()
		            }
		        }
		 }
	}else if(a==3){
		if ( checkbox.checked == true){
			Lchart.addSeries({                        
	 			id:1,
	 			name: "室外温度",
	 			data:[3, 1, 2, 3, 2, 1, 1,2,3,1,2,4]
	 		}, false);

			 Lchart.redraw();
		 }else{
			 for( index in Lchart.series ){
		            if(Lchart.series[index].name == "室外温度"){
		            	Lchart.series[index].remove()
		            }
		        }
		 }
	}
}
</script>
</body>
</html>