function getRootPath(){      
	var curWwwPath=window.document.location.href;      
    var pathName=window.document.location.pathname;      
    var pos=curWwwPath.indexOf(pathName); 
    var localhostPaht=curWwwPath.substring(0,pos);      
    var projectName=pathName.substring(0,pathName.substr(1).indexOf('/')+1);      
    return(localhostPaht+projectName);  
} 

$(function () {


	
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
			"startTime":$("#startTime2").val(),
			"endTime":$("#endTime2").val(),
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
//	 allwd(options,xqdata,'mws-dashboard-chart-1')
	onewd(options,data,'Ncontainer',time)

		
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
						valueSuffix : 'Mpa'
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
							valueSuffix : 'Mpa'
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

