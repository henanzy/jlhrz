$(document).ready(function() {
	//表头固定
		var kecalltableCont = $('#kecall_table_body table tr th'); //获取th
		var kecalltableScroll = $('#kecall_table_body'); //获取滚动条同级
		kecalltableScroll.on('scroll', scrollHandlekecall);

		function scrollHandlekecall() {
			var scrollTop = kecalltableScroll.scrollTop();
			// 当滚动距离大于0时设置top及相应的样式
			if (scrollTop > 0) {
				kecalltableCont.css({
					"top" : scrollTop + 'px',
					"marginTop" : "-1px",
					"backgroundColor" : "#EBEBEB"
				})
			} else { // 当滚动距离小于0时设置top及相应的样式 
				kecalltableCont.css({
					"top" : scrollTop + 'px',
					"marginTop" : "0",
					"backgroundColor" : "#EBEBEB"
				})
			}
		}
		
		
		var kewordtableCont = $('#keword_table_body table tr th'); //获取th
		var kewordtableScroll = $('#keword_table_body'); //获取滚动条同级
		kewordtableScroll.on('scroll', scrollHandlekeword);

		function scrollHandlekeword() {
			var scrollTop = kewordtableScroll.scrollTop();
			// 当滚动距离大于0时设置top及相应的样式
			if (scrollTop > 0) {
				kewordtableCont.css({
					"top" : scrollTop + 'px',
					"marginTop" : "-1px",
					"backgroundColor" : "#EBEBEB"
				})
			} else { // 当滚动距离小于0时设置top及相应的样式 
				kewordtableCont.css({
					"top" : scrollTop + 'px',
					"marginTop" : "0",
					"backgroundColor" : "#EBEBEB"
				})
			}
		}
		//接入电话
		if(telephone!=1){
			 document.getElementById('user_phone').value=telephone;
			bodySHOW();
		}
	
		//查询按钮
		
		$("#user_search").click(function(){
			var phone = document.getElementById('user_phone').value;
			var phoneReg = /^1[34578]\d{9}$/;
		    if((phoneReg.test(phone))){ 
		    	bodySHOW();
		    	
		    }else{
		    	$("#user_span").show();
		    	$("#user_search_body").hide();
		    }
			
		});
		
		function bodySHOW(){
	    	$("#user_search_body").show();
	    	$("#user_span").hide();
	    	//用户资料
	    	userInfo(yhInfo,tel);
			//室内情况
	    	indoorInfo(yhInfo);
	    	//电话记录
	    	callInfo(selTelByGd);
	    	//工单记录
	    	wordInfo(selTelByGd);
	    	
	    	
	    	
	    	//电话排序
			var ctableObject = $('#kecall_table_body table'); //获取id为xincreate_table_body的table对象
			var ctbHead = ctableObject.children('thead'); //获取table对象下的thead
			var ctbHeadTh = ctbHead.find('tr th'); //获取thead下的tr下的th
			var ctbBody = ctableObject.children('tbody'); //获取table对象下的tbody
			var ctbBodyTr = ctbBody.find('tr'); //获取tbody下的tr
			var csortIndex = 1;
			
			ctbHeadTh.each(function() { //遍历thead的tr下的th
				var cthisIndex = ctbHeadTh.index($(this)); //获取th所在的列号

				var ctype ="";
				$(this).click(function() { //给当前表头th增加点击事件
					ctbHeadTh.find("span").show();
					if(csortIndex%2 == 1){//奇数偶数显示
						$(this).find(".span-up").show();
						$(this).find(".span-down").hide();
					}else{
						$(this).find(".span-up").hide();
						$(this).find(".span-down").show();
					}
					callcheckColumnValue(cthisIndex,ctableObject);
				});
			});
			
			//对表格排序
			function callcheckColumnValue(cindex,ctableObject) {
				var ctrsValue = new Array();
				
				ctbBodyTr.each(function() {
					var ctds = $(this).find('td');
					//获取行号为index列的某一行的单元格内容与该单元格所在行的行内容添加到数组trsValue中
					var cdata = $(ctds[cindex]).html();
					if(isNaN(cdata)&&!isNaN(Date.parse(cdata))){
					ctype = "string";
					}else if (parseFloat(cdata)) {
						ctype = "number";
					}else{
						ctype = "string";
					}
					
					ctrsValue.push(ctype + ".separator" + $(ctds[cindex]).html() + ".separator" + $(this).html());
					$(this).html("");
				});

				var len = ctrsValue.length;

				if(csortIndex%2 == 0) {
					//如果已经排序了则直接倒序
					ctrsValue.reverse();
				} else {
					for(var i = 0; i < len; i++) {
						//split() 方法用于把一个字符串分割成字符串数组
						//获取每行分割后数组的第一个值,即此列的数组类型,定义了字符串\数字\Ip
						ctype = ctrsValue[i].split(".separator")[0];
						for(var j = i + 1; j < len; j++) {
							//获取每行分割后数组的第二个值,即文本值
							value1 = ctrsValue[i].split(".separator")[1];
							//获取下一行分割后数组的第二个值,即文本值
							value2 = ctrsValue[j].split(".separator")[1];
							//接下来是数字\字符串等的比较
							if(ctype == "number") {
								value1 = value1 == "" ? 0 : value1;
								value2 = value2 == "" ? 0 : value2;
								if(parseFloat(value1) > parseFloat(value2)) {
									var ctemp = ctrsValue[j];
									ctrsValue[j] = ctrsValue[i];
									ctrsValue[i] = ctemp;
								}
							} else {
								if(value1.localeCompare(value2) > 0) { //该方法不兼容谷歌浏览器
									var ctemp = ctrsValue[j];
									ctrsValue[j] = ctrsValue[i];
									ctrsValue[i] = ctemp;
								}
							}
						}
					}
				}

				for(var i = 0; i < len; i++) {
					ctableObject.find("tbody tr:eq(" + i + ")").html(ctrsValue[i].split(".separator")[2]);
				}

				csortIndex += 1;
			}
			
			//工单排序
			var tableObject = $('#keword_table_body table'); //获取id为xincreate_table_body的table对象
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
					checkColumnValue(thisIndex,tableObject);
				});
			});
			
			
			//对表格排序
			function checkColumnValue(index,tableObject) {
				var trsValue = new Array();

				tbBodyTr.each(function() {
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
					tableObject.find("tbody tr:eq(" + i + ")").html(trsValue[i].split(".separator")[2]);
				}

				sortIndex += 1;
			}
    	}
		

    	//新增工单
		$("#user_increase").click(function(){
			alert(1);
		});
		
	});


