 $(document).ready(function(){
//  表格

	var shuakaList=[];
	
	function jsArrChange(json){
		for (var i = 0 ; i < json.length ; i ++) {
			var arr1 = [];
			arr1[0] = json[i].hrz;
			arr1[1] = json[i].一次供水瞬时流量;
			arr1[2] = json[i].一次供水瞬时热量;
			arr1[3] = json[i].一次供水累计流量;
			arr1[4] = json[i].一次供水累计热量;			
			arr1[5] = json[i].一次供水温度;			
			arr1[6] = json[i].一次回水温度;			
			shuakaList.push(arr1);

		};
	}
	
	jsArrChange(list)
	tbodydis("",shuakaList)

	 function tableToExcel(){
        //要导出的json数据
      
        //列标题
    	let str = '<tr><th>换热站</th>'+
    	'<th>一次供水瞬时流量</th><th>一次供水瞬时热量</th><th>一次供水累计流量</th><th>一次供水累计热量</th>'+
    	'<th>一次供水温度</th><th>一次回水温度</th>';
    	
    	
        str+='</tr>'
        //循环遍历，每行加入tr标签，每个单元格加td标签
        for(let i = 0 ; i < shuakaList.length ; i++ ){	        	
          str+='<tr>';	         
          for(let item in shuakaList[i]){
              //增加\t为了不让表格显示科学计数法或者其他格式	        	  
        		  str+=`<td>${ shuakaList[i][item] + '\t'}</td>`;   
          }
          str+='</tr>';	        	
        }
        //Worksheet名
        let worksheet = 'Sheet1'
        let uri = 'data:application/vnd.ms-excel;base64,';
   
        //下载的表格模板数据
        let template = `<html xmlns:o="urn:schemas-microsoft-com:office:office" 
        xmlns:x="urn:schemas-microsoft-com:office:excel" 
        xmlns="http://www.w3.org/TR/REC-html40">
        <head><!--[if gte mso 9]><xml><x:ExcelWorkbook><x:ExcelWorksheets><x:ExcelWorksheet>
          <x:Name>${worksheet}</x:Name>
          <x:WorksheetOptions><x:DisplayGridlines/></x:WorksheetOptions></x:ExcelWorksheet>
          </x:ExcelWorksheets></x:ExcelWorkbook></xml><![endif]-->
          </head><body><table>${str}</table></body></html>`;
        //下载模板
        window.location.href = uri + base64(template)
      }
	function base64 (s) { return window.btoa(unescape(encodeURIComponent(s))) }
	var wordExport = document.getElementById("dayin");
	wordExport.onclick = function(){
		var aID =  this.parentNode.getAttribute("id");
		tableToExcel();
	}
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
		jkword_body.innerHTML = html;
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
/*function compareWordTime(wordType,WordListTime,compareWordList,jkwordList,j){
	if(wordType == "全部"){
		compareWordList.push(jkwordList[j]);
	}
	
}	*/


