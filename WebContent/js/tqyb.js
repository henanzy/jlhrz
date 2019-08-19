function getRootPath(){      
	var curWwwPath=window.document.location.href;      
    var pathName=window.document.location.pathname;      
    var pos=curWwwPath.indexOf(pathName); 
    var localhostPaht=curWwwPath.substring(0,pos);      
    var projectName=pathName.substring(0,pathName.substr(1).indexOf('/')+1);      
    return(localhostPaht+projectName);  
} 

$(function () {
	lsqx();
	var zgwd=[];
	var zdwd=[];
	var pjwd=[];
	var time=[];
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
	        yAxis: {
	            title: {
	                text: null
	                // y 轴标题
	            }
	        }
	    };
	$.ajax({
	    type: 'GET',
	    url: 'https://www.tianqiapi.com/api/',
	    data: 'version=v1&city=洛阳',
	    dataType: 'JSON',
	    error: function () {
	        alert('网络错误');
	    },
	    success: function (res) {
	        var data=res.data;
	        console.log(data)
	        for (var i = 0 ; i < data.length ; i ++) {
	        	zgwd.push(parseFloat(data[i].tem1.replace("℃","")));
	        	zdwd.push(parseFloat(data[i].tem2.replace("℃","")));
	        	pjwd.push(parseFloat(data[i].tem.replace("℃","")));
	        	time.push(data[i].date)
	        	Tqoptions.xAxis = {
	        			title: {
	        				text: '时间'
	        			},
	        			categories: time,
	        			
	        			labels: {
	        			   /* formatter:function(){
	        			     return this.value.substring(0,10);
	        			    }*/
	        			  }
	        		};
	        	Tqoptions.series = [];
	        	Tqoptions.series.push({
	        		 name:"最高温度",
	        		 data:zgwd,
	        		 tooltip : {
	        				valueSuffix : '℃'
	        			}	,		 
	        	 });
	        	 Tqoptions.series.push({
	        		 name:"最低温度",
	        		 data:zdwd,
	        		 tooltip : {
	        				valueSuffix : '℃'
	        			}	,	 
	        	 });
	        	 
	        	 Highcharts.chart("Tqcontainer", Tqoptions);
	        }
	    }
	});
	
	
		
 });


function fDateTime(num){
		var curDate = new Date();
		var nowTimeDay = new Date(curDate - 24*60*60*1000*num).getDate();
		var nowTimeMonth = new Date(curDate - 24*60*60*1000*num).getMonth()+1;
		var nowTime = nowTimeMonth + "-" + nowTimeDay;
	return nowTime;
}

