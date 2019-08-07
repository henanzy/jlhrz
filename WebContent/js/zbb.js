
Date.prototype.format = function foramate(fmt)   
	{ //author: meizz   
	  var o = {   
	    "M+" : this.getMonth()+1,                 //月份   
	    "d+" : this.getDate(),                    //日   
	    "h+" : this.getHours(),                   //小时   
	    "m+" : this.getMinutes(),                 //分   
	    "s+" : this.getSeconds(),                 //秒   
	    "q+" : Math.floor((this.getMonth()+3)/3), //季度   
	    "S"  : this.getMilliseconds()             //毫秒   
	  };   
	  if(/(y+)/.test(fmt))   
	    fmt=fmt.replace(RegExp.$1, (this.getFullYear()+"").substr(4 - RegExp.$1.length));   
	  for(var k in o)   
	    if(new RegExp("("+ k +")").test(fmt))   
	  fmt = fmt.replace(RegExp.$1, (RegExp.$1.length==1) ? (o[k]) : (("00"+ o[k]).substr((""+ o[k]).length)));   
	  return fmt;   
	}  
$(document).ready(function() {
	
	
	
	$("#Time").change(function(){
	    var date = new Date($(this).val());
	    date.setTime(date .getTime() + 1000*60*60*24*7);
	    
	    $("#endTime").val(date.format('yyyy-MM-dd'));
	});
	var wordExport = document.getElementById("dayin");
	wordExport.onclick = function(){
		var aID =  this.parentNode.getAttribute("id");
		tableToExcel();
	}
	//base64转码
    var base64 = function (s) {
        return window.btoa(unescape(encodeURIComponent(s)));
    };
    //替换table数据和worksheet名字
    var format = function (s, c) {
        return s.replace(/{(\w+)}/g,
            function (m, p) {
                return c[p];
            });
    }
    function tableToExcel(){
        //要导出的json数据
      
        //列标题
    	let str = '<tr><th>换热站</th><th>采集时间</th><th>一次累计供热量</th><th>一次累计供流量</th><th>二次累计供热量</th><th>二次累计供流量</th><th>总电量</th><th>水表</th>';
        
        for(var i=0;i<chk_value.length;i++){
        	str+='<td>'+chk_value[i]+'</th>';
        }
        str+='</tr>'
        //循环遍历，每行加入tr标签，每个单元格加td标签
        for(let i = 0 ; i < chk.length ; i++ ){
        	
          str+='<tr>';
         
          for(let item in chk[i]){
              //增加\t为了不让表格显示科学计数法或者其他格式
        	  
        		  str+=`<td>${ chk[i][item] + '\t'}</td>`;
        	  
        		   
        	  
                  
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
      //输出base64编码
      function base64 (s) { return window.btoa(unescape(encodeURIComponent(s))) }
	
	
	
	$("#jk_search_btn1").click(function(){
		$("#change_word").show();
	});
	
	$(".close").click(function(){
		
		$("#change_word").hide();
	});
	/*var jkwordTbody = document.getElementById("jkword_body");
	for(var i = 0;i < jkwordList.length;i ++){
		var jkwordTr = document.createElement("tr");
		if(i%2 == 1){
			jkwordTr.className = "gradeX odd";
		}else if(i%2 == 0){
			jkwordTr.className = "gradeX even";
		}
		for(var j = 0;j < jkwordList[i].length;j ++){
			jkwordList[i][j] = jkwordList[i][j]+"";

			jkwordTr.innerHTML += "<td>" + jkwordList[i][j] + "</td>";
		}
		jkwordTbody.appendChild(jkwordTr);
	}*/
	var chk_value =[];
	var chk=[];
	$("#word_change_btn").click(function(){
		chk_value.length =0;//定义一个数组    
		chk.length =0;
		$("#head").empty();
		$("#jkword_body").empty();
	    $('input[name="box"]:checked').each(function(){//遍历每一个名字为interest的复选框，其中选中的执行函数    
	    chk_value.push($(this).val());//将选中的值添加到数组chk_value中    
	    });
	    var head = document.getElementById("head");
		
			var headTr = document.createElement("tr");
			
			headTr.className = "gradeX odd";
			headTr.innerHTML += "<th class='table-th-css'>换热站</th>";
			headTr.innerHTML += "<th class='table-th-css'>采集时间</th>";
			headTr.innerHTML += "<th class='table-th-css'>一次累计供热量</th>";
			headTr.innerHTML += "<th class='table-th-css'>一次累计供流量</th>";
			headTr.innerHTML += "<th class='table-th-css'>二次累计供热量</th>";
			headTr.innerHTML += "<th class='table-th-css'>二次累计供流量</th>";
			headTr.innerHTML += "<th class='table-th-css'>总电量</th>";
			headTr.innerHTML += "<th class='table-th-css'>水表</th>";
			for(var j = 0;j < chk_value.length;j ++){
				chk_value[j] = chk_value[j]+"";

				headTr.innerHTML += "<th class='table-th-css'>" + chk_value[j] + "</th>";
			}
			head.appendChild(headTr);
			$("#change_word").hide();
			
			for(var i=0;i<list.length;i++){
				var arr=[];
				arr[0]=list[i].hrz;
				arr[1]=list[i].cjsj;
				arr[2]="6195.09";
				arr[3]="84566.55";
				arr[4]="0.00";
				arr[5]="0.00";
				arr[6]="0.00";
				arr[7]="0.00";
				
				for(var j=0;j<chk_value.length;j++){
					var str=chk_value[j];
					if(list[i][str]!=null){
						arr[j+8]=list[i][str];
					}else{
						arr[j+8]="0.00"
					}
					
				}
				
				chk.push(arr);
			}
			
			var jkwordTbody = document.getElementById("jkword_body");
			for(var i = 0;i < chk.length;i ++){
				var jkwordTr = document.createElement("tr");
				if(i%2 == 1){
					jkwordTr.className = "gradeX odd";
				}else if(i%2 == 0){
					jkwordTr.className = "gradeX even";
				}
				for(var j = 0;j < chk[i].length;j ++){
					if(chk[i][0]==$("#type").val()||$("#type").val()=="全部"){
						chk[i][j] = chk[i][j]+"";

						jkwordTr.innerHTML += "<td>" + chk[i][j] + "</td>";	
					}
					
				}
				jkwordTbody.appendChild(jkwordTr);
			}
	});
	
	//工单搜索
	$("#jk_search_btn").click(function(){
		var wordType = $("#type").val();
		var compareWordList = [];
		
		for(var j = 0;j < chk.length;j ++){
			
			compareWordTime(wordType,compareWordList,chk,j);
		};
		$("#jkword_body").empty();
		for(var x = 0;x < compareWordList.length;x ++){
			
			var newWordElemnet = "";
			if(x%2 == 1){
				
				newWordElemnet = "<tr class='gradeX odd'>";
				for(var y = 0;y < compareWordList[x].length;y ++){
					
					newWordElemnet += "<td>" + compareWordList[x][y] + "</td>";
				}
				newWordElemnet += "</tr>";
				
			}else if(x%2 == 0){
				
				newWordElemnet = "<tr class='gradeX even'>";
				for(var y = 0;y < compareWordList[x].length;y ++){
					
					newWordElemnet += "<td>" + compareWordList[x][y] + "</td>";
				}
				newWordElemnet += "</tr>";
				
			}
			
			$("#jkword_body").append(newWordElemnet);
		}
	});
	
	
	
	//排序
	var tableObject = $('#monitword_table_body table'); //获取id为xincreate_table_body的table对象
	var tbHead = tableObject.children('thead'); //获取table对象下的thead
	var tbHeadTh = tbHead.find('tr th'); //获取thead下的tr下的th
	var tbBody = tableObject.children('tbody'); //获取table对象下的tbody
	var tbBodyTr = tbBody.find('tr'); //获取tbody下的tr
	
	var sortIndex = 1;
	
	tbHeadTh.each(function() { //遍历thead的tr下的th
		var thisIndex = tbHeadTh.index($(this)); //获取th所在的列号

		var type ="";
		$(this).click(function() { //给当前表头th增加点击事件
			tbHeadTh.find("span").show();
			if(sortIndex%2 == 1){//奇数偶数显示
				$(this).find(".span-up").show();
				$(this).find(".span-down").hide();
			}else{
				$(this).find(".span-up").hide();
				$(this).find(".span-down").show();
			}
			var table = $('#monitword_table_body table'); 
			var body = table.children('tbody'); 
			var bodytr = body.find('tr');
			checkColumnValue(thisIndex,table,bodytr);
		});
	});

	//对表格排序
	function checkColumnValue(index,table,bodytr) {
		var trsValue = new Array();

		bodytr.each(function() {
			var tds = $(this).find('td');
			//获取行号为index列的某一行的单元格内容与该单元格所在行的行内容添加到数组trsValue中
			var data = $(tds[index]).html();//parseFloat($(tds[index]).html()) || 
			if(isNaN(data)&&!isNaN(Date.parse(data))){
			type = "string";
			}else if (parseFloat(data)) {
				type = "number";
			}else{
				type = "string";
			}
			
			trsValue.push(type + ".separator" + $(tds[index]).html() + ".separator" + $(this).html());
			$(this).html("");
		});
		
		var len = trsValue.length;
		
		if(sortIndex%2 == 0) {
			//如果已经排序了则直接倒序
			trsValue.reverse();
		} else {
			for(var i = 0; i < len; i++) {
				//split() 方法用于把一个字符串分割成字符串数组
				//获取每行分割后数组的第一个值,即此列的数组类型,定义了字符串\数字\Ip
				type = trsValue[i].split(".separator")[0];
				for(var j = i + 1; j < len; j++) {
					//获取每行分割后数组的第二个值,即文本值
					value1 = trsValue[i].split(".separator")[1];
					//获取下一行分割后数组的第二个值,即文本值
					value2 = trsValue[j].split(".separator")[1];
					//接下来是数字\字符串等的比较
					if(type == "number") {
						value1 = value1 == "" ? 0 : value1;
						value2 = value2 == "" ? 0 : value2;
						if(parseFloat(value1) > parseFloat(value2)) {
							var temp = trsValue[j];
							trsValue[j] = trsValue[i];
							trsValue[i] = temp;
						}
					} else {
						if(value1.localeCompare(value2) > 0) { //该方法不兼容谷歌浏览器
							var temp = trsValue[j];
							trsValue[j] = trsValue[i];
							trsValue[i] = temp;
						}
					}
				}
			}
		}

		for(var i = 0; i < len; i++) {
			table.find("tbody tr:eq(" + i + ")").html(trsValue[i].split(".separator")[2]);
		}

		sortIndex += 1;
	}
	
		
});
	
function compareWordTime(wordType,compareWordList,jkwordList,j){
		if(wordType == "全部"){
			compareWordList.push(jkwordList[j]);
		}
		if(wordType == "一委站"){
			if(jkwordList[j][0] == "一委站"){
				compareWordList.push(jkwordList[j]);
			}
		}
		if(wordType == "二委站"){
			if(jkwordList[j][0] == "二委站"){
				compareWordList.push(jkwordList[j]);
			}
		}
		
		if(wordType == "教育局站"){
			if(jkwordList[j][0] == "教育局站"){
				compareWordList.push(jkwordList[j]);
			}
		}
		
}	
	

	