
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
	
	
		/* 搜索按钮 */
	#search_btn,
	#dayin,
	#search_status_btn{
		margin-top:8px;
		margin-left:20px;
		border:none;
		background-color:rgb(60,61,61);
		width:60px;
		height:24px;
		margin-right:6px;
		color:#fff;
		border-radius:4px;
	}
	
</style>
<style>

	/* 固定表头 */
	.table-th-css {
		position: relative !important;
		top: 0;
	}
	
	/* 电话输入框 */
	.mws-report {
		width: 98% !important;
		min-width: 170px;
		margin: 8px 1%;
		height: 80px;
		float: left;
		cursor: pointer;
		display: block;
		text-decoration: none;
		color: #323232;
	}
	
	/* 用户信息，室内情况input */
	#user_search_body .mws-form-row .user_input,
	#user_search_body .mws-form-row .indoor_input {
		width:200px;
	}
	
	
	/* 用户信息，室内情况label */
	#user_search_body .indoor_inform label,
	#user_search_body .user_inform label{
		width:100px;
	}
	
	/* 用户信息，室内情况背景图片 */
	/* #user_search_body .user_inform .mws-panel-body,
	#user_search_body .indoor_inform .mws-panel-body{
		background-image: url(../images/background/2.jpg);
	} */
	#user_search_body .user_inform .mws-form-inline,
	#user_search_body .indoor_inform .mws-form-inline{
		height:426px;
		background:rgba(255,255,255,0.8);
	}
	
	/* 手机号错误字体 */
	#user_span{
		color:red;
		display:none;
	}
	
	
	/* 新增弹出按钮 */
	.keincrease {
		border:none;
		background-color:rgb(60,61,61);
		width:70px;
		height:30px;
		margin-left:50px;
		color:#fff;
		border-radius:4px;
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

</head>

<body>
<div>
			

		
			
			
			<div class="mws-panel grid_8"
				style="width:100%;min-width: 500px; float: left" >
				<div class="mws-panel-header">
					<span class="mws-i-24 i-graph">气象曲线分析</span>
				</div>
				
		
				<div class="mws-panel-body">
					<div class="mws-panel-content">
					<div id="Tqcontainer" ></div>
					</div>
				</div>
			</div>
			
			
			<div id="user_search_body"
			style="width: 50%; margin-top: 20px;">

			<div class="mws-panel grid_4 user_inform" style="min-width: 400px">
				<div class="mws-panel-header">
					<span class="mws-i-24 i-pencil">当日天气</span>
				</div>
				<div class="mws-panel-body">
					<form class="mws-form">
						<div class="mws-form-inline">
							<div class="mws-form-row" >
								<label>&emsp;&emsp;天气：</label>

								<div class="mws-form-item large">
									<input type="text"  id="wea" class="mws-textinput user_input" value=""
										readonly="readonly" />
								</div>
							</div>
							
							<div class="mws-form-row" >
								<label>实时气温:</label>

								<div class="mws-form-item large">
									<input type="text" id ="tem" class="mws-textinput user_input" value=""
										readonly="readonly" />
								</div>
							</div>

							<div class="mws-form-row" >
								<label>&emsp;&emsp;风况</label>
								<div class="mws-form-item large">
									<input type="text" id="win" class="mws-textinput user_input" value=""
										readonly="readonly" />
								</div>
							</div>

							<div class="mws-form-row" >
								<label>&emsp;&emsp;风力：</label>
								<div class="mws-form-item large">
									<input type="text" id="win_speed" class="mws-textinput user_input" value=""
										readonly="readonly" />
								</div>
							</div>

							<div class="mws-form-row" >
								<label> 最高气温：</label>
								<div class="mws-form-item large">
									<input type="text" id="tem1" class="mws-textinput user_input" value=""
										readonly="readonly" />
								</div>
							</div>

							<div class="mws-form-row" >
								<label> 最低气温：</label>
								<div class="mws-form-item large">
									<input type="text" id="tem2" class="mws-textinput user_input" value=""
										readonly="readonly" />
								</div>
							</div>
						</div>
						
					</form>
				</div>
			</div>
			</div>
		
			<div id="user_search_body"
			style="width: 70%; margin-top: 20px;">

			<div class="mws-panel grid_4 user_inform" style="min-width: 600px">
				<div class="mws-panel-header">
					<span class="mws-i-24 i-pencil">未来天气预报</span>
				</div>	
	

	       <div id="monitword_table_body" class="mws-panel-body"
				style="overflow: auto !important; height:430px;">
				<table class="mws-table">
	
					<thead>
						<tr>
						    <th class="table-th-css">日期<span class="span-up"></span> <span class="span-down"></span></th>
							<th class="table-th-css">天气<span class="span-up"></span> <span class="span-down"></span></th>
							<th class="table-th-css">最高温度<span class="span-up"></span> <span class="span-down"></span></th>
							<th class="table-th-css">最低温度<span class="span-up"></span> <span class="span-down"></span></th>
							<th class="table-th-css">风况<span class="span-up"></span> <span class="span-down"></span></th>
							<th class="table-th-css">风速<span class="span-up"></span> <span class="span-down"></span></th>
						</tr>
					</thead>
					<tbody id="xinword_body">
                  
						
					</tbody>
				</table>
			</div>
			</div>
			</div>
</div>

<script type="text/javascript">
var zgwd=[];
var zdwd=[];
var pjwd=[];

var time=[];
var dataList=[];

var Tqoptions = {
        chart: {
            type: 'line'// 指定图表的类型，默认是折线图（line）
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
        yAxis:[{ // Primary yAxis
		labels: {
				format: '{value}°C',
				
		},
		title: {
				text: '温度',
				
		},
		opposite: true
}]
    };
$.ajax({
    type: 'GET',
    url: 'https://www.tianqiapi.com/api/',
    data: 'version=v1&city=洛阳&appid=66763293&appsecret=2PrEpjgN',
    dataType: 'JSON',
    error: function () {
        alert('网络错误');
    },
    success: function (res) {
        var data=res.data;
        $('#wea').val(data[0].wea);
        $('#tem').val(data[0].tem);
        $('#tem1').val(data[0].tem1);
        $('#tem2').val(data[0].tem2);
        $('#win').val(data[0].win[0]);
        $('#win_speed').val(data[0].win_speed);
        var html = "";
        for (var i = 0 ; i < data.length ; i ++) {
        	
        	if(i%2 == 1){
				html += "<tr class='gradeX odd'>";
			}else if(i%2 == 0){
				html += "<tr class='gradeX even'>";
			}

               html += "<td>" + data[i].date + "</td>"
               html += "<td>" + data[i].wea + "</td>"
               html += "<td>" + data[i].tem1 + "</td>"
               html += "<td>" + data[i].tem2 + "</td>"
               html += "<td>" + data[i].win[0] + "</td>"
               html += "<td>" + data[i].win_speed + "</td>"
			
        	zgwd.push(parseFloat(data[i].tem1.replace("℃","")));
        	zdwd.push(parseFloat(data[i].tem2.replace("℃","")));
        	
        
        	time.push(data[i].date);
        }
        html += "</tr>";
        xinword_body.innerHTML = html;
        	Tqoptions.xAxis = {
        			title: {
        				text: '时间'
        			},
        			categories: time,
        			
        			labels: {

        			  }
        		};
        	
        	Tqoptions.series = [];
        	Tqoptions.series.push({
        		 name:"最高温度",
        		 data:zgwd,
        		 yAxis : 0,
        		 tooltip : {
        				valueSuffix : '℃'
        			}	,		 
        	 });
        	 Tqoptions.series.push({
        		 name:"最低温度",
        		 data:zdwd,
        		 yAxis :0,
        		 tooltip : {
        				valueSuffix : '℃'
        			}	,	 
        	 });
        	
        	 
        	 Highcharts.chart("Tqcontainer", Tqoptions);
        }
    
});
</script>

</body>
</html>