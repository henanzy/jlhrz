$(document).ready(function() {
	
	//表头固定
	var auditwordtableCont = $('#monitword_table_body table tr th'); //获取th
	var auditwordtableScroll = $('#monitword_table_body'); //获取滚动条同级
	auditwordtableScroll.on('scroll', scrollHandleauditword);
	var auditwordtableCont1 = $('#monitword_table_body1 table tr th'); //获取th
	var auditwordtableScroll1 = $('#monitword_table_body1'); //获取滚动条同级
	auditwordtableScroll.on('scroll', scrollHandleauditword);
	function scrollHandleauditword() {
		var scrollTop = auditwordtableScroll.scrollTop();
		// 当滚动距离大于0时设置top及相应的样式
		if (scrollTop > 0) {
			auditwordtableCont.css({
				"top" : scrollTop + 'px',
				"marginTop" : "-1px",
				"backgroundColor" : "#EBEBEB"
			})
		} else { // 当滚动距离小于0时设置top及相应的样式 
			auditwordtableCont.css({
				"top" : scrollTop + 'px',
				"marginTop" : "0",
				"backgroundColor" : "#EBEBEB"
			})
		}
	}
	
	
	var wordList = [
		["调节阀",23,"河南郑州公司","PH42351","50"],
		["热水表",234,"河南郑州公司","PH42351","50"],
		["热量表",234,"河南郑州公司","PH42351","50"],
		["换热器",234,"河南郑州公司","PH42351","50"],
		["流量表",234,"河南郑州公司","PH42351","50"],
		["循环泵",234,"河南郑州公司","PH42351","50"],
		["补水泵",234,"河南郑州公司","PH42351","50"],
		["泄压阀",44,"河南郑州公司","PH42351","50"],
		["补水阀",234,"河南郑州公司","PH42351","50"],
		["水表",234,"河南郑州公司","PH42351","50"],
		["调节阀",234,"河南郑州公司","PH42351","50"],
		["热水表",234,"河南郑州公司","PH42351","50"],
		["热量表",234,"河南郑州公司","PH42351","50"],
		["换热器",234,"河南郑州公司","PH42351","50"],
		["流量表",44,"河南郑州公司","PH42351","50"],
		["循环泵",234,"河南郑州公司","PH42351","50"],
		["补水泵",234,"河南郑州公司","PH42351","50"],
		["泄压阀",234,"河南郑州公司","PH42351","50"],
		["补水阀",234,"河南郑州公司","PH42351","50"],
		["水表",234,"河南郑州公司","PH42351","50"]
	];
	
	var wordList1 = [
		["调节阀","PH42351","张三","出库","20","2019-05-01"],
		["热水表","PH42351","张三","出库","34","2019-05-02"],
		["调节阀","PH42351","张三","出库","22","2019-05-09"],
		["换热器","PH42351","张三","入库","9","2019-05-09"],
		["调节阀","PH42351","张三","出库","11","2019-05-14"],
		["补水阀","PH42351","张三","出库","12","2019-05-14"],
		["调节阀","PH42351","张三","入库","20","2019-05-17"],
		["热量表","PH42351","张三","出库","24","2019-05-23"],
		["调节阀","PH42351","张三","出库","33","2019-05-27"],
		["热量表","PH42351","张三","入库","11","2019-05-28"],
		["循环泵","PH42351","张三","出库","4","2019-05-29"],
		["循环泵","PH42351","张三","出库","5","2019-05-29"]
		
	];

//	var wordList = [];
//	function jsArrChange(json){
//		for (var i = 0 ; i < json.length ; i ++) {
//			var arr1 = [];
//			arr1[0] = json[i].一次瞬时供流量;
//			arr1[1] = json[i].一次瞬时供热量;
//			arr1[2] = json[i].一次累计供流量;
//			arr1[3] = json[i].一次累计供热量;
//			arr1[4] = json[i].总电压;
//			arr1[5] = json[i].A项电压;
//			arr1[6] = json[i].B项电压;
//			arr1[7] = json[i].C项电压;
//			arr1[8] = json[i].A项电流;
//			arr1[9] = json[i].B项电流;
//			arr1[10] = json[i].C项电流;
//			wordList.push(arr1);
//		};
//	}
//	jsArrChange(list);
	
	

	//tbody
	

	
	var shwordTbody = document.getElementById("jkword_body");
	for(var i = 0;i < wordList.length;i ++){
		var shwordTr = document.createElement("tr");
		if(i%2 == 1){
			shwordTr.className = "gradeX odd";
		}else if(i%2 == 0){
			shwordTr.className = "gradeX even";
		}
		var flag=3
		if(wordList[i][1]<wordList[i][4]){
			flag=0;
		}
		for(var j = 0;j < wordList[i].length;j ++){
			if(flag==0&&j==1){
				
				wordList[i][j] = wordList[i][j]+"";
				
				shwordTr.innerHTML += "<td><font  color='red'>" + wordList[i][j] + "</font></td>";
			}else{
				wordList[i][j] = wordList[i][j]+"";
				shwordTr.innerHTML += "<td>" + wordList[i][j] + "</td>";	
			}
			
		}
		shwordTr.innerHTML += "<td><input class='put_btn' type='button' value='入库' /><input class='out_btn' type='button' value='出库' /></td>";
		shwordTbody.appendChild(shwordTr);
	}
	
	var shwordTbody1 = document.getElementById("jkword_body1");
	for(var i = 0;i < wordList1.length;i ++){
		var shwordTr = document.createElement("tr");
		if(i%2 == 1){
			shwordTr.className = "gradeX odd";
		}else if(i%2 == 0){
			shwordTr.className = "gradeX even";
		}
		for(var j = 0;j < wordList1[i].length;j ++){
			wordList1[i][j] = wordList1[i][j]+"";
			shwordTr.innerHTML += "<td>" + wordList1[i][j] + "</td>";
		}
		
		shwordTbody1.appendChild(shwordTr);
	}

	
	
	//工单搜索

	$("#jk_search_btn").click(function(){
		var wordType = $(".jk_search select").val();
		var compareWordList = [];
		var WordListTime = "";
		for(var j = 0;j < wordList.length;j ++){
		/*	WordListTime = new Date(wordList[j][6]).getTime();*/
		/*	compareWord(wordType,WordListTime,compareWordList,wordList,j);*/
			compareWord(wordType,compareWordList,wordList,j);
		};
		$("#jkword_body").empty();
		var shwordTbody = document.getElementById("jkword_body");
		for(var x = 0;x < compareWordList.length;x ++){
			var shwordTr = document.createElement("tr");
			var newWordElemnet = "";
			if(x%2 == 1){
				shwordTr.className = "gradeX odd";
			}else if(x%2 == 0){
				shwordTr.className = "gradeX even";
			}
			var flag1=3;
			var sl=compareWordList[x][1];
			var yj=compareWordList[x][4];
			if(parseInt(yj)>parseInt(sl)){
				flag1=0;
			}
			for(var y = 0;y < compareWordList[x].length;y ++){
				if(flag1==0&&y==1){
					
					compareWordList[x][y] = compareWordList[x][y]+"";
					
					shwordTr.innerHTML +=  "<td ><font  color='red'>" + compareWordList[x][y] + "</font></td>";
				}else{
					shwordTr.innerHTML += "<td>" + compareWordList[x][y] + "</td>";
				}
				
			}
			shwordTr.innerHTML += "<td><input class='put_btn' onclick='put_word(this);' type='button' value='入库' /><input class='out_btn' onclick='out_word(this);' type='button' value='出库' /></td>";
			shwordTbody.appendChild(shwordTr);
			
		}
	});
	
	$("#jk_search_btn1").click(function(){
		var wordType = $("#type1").val();
		var compareWordList = [];
		var WordListTime = "";
		for(var j = 0;j < wordList1.length;j ++){
		/*	WordListTime = new Date(wordList[j][6]).getTime();*/
		/*	compareWord(wordType,WordListTime,compareWordList,wordList,j);*/
			compareWord1(wordType,compareWordList,wordList1,j);
		};
		$("#jkword_body1").empty();
		
		for(var x = 0;x < compareWordList.length;x ++){
			
			var newWordElemnet = "";
			if(x%2 == 1){
				newWordElemnet = "<tr class='gradeX odd'>";
			}else if(x%2 == 0){
				newWordElemnet = "<tr class='gradeX even'>";
			}
			
			for(var y = 0;y < compareWordList[x].length;y ++){
				
				newWordElemnet += "<td>" + compareWordList[x][y] + "</td>";
			}
			
			$("#jkword_body1").append(newWordElemnet);
			
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
	
	//入库按钮
	$(".put_btn").click(function(){
		
		put_word(this);
	});
	
	//出库按钮
	$(".out_btn").click(function(){
		out_word(this);
	});
	
	//关闭按钮
	$(".close").click(function(){
		$("#out_word").hide();
		$("#put_word").hide();
	});
	
//	出入库确认
	$("#word_put_btn").click(function(){
		$("#put_word").hide();
	});
	$("#word_out_btn").click(function(){
		$("#out_word").hide();
	});
		
});
//入库
function put_word(p){
	$("#put_word").show();
	var xintr = $(p).parent().parent().children();
	//修改数据
	var changewordList = [];
	for(var x = 0 ; x < 2 ; x ++){
		if(xintr[x].innerHTML.indexOf("font")!=-1){
			changewordList.push(xintr[x].firstChild.innerHTML);
		}else{
			changewordList.push(xintr[x].innerHTML);
		}
		
	}
	
	var changeInput = $("#put_word .put_word_input");
	for(var i = 0;i < 2;i ++){
		
		$("#put_word .put_word_input")[i].value = changewordList[i];
	}

	$("#put_word .put_word_input[name='put_time']").val(getTime());
}

//出库
function out_word(p){
	$("#out_word").show();
	var xintr = $(p).parent().parent().children();
	//修改数据
	var changewordList = [];
	for(var x = 0 ; x < 2 ; x ++){
		if(xintr[x].innerHTML.indexOf("font")!=-1){
			changewordList.push(xintr[x].firstChild.innerHTML);
		}else{
			changewordList.push(xintr[x].innerHTML);
		}
		
	}
	var num = parseFloat(changewordList[1]);

	var changeInput = $("#out_word .out_word_input");
	for(var i = 0;i < 2;i ++){
		$("#out_word .out_word_input")[i].value = changewordList[i];
	}
	
	$("#out_word .out_word_input[name='out_time']").val(getTime());
	
	$("#out_word .out_word_input[name='out_num']").blur(function(){
		var out_num = parseFloat($("#out_word .out_word_input[name='out_num']").val());
		if(out_num > num || out_num <= 0){
			$("#out_word .out_num_sp").html("数量错误请确认！");
		}else{
			$("#out_word .out_num_sp").html("");
		}
	});
}


function compareWord(wordType,compareWordList,wordList,j){
	if(wordType == "全部"){
		compareWordList.push(wordList[j]);
	}
	if(wordType == wordList[j][0]){
		
		compareWordList.push(wordList[j]);
	
    }
	
}	

function compareWord1(wordType,compareWordList,wordList,j){
	var startTime=$('#startTime').val();
	var endTime=$('#endTime').val();
if(startTime!=null &&startTime!=""){
		
		if(wordList[j][5]<startTime){
			
			return;
		}
	}

if(endTime!=null &&endTime!=""){
	if(wordList[j][5]>endTime){
		return;
	}
}
var crk=$('#crk').val();
if(crk!="全部"){
	if(wordList[j][3]!=crk){
		return;
	}
}
	if(wordType == "全部"){
		compareWordList.push(wordList[j]);
	}
	if(wordType == wordList[j][0]){
		
			compareWordList.push(wordList[j]);
		
	}
	
}

function getTime() {  
	var nS = new Date();
    var year=nS.getFullYear(); 
    var mon = nS.getMonth()+1; 
    if(mon < 10){
    	mon = "0"+mon;
    }
    var day = nS.getDate(); 
    if(day < 10){
    	day = "0"+day;
    }
    var hours = nS.getHours(); 
    if(hours < 10){
    	hours = "0"+hours;
    }
    var minu = nS.getMinutes(); 
    if(minu < 10){
    	minu = "0"+minu;
    }
    var sec = nS.getSeconds(); 
    if(sec < 10){
    	sec = "0"+sec;
    }
     
    return year+'-'+mon+'-'+day+' '+hours+':'+minu+':'+sec; 
} 

	