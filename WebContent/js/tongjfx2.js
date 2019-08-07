
window.onload = function(){
	
	var chart = Highcharts.chart('container', {
		title: {
			text: '2010 ~ 2016 年太阳能行业就业人员发展情况'
		},
		subtitle: {
			text: '数据来源：thesolarfoundation.com'
		},
		
		yAxis: {
			title: {
				text: '就业人数'
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
				pointStart: 2010
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
	chart.addSeries({                        
			id:1,
			name: "一次供压力",
			data: [43, 52, 57, 69, 70, 88, 89,99]
		}, false);
	chart.addSeries({                        
			id:1,
			name: "一次回压力",
			data: [20, 44, 45, 47, 50, 55, 70,80]
		}, false);

	chart.addSeries({                        
			id:1,
			name: "一次回温度",
			data: [20, 44, 45, 47, 50, 55, 70,80]
		}, false);
	chart.addSeries({                        
			id:1,
			name: "二次供压力",
			data: [30, 45, 41, 45, 56, 58, 77,80]
		}, false);
	chart.addSeries({                        
			id:1,
			name: "二次回压力",
			data: [20, 41, 42, 45, 54, 55, 77,89]
		}, false);
	chart.addSeries({                        
			id:1,
			name: "二次回温度",
			data: [10, 24, 55, 57, 60, 65, 77,82]
		}, false);
	chart.redraw();




	$("#checkboxOnclick").click(function (checkbox,a){

		if(a==1){ 
		 if ( checkbox.checked == true){
			 chart.addSeries({                        
	 			id:1,
	 			name: "一次供压力",
	 			data: [43, 52, 57, 69, 70, 88, 89,99]
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
		 			data: [20, 44, 45, 47, 50, 55, 70,80]
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
		 			name: "一次回温度",
		 			data: [20, 44, 45, 47, 50, 55, 70,80]
		 		}, false);

		         chart.redraw();
			 }else{
				 for( index in chart.series ){
			            if(chart.series[index].name == "一次回温度"){
			                chart.series[index].remove()
			            }
			        }
			 }
		}else if(a==4){
			if ( checkbox.checked == true){
				 chart.addSeries({                        
		 			id:1,
		 			name: "二次供压力",
		 			data: [30, 45, 41, 45, 56, 58, 77,80]
		 		}, false);

		         chart.redraw();
			 }else{
				 for( index in chart.series ){
			            if(chart.series[index].name == "二次供压力"){
			                chart.series[index].remove()
			            }
			        }
				 
			 }
		}else if(a==5){
			if ( checkbox.checked == true){
				 chart.addSeries({                        
		 			id:1,
		 			name: "二次回压力",
		 			data: [20, 41, 42, 45, 54, 55, 77,89]
		 		}, false);

		         chart.redraw();
			 }else{
				 for( index in chart.series ){
			            if(chart.series[index].name == "二次回压力"){
			                chart.series[index].remove()
			            }
			        }
			 }
		}else if(a==6){
			if ( checkbox.checked == true){
				 chart.addSeries({                        
		 			id:1,
		 			name: "二次回温度",
		 			data: [10, 24, 55, 57, 60, 65, 77,82]
		 		}, false);

		         chart.redraw();
			 }else{
				 for( index in chart.series ){
			            if(chart.series[index].name == "二次回温度"){
			                chart.series[index].remove()
			            }
			        }
			 }
		}
	})
}


