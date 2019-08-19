function getRootPath(){      
	var curWwwPath=window.document.location.href;      
    var pathName=window.document.location.pathname;      
    var pos=curWwwPath.indexOf(pathName); 
    var localhostPaht=curWwwPath.substring(0,pos);      
    var projectName=pathName.substring(0,pathName.substr(1).indexOf('/')+1);      
    return(localhostPaht+projectName);  
} 

$(function () {
	
	gryc();
	$("#hrz").change(function(){
		gryc();
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
		    data: 'version=v1&city=洛阳',
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
	
	
		
 });



