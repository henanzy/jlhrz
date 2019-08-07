$(document).ready(function() {
	
		//表头固定
		var auditwordtableCont = $('#auditword_table_body table tr th'); //获取th
		var auditwordtableScroll = $('#auditword_table_body'); //获取滚动条同级
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
		var shwordList = [];
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
				shwordList.push(arr1);
			};
		}

		jsArrChange(xinwordListj);
		

		
		//tbody
		

		
		var shwordTbody = document.getElementById("shword_body");
		for(var i = 0;i < shwordList.length;i ++){
			var shwordTr = document.createElement("tr");
			if(i%2 == 1){
				shwordTr.className = "gradeX odd";
			}else if(i%2 == 0){
				shwordTr.className = "gradeX even";
			}
			for(var j = 0;j < shwordList[i].length;j ++){
				shwordList[i][j] = shwordList[i][j]+"";
//				if(shwordList[i][j].length > 15){
//					shwordList[i][j] = shwordList[i][j].slice(0,14);
//					shwordTr.innerHTML += "<td>" + shwordList[i][j] + "···</td>";
//				}else{
//					shwordTr.innerHTML += "<td>" + shwordList[i][j] + "</td>";
//				}
				shwordTr.innerHTML += "<td>" + shwordList[i][j] + "</td>";
			}
			shwordTr.innerHTML += "<td><input class='sh_succeed' type='button' value='审核通过' /><input class='sh_back' type='button' value='回退' /><input class='sh_void' type='button' value='作废' /></td>";
			shwordTbody.appendChild(shwordTr);
		}

		
		//审核通过
		$(".sh_succeed").click(function(){
			$("#shword_succeed").show();
			var suctr = $(this).parent().parent().children();
			
			//修改数据
			var sucwordList = [];
			for(var x = 0 ; x < 10 ; x ++){
				sucwordList.push(suctr[x].innerHTML);
			}
			
			for(var i = 0;i < 10;i ++){
				$("#shword_succeed .succeed_word_input")[i].value = sucwordList[i];
			}
			
			var nowTime = getTime();
			
			$("#shword_succeed input[name='audittime']").val(nowTime);
			
		});
		
		//确定审核通过
		$("#word_succeed_btn").click(function(){
			var shinp = $("#shword_succeed .succeed_word_input");
			var shValue = [];
			for(var i = 0 ; i < shinp.length ; i ++){
				shValue.push(shinp[i].value);
			}
			
			/*alert(shValue);*/
			$("#shword_succeed").hide();
		});
		
		//回退
		$(".sh_back").click(function(){
			$("#shword_back").show();
			var backtr = $(this).parent().parent().children();
			
			//修改数据
			var backwordList = [];
			for(var x = 0 ; x < 10 ; x ++){
				backwordList.push(backtr[x].innerHTML);
			}
			
			for(var i = 0;i < 10;i ++){
				$("#shword_back .back_word_input")[i].value = backwordList[i];
			}
			
			var nowTime = getTime();
			
			$("#shword_back input[name='audittime']").val(nowTime);
			
		});
		//确定回退
		$("#word_back_btn").click(function(){
			var backinp = $("#shword_back .back_word_input");
			var backValue = [];
			for(var i = 0 ; i < backinp.length ; i ++){
				backValue.push(backinp[i].value);
			}
			
		/*	alert(backValue);*/
			$("#shword_back").hide();
		});
		
		//作废
		$(".sh_void").click(function(){
			$("#shword_void").show();
			var voidtr = $(this).parent().parent().children();
			
			//修改数据
			var voidwordList = [];
			for(var x = 0 ; x < 10 ; x ++){
				voidwordList.push(voidtr[x].innerHTML);
			}
			
			for(var i = 0;i < 10;i ++){
				$("#shword_void .void_word_input")[i].value = voidwordList[i];
			}
			
			var nowTime = getTime();
			
			$("#shword_void input[name='audittime']").val(nowTime);
			
		});
		//确定作废
		$("#word_void_btn").click(function(){
			var voidinp = $("#shword_void .void_word_input");
			var voidValue = [];
			for(var i = 0 ; i < voidinp.length ; i ++){
				voidValue.push(voidinp[i].value);
			}
			
			/*alert(voidValue);*/
			$("#shword_void").hide();
		});
		
		
		//关闭审核
		$(".close").click(function(){
			$("#shword_succeed").hide();
			$("#shword_back").hide();
			$("#shword_void").hide();
		});
		
		
		
		//排序
		var tableObject = $('#auditword_table_body table'); //获取id为xincreate_table_body的table对象
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
		
		
	});


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