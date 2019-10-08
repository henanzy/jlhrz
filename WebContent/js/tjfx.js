function getRootPath(){      
	var curWwwPath=window.document.location.href;      
    var pathName=window.document.location.pathname;      
    var pos=curWwwPath.indexOf(pathName); 
    var localhostPaht=curWwwPath.substring(0,pos);      
    var projectName=pathName.substring(0,pathName.substr(1).indexOf('/')+1);      
    return(localhostPaht+projectName);  
} 

$(function () {
	var date = new Date();
	$("#endTime").val(date.format('yyyy-MM-dd'));
	date.setTime(date .getTime() - 1000*60*60*24*7);

	$("#startTime").val(date.format('yyyy-MM-dd'));
	lsqx();
	gryc();
	$("#search_btn").click(function(){
		lsqx();gryc();
	});
	function gryc(){
		var zgwd=[];
		var zdwd=[];
		var pjwd=[];
		var zggr=[];
		var zdgr=[];
		var time=[];
		var kxs;var sjmj;
		$.ajax({
			url : getRootPath()+"/OpcCon/getHrzXx.action", 
			async : false,
			dataType : "json",
			data : {
			"hrz":$('#hrz').val(),
			
			},
			success : function(data) {
				if(data.list.length>0){
					kxs=data.list[0].Kxs;
					sjmj=data.list[0].shijimj;
					
				}
				
			}
		});
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
		}, { // Secondary yAxis
				gridLineWidth: 0,
				title: {
						text: 'GJ',
						style: {
								color: Highcharts.getOptions().colors[0]
						}
				},
				labels: {
						format: '{value} GJ',
						style: {
								color: Highcharts.getOptions().colors[0]
						}
				}
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
		       
		        for (var i = 0 ; i < data.length ; i ++) {
		        	var zg=parseFloat(data[i].tem1.replace("℃",""));
		        	var zd=parseFloat(data[i].tem2.replace("℃",""));
		        	zggr.push(kxs*(18-zg)*sjmj/24*24);
		        	zdgr.push(kxs*(18-zd)*sjmj/24*24);
		        	zgwd.push(parseFloat(data[i].tem1.replace("℃","")));
		        	zdwd.push(parseFloat(data[i].tem2.replace("℃","")));
		        	pjwd.push(parseFloat(data[i].tem.replace("℃","")));
		        
		        	time.push(data[i].date);
		        }
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
		        	 Tqoptions.series.push({
		        		 name:"最高应供热量",
		        		 data:zggr,
		        		 yAxis : 1,
		        		 tooltip : {
		        				valueSuffix : 'GJ'
		        			}	,	 
		        	 });
		        	 Tqoptions.series.push({
		        		 name:"最低应供热量",
		        		 data:zdgr,
		        		 yAxis : 1,
		        		 tooltip : {
		        				valueSuffix : 'GJ'
		        			}	,	 
		        	 });
		        	 
		        	 Highcharts.chart("Tqcontainer", Tqoptions);
		        }
		    
		});
	}
	function lsqx(){
		var options = {
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
		        yAxis: {
		            title: {
		                text: null
		                // y 轴标题
		            }
		        }
		    };
		var dataList=[];
		$.ajax({
			url : getRootPath()+"/user/selHistory.action", 
			async : false,
			dataType : "json",
			data : {
				"hrz":$("#hrz").val(),
				"startTime":$("#startTime").val(),
				"endTime":$("#endTime").val(),
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
		 var snwd = [];
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
				snwd.push(parseFloat(dataList[i].snwd));
				
				time.push(dataList[i].time);
				
			};
		var data = {name:$("#hrz").val(),ychsyl:ychsyl,ychswd:ychswd,ycgswd:ycgswd,ycgsyl:ycgsyl,ecgsyl:ecgsyl,ecgswd:ecgswd,echsyl:echsyl,echswd:echswd,snwd:snwd};
//		 allwd(options,xqdata,'mws-dashboard-chart-1')
		onewd(options,data,'Ncontainer',time)

	}
	
		
 });

function onewd(options,xqdata,con,time){
	options.xAxis = {
			title: {
				text: '时间'
			},
			categories: time,
			tickInterval: 10,
			labels: {
			    formatter:function(){
			     return this.value.substring(0,10);
			    }
			  }
		};
	options.series = [];
	 options.series.push({
		 name:"室内温度",
		 data:xqdata.snwd,
		 tooltip : {
				valueSuffix : '℃'
			}	,marker: {

	             enabled: false,
	         },		 
	 });
			 options.series.push({
				 name:"一次回水压力",
				 data:xqdata.ychsyl,
				 tooltip : {
						valueSuffix : 'Mpa'
					}	,marker: {

			             enabled: false,
			         },		 
			 });
			 
			 options.series.push({
				 name:"一次回水温度",
				 data:xqdata.ychswd,
				 tooltip : {
						valueSuffix : '℃'
					}	,marker: {

			             enabled: false,
			         },		 
			 });
			  options.series.push({                       
				 name:"一次供水压力",
				 data:xqdata.ycgsyl,
				 tooltip : {
						valueSuffix : 'Mpa'
					}	,marker: {

			             enabled: false,
			         },		 
			 });
			  options.series.push({                       
					 name:"一次供水温度",
					 data:xqdata.ycgswd,
					 tooltip : {
							valueSuffix : '℃'
						}	,marker: {

				             enabled: false,
				         },		 
				 });
			options.series.push({
				 name:"二次供水压力",
				 data:xqdata.ecgsyl,
				 tooltip : {
						valueSuffix : 'Mpa'
					}	,marker: {

			             enabled: false,
			         },		 
			 });
			 
			 options.series.push({
				 name:"二次供水温度",
				 data:xqdata.ecgswd,
				 tooltip : {
						valueSuffix : '℃'
					}	,marker: {

			             enabled: false,
			         },		 
			 });

			 options.series.push({
				 name:"二次回水压力",
				 data:xqdata.echsyl,
				 tooltip : {
						valueSuffix : 'Mpa'
					}	,marker: {

			             enabled: false,
			         },		 
			 });
			 
			 options.series.push({
				 name:"二次回水温度",
				 data:xqdata.echswd,
				 tooltip : {
						valueSuffix : '℃'
					}	,marker: {

			             enabled: false,
			         },		 
			 });
	// 图表初始化函数
	var chart = Highcharts.chart(con, options);
}

function fDateTime(num){
		var curDate = new Date();
		var nowTimeDay = new Date(curDate - 24*60*60*1000*num).getDate();
		var nowTimeMonth = new Date(curDate - 24*60*60*1000*num).getMonth()+1;
		var nowTime = nowTimeMonth + "-" + nowTimeDay;
	return nowTime;
}

