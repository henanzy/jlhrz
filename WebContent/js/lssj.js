$(document).ready(function() {
	
	
	
	var wordList = [];
	function jsArrChange(json){
		for (var i = 0 ; i < json.length ; i ++) {
			var arr1 = [];
			arr1[0] = json[i].一次瞬时供流量;
			arr1[1] = json[i].一次瞬时供热量;
			arr1[2] = json[i].一次累计供流量;
			arr1[3] = json[i].一次累计供热量;
			arr1[4] = json[i].总电压;
			arr1[5] = json[i].A项电压;
			arr1[6] = json[i].B项电压;
			arr1[7] = json[i].C项电压;
			arr1[8] = json[i].A项电流;
			arr1[9] = json[i].B项电流;
			arr1[10] = json[i].C项电流;
			wordList.push(arr1);
		};
	}
	jsArrChange(list);
	
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
			headTr.innerHTML += "<th class='table-th-css' style='width:150px'>换热站</th>";
			for(var j = 0;j < chk_value.length;j ++){
				chk_value[j] = chk_value[j]+"";

				headTr.innerHTML += "<th class='table-th-css' style='width:150px'>" + chk_value[j] + "</th>";
			}
			head.appendChild(headTr);
			$("#change_word").hide();
			
			for(var i=0;i<list.length;i++){
				var arr=[];
				arr[0]=list[i].hrz;
				for(var j=0;j<chk_value.length;j++){
					var str=chk_value[j];
					
					arr[j+1]=list[i][str];
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
					chk[i][j] = chk[i][j]+"";

					jkwordTr.innerHTML += "<td>" + chk[i][j] + "</td>";
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
	

	