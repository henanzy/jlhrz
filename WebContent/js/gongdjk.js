$(document).ready(function() {
	
	var jkwordList = [];
	function jsArrChange(json){
		for (var i = 0 ; i < json.length ; i ++) {
			var arr1 = [];
			arr1[0] = json[i].gdNum;
			arr1[1] = json[i].telephone;
			arr1[2] = json[i].yhName;
			arr1[3] = json[i].xqName;
			arr1[4] = json[i].buildNo;
			arr1[5] = json[i].cellNo;
			arr1[6] = json[i].houseNo;
			arr1[7] = json[i].visCon;
			arr1[8] = json[i].tjName;
			arr1[9] = json[i].tjTime;
			arr1[10] = json[i].state;
			if(json[i].pickName!=null&&json[i].pickName!=""){
				arr1[11] = json[i].pickName;
			}else{
				arr1[11] = " ";
			}
			if(json[i].pickTime!=null&&json[i].pickTime!=""){
				arr1[12] = json[i].pickTime;
			}else{
				arr1[12] = " ";
			}
			
			if(json[i].completetime!=null&&json[i].completetime!=""){
				arr1[13] = json[i].completetime;
			}else{
				arr1[13] = " ";
			}
			

			jkwordList.push(arr1);
		};
	}
	jsArrChange(xinwordListj);
	
	
	var jkwordTbody = document.getElementById("jkword_body");
	for(var i = 0;i < jkwordList.length;i ++){
		var jkwordTr = document.createElement("tr");
		if(i%2 == 1){
			jkwordTr.className = "gradeX odd";
		}else if(i%2 == 0){
			jkwordTr.className = "gradeX even";
		}
		for(var j = 0;j < jkwordList[i].length;j ++){
			jkwordList[i][j] = jkwordList[i][j]+"";
//			if(jkwordList[i][j].length > 15){
//				var new_jkwordList = jkwordList[i][j].slice(0,14);
//				jkwordTr.innerHTML += "<td>" + new_jkwordList + "···</td>";
//			}else{
//				jkwordTr.innerHTML += "<td>" + jkwordList[i][j] + "</td>";
//			}
			jkwordTr.innerHTML += "<td>" + jkwordList[i][j] + "</td>";
		}
		jkwordTbody.appendChild(jkwordTr);
	}
		
	
	//工单搜索
	$("#jk_search_btn").click(function(){
		var wordType = $(".jk_search select").val();
		var compareWordList = [];
		var WordListTime = "";
		for(var j = 0;j < jkwordList.length;j ++){
			WordListTime = new Date(jkwordList[j][6]).getTime();
			compareWordTime(wordType,WordListTime,compareWordList,jkwordList,j);
		};
		$("#jkword_body").empty();
		for(var x = 0;x < compareWordList.length;x ++){
			
			var newWordElemnet = "";
			if(x%2 == 1){
				
				newWordElemnet = "<tr class='gradeX odd'>";
				for(var y = 0;y < compareWordList[x].length;y ++){
					//省略字数
//					compareWordList[x][y] = compareWordList[x][y]+"";
//					if(compareWordList[x][y].length > 15){
//						var new_compareWordList = compareWordList[x][y].slice(0,14);
//						newWordElemnet += "<td>" + new_compareWordList + "···</td>";
//					}else{
//						newWordElemnet += "<td>" + compareWordList[x][y] + "</td>";
//					}
					newWordElemnet += "<td>" + compareWordList[x][y] + "</td>";
				}
				newWordElemnet += "</tr>";
				
			}else if(x%2 == 0){
				
				newWordElemnet = "<tr class='gradeX even'>";
				for(var y = 0;y < compareWordList[x].length;y ++){
					//省略字数
//					compareWordList[x][y] = compareWordList[x][y]+"";
//					if(compareWordList[x][y].length > 15){
//						var new_compareWordList = compareWordList[x][y].slice(0,14);
//						newWordElemnet += "<td>" + new_compareWordList + "···</td>";
//					}else{
//						newWordElemnet += "<td>" + compareWordList[x][y] + "</td>";
//					}
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
	
function compareWordTime(wordType,WordListTime,compareWordList,jkwordList,j){
		if(wordType == "全部"){
			compareWordList.push(jkwordList[j]);
		}
		if(wordType == "逾期工单"){
			if(jkwordList[j][10] == "逾期工单"){
				compareWordList.push(jkwordList[j]);
			}
		}
		if(wordType == "未审核"){
			if(jkwordList[j][10] == "未审核"){
				compareWordList.push(jkwordList[j]);
			}
		}
		if(wordType == "审核通过"){
			if(jkwordList[j][10] == "审核通过"){
				compareWordList.push(jkwordList[j]);
			}
		}
		if(wordType == "回退修改"){
			if(jkwordList[j][10] == "回退修改"){
				compareWordList.push(jkwordList[j]);
			}
		}
		
		if(wordType == "作废"){
			if(jkwordList[j][10] == "作废"){
				compareWordList.push(jkwordList[j]);
			}
		}
		if(wordType == "已接单"){
			if(jkwordList[j][10] == "已接单"){
				compareWordList.push(jkwordList[j]);
			}
		}
		if(wordType == "已处理"){
			if(jkwordList[j][10] == "已处理"){
				compareWordList.push(jkwordList[j]);
			}
		}
		if(wordType == "已回访"){
			if(jkwordList[j][10] == "已回访"){
				compareWordList.push(jkwordList[j]);
			}
		}
}	
	

	