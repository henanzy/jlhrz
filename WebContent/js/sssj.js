 $(document).ready(function(){
//  表格

	var shuakaList=[];
	var shuakaList1=[];
	function jsArrChange(json){
		for (var i = 0 ; i < json.length ; i ++) {
			var arr1 = [];
			arr1[0] = json[i].hrz;
			arr1[1] = json[i].一次供水瞬时流量;
			arr1[2] = json[i].一次供水瞬时热量;
			arr1[3] = json[i].一次供水累计流量;
			arr1[4] = json[i].一次供水累计热量;
			arr1[5] = json[i].一次供水压力;
			arr1[6] = json[i].一次供水温度;
			arr1[7] = json[i].一次回水压力;
			arr1[8] = json[i].一次回水温度;
			arr1[9] = json[i].二次供水瞬时流量;
			arr1[10] = json[i].二次供水累计流量;
			arr1[11] = json[i].二次供水压力;
			arr1[12] = json[i].二次供水温度;
			arr1[13] = json[i].二次回水压力;
			arr1[14] = json[i].二次回水温度;
			shuakaList.push(arr1);
			var arr2 = [];
			
			arr2[0] = json[i].电量实际值;
			arr2[1] = json[i].A相电压值;
			arr2[2] = json[i].B相电压值;
			arr2[3] = json[i].C相电压值;
			arr2[4] = json[i].A相电流值;
			arr2[5] = json[i].B相电流值;
			arr2[6] = json[i].C相电流值;
			arr2[7] = json[i].补水瞬时流量;
			arr2[8] = json[i].补水累计流量;
			arr2[9] = json[i].水箱液位;
			arr2[10] = json[i].自来水总补水量;
			arr2[11] = json[i].室内温度;
			arr2[12] = json[i].循环泵1频率反馈;
			arr2[13] = json[i].循环泵2频率反馈;
			arr2[14] = json[i].补水泵1频率反馈;
			arr2[15] = json[i].调节阀反馈;
			shuakaList1.push(arr2);
		};
	}
	
	jsArrChange(list)
	tbodydis("",shuakaList)
	tbodydis1("",shuakaList1)

});
 



 
//表格写入函数带分页
function tbodydis(oldlist,newlist){
	var current = 1;
	function pageInit(currentPage, pagesize) {	
		var html = "";
		for(var i = 0; i < newlist.length; i++) {
			 // 通过间隔分隔数组
				if(i%2 == 1){
					html += "<tr class='gradeX odd'>";
				}else if(i%2 == 0){
					html += "<tr class='gradeX even'>";
				}
		
				
				for (var j = 0 ; j <newlist[i].length ; j ++) {
					
                   html += "<td>" + newlist[i][j] + "</td>"
				}
			
			
		}
		jkword_body1.innerHTML = html;
		var classname = "";
		$("table tbody td").hover(function() {
			classname = $(this).parent().attr("class");
			$(this).parent().removeClass(classname).addClass("blue");
			$("table tbody tr").find('td:eq(' + $(this).index() + ')').addClass('blue')
		}, function() {
			$(this).parent().removeClass("blue").addClass(classname);
			$("table tbody tr").find('td:eq(' + $(this).index() + ')').removeClass('blue')
		});
		
	}	
	pageInit(1, 15);
}


function tbodydis1(oldlist,newlist){
	var current = 1;
	function pageInit(currentPage, pagesize) {	
		var html = "";
		for(var i = 0; i < newlist.length; i++) {
			 // 通过间隔分隔数组
				if(i%2 == 1){
					html += "<tr class='gradeX odd'>";
				}else if(i%2 == 0){
					html += "<tr class='gradeX even'>";
				}
		
				
				for (var j = 0 ; j <newlist[i].length ; j ++) {
					
                   html += "<td>" + newlist[i][j] + "</td>"
				}
			
			
		}
		jkword_body2.innerHTML = html;
		var classname = "";
		$("table tbody td").hover(function() {
			classname = $(this).parent().attr("class");
			$(this).parent().removeClass(classname).addClass("blue");
			$("table tbody tr").find('td:eq(' + $(this).index() + ')').addClass('blue')
		}, function() {
			$(this).parent().removeClass("blue").addClass(classname);
			$("table tbody tr").find('td:eq(' + $(this).index() + ')').removeClass('blue')
		});
		
	}	
	pageInit(1, 15);
}