function userInfo(yhInfo,tel){
	var userInform = [];
	jsArrChangeuser(yhInfo,tel);

	var userInput = $(".user_input");
	for(var i = 0 ; i < 7 ; i ++){
		userInput[i].value = userInform[i];
	}
	var nowTime = getTime(new Date());
	$("#user_search_body input[name='registtime']").val(nowTime);
	
	function jsArrChangeuser(json,t){
		for (var i = 0 ; i < json.length ; i ++) {
			userInform[0] = json[i].yhName;
			userInform[1] = json[i].xqName;
			userInform[2] = json[i].buildNo;
			userInform[3] = json[i].cellNo;
			userInform[4] = json[i].houseNo;
			userInform[5] = json[i].heatArea;
			userInform[6] = json[i].telephone;
		}
	
	}
}

function getTime(nS) {  
//	var nS = new Date();
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


function indoorInfo(yhInfo){
	
	var indoorInform = [];
	jsArrChangeindoor(yhInfo);
	
	var indoorInput = $(".indoor_input");
	for(var i = 0 ; i < indoorInput.length ; i ++){
		indoorInput[i].value = indoorInform[i];
	}
	
	function jsArrChangeindoor(json){
		for (var i = 0 ; i < json.length ; i ++) {
			indoorInform[0] = json[i].wCAd;
			indoorInform[1] = json[i].valAd;
			indoorInform[2] = json[i].roomTemp;
			indoorInform[3] = json[i].type;
			indoorInform[4] = json[i].valTemp;
			indoorInform[5] = json[i].famKd;
			var t = new Date(json[i].recordTime);
			indoorInform[6] = getTime(t);
		}
	
	}
	
}


function callInfo(selTelByGd){
	var callInform = [];
	function jsArrChangecall(json){
		for (var i = 0 ; i < json.length ; i ++) {
			var arr1 = [];
			arr1[0] = i + 1;
			arr1[1] = json[i].recTime;
			if(json[i].callFlag==1){
	         	arr1[2] = json[i].callerNo;
	         	arr1[3] = "呼入";
			}else{
				arr1[2] = json[i].calledNo;
				arr1[3] = "呼出";
			}
			arr1[4] = json[i].fileName;
			arr1[5] = json[i].giveups;
			callInform.push(arr1);
		};
	}
	jsArrChangecall(findCallByTel);

	var kecallTbody = document.getElementById("kecall_body");
	kecallTbody.innerHTML = "";
	for(var i = 0;i < callInform.length;i ++){
		var callTr = document.createElement("tr");
		if(i%2 == 1){
			callTr.className = "gradeX odd";
		}else if(i%2 == 0){
			callTr.className = "gradeX even";
		}
		
		var url= '"'+callInform[i][4]+'"';
		var reg=/\\|\//g;
		url= url.replace(reg,"/");
		console.log("flag   "+callInform[i][5])
		if(callInform[i][5]==1){
			callTr.innerHTML = "<td>" + callInform[i][0] + "</td><td>" + callInform[i][1] + "</td><td>" + callInform[i][2] + "</td><td>" + callInform[i][3] + "</td><td>未接通</td>";
		}else{
			callTr.innerHTML = "<td>" + callInform[i][0] + "</td><td>" + callInform[i][1] + "</td><td>" + callInform[i][2] + "</td><td>" + callInform[i][3] + "</td><td><a href='#' onclick='bf("+url+")'>播放</a></td>";
		}
		
		kecallTbody.appendChild(callTr);
	}
}




function wordInfo(selTelByGd){
	var wordInform = [];
	function jsArrChangeword(json){
		for (var i = 0 ; i < json.length ; i ++) {
			var arr1 = [];
			arr1[0] = json[i].gdNum;
			arr1[1] = json[i].visCon;
			arr1[2] = json[i].tjName;
			arr1[3] = json[i].tjTime;
			arr1[4] = json[i].state;
			wordInform.push(arr1);
		};
	}
	jsArrChangeword(selTelByGd);
//	var wordInform = [ 
//		["GB20190213102456","不显示温度","某某某","2019-02-13","已处理"],
//		["GB20190213123418","不显示温度","某某某","2019-02-13","已处理"],
//		["GB20190213145648","不显示温度","某某某","2019-02-13","审核通过"],
//		["GB20190213130527","不显示温度","某某某","2019-02-13","已处理"],
//		["GB20190213134937","不显示温度","某某某","2019-02-13","未审核"],
//		["GB20190214085703","不显示温度","某某某","2019-02-14","已回访"],
//		["GB20190214104027","不显示温度","某某某","2019-02-14","回退修改"],
//		["GB20190215152913","不显示温度","某某某","2019-02-15","未审核"],
//		["GB20190215185035","不显示温度","某某某","2019-02-15","已回访"],
//		["GB20190216035425","不显示温度","某某某","2019-02-16","逾期工单"],
//		["GB20190217512364","不显示温度","某某某","2019-02-17","已回访"],
//		["GB20190219561285","不显示温度","某某某","2019-02-19","作废"],
//		["GB20190221356120","不显示温度","某某某","2019-02-21","未审核"],
//		["GB20190223856415","不显示温度","某某某","2019-02-23","作废"],
//		["GB20190227546320","不显示温度","某某某","2019-02-27","回退修改"],
//		["GB20190228686451","不显示温度","某某某","2019-02-28","逾期工单"],
//		["GB20190302658965","不显示温度","某某某","2019-03-02","已接单"],
//		["GB20190303620365","不显示温度","某某某","2019-03-03","已接单"],
//		["GB20190306510423","不显示温度","某某某","2019-03-06","审核通过"],
//		["GB20190314298416","不显示温度","某某某","2019-03-14","逾期工单"],
//		["GB20190320036541","不显示温度","某某某","2019-03-20","未审核"],
//		["GB20190322036518","不显示温度","某某某","2019-03-22","审核通过"],
//		["GB20190325684106","不显示温度","某某某","2019-03-25","回退修改"]
//	];
	var wordTbody = document.getElementById("keword_body");
	wordTbody.innerHTML = "";
	for(var i = 0;i < wordInform.length;i ++){
		var wordTr = document.createElement("tr");
		if(i%2 == 1){
			wordTr.className = "gradeX odd";
		}else if(i%2 == 0){
			wordTr.className = "gradeX even";
		}
		wordTr.innerHTML = "<td>" + wordInform[i][0] + "</td><td>" + wordInform[i][1] + "</td><td>" + wordInform[i][2] + "</td><td>" + wordInform[i][3] + "</td><td>" + wordInform[i][4] + "</td>";
		wordTbody.appendChild(wordTr);
	}
}