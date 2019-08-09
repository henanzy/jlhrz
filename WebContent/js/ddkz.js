$(document).ready(function(){
//  表格

	var qgxxList=[];
	function jsArrChange(json){
		for (var i = 0 ; i < json.length ; i ++) {
			var arr1 = [];
			arr1[0] = json[i].ID;
			arr1[1] = json[i].JzqID;
			arr1[2] = json[i].JzqIp;
			arr1[3] = json[i].JzqPort;
			arr1[4] = json[i].Status;
			arr1[5] = json[i].XqName;
			arr1[6] = json[i].HESName;
			arr1[7] = json[i].InstallAD;
			arr1[8] = json[i].UpdateTime;
			
		
			qgxxList.push(arr1);
		};
	}
	//jsArrChange(list);
	//tbodydis("",qgxxList)
$("#ddkz_btn").click(function(){
		
		xin_change(this);
	});
	
});

function xin_change(p){
	
	$("#change_word").show();
	
	/*var xintr = $(p).parent().parent().children();
	//修改数据
	var changewordList = [];
	for(var x = 0 ; x < 8 ; x ++){
		if(x==4){
          continue;
		}
		changewordList.push(xintr[x].innerHTML);
	}
	
	var changeInput = $("#change_word .change_word_input");
	for(var i = 0;i < changeInput.length;i ++){
		
			$("#change_word .change_word_input")[i].value = changewordList[i];
		
		
	}*/
}
//表格写入函数带分页
function tbodydis(oldlist,newlist){
	
	if(oldlist == ""){
		var opt = [];
		for(var i = 0; i < newlist.length; i++) {
			for (var j = 0 ; j <newlist[i].length ; j ++) {
				if(j == 1){
					if( opt.indexOf(newlist[i][1]) == -1){
						opt.push(newlist[i][1]);
					}
				}
			}
		}
		for(var i = 0; i < opt.length; i++) {
			$("#xq").append("<option>"+opt[i]+"</option>");
		}
	}
	
	var current = 1;
	function pageInit(currentPage, pagesize) {
		current = currentPage; // 将当前页存储全局变量
		pageCount = Math.ceil(newlist.length / pagesize); // 一共分多少页
		currentNum.innerHTML = currentPage;
		num.innerHTML = newlist.length + "条";
		pages.innerHTML = pageCount;
		var startRow = (currentPage - 1) * pagesize; // 开始显示的行
		var endRow = currentPage * pagesize - 1; // 结束显示的行
		var endRow = (endRow > newlist.length) ? newlist.length : endRow; // 如果结束行数大于总数目，显示总数目，否则结束行
		
		var html = "";
		for(var i = 0; i < newlist.length; i++) {
			if(i >= startRow && i <= endRow) { // 通过间隔分隔数组
				if(i%2 == 1){
					html += "<tr class='gradeX odd'>";
				}else if(i%2 == 0){
					html += "<tr class='gradeX even'>";
				}
				

				for (var j = 0 ; j <newlist[i].length ; j ++) {
					if(j==0){

						html += "<td style='display:none;'>" + newlist[i][j] + "</td>";
    					
    				}else{
                  html += "<td>" + newlist[i][j] + "</td>"
    				}
				}
				
			}
		}
		jzq_body.innerHTML = html;

	
		
	
		var classname = "";
		$("table tbody td").hover(function() {
			classname = $(this).parent().attr("class");
			$(this).parent().removeClass(classname).addClass("blue");
			$("table tbody tr").find('td:eq(' + $(this).index() + ')').addClass('blue')
		}, function() {
			$(this).parent().removeClass("blue").addClass(classname);
			$("table tbody tr").find('td:eq(' + $(this).index() + ')').removeClass('blue')
		});
		
		$("#increase_btn").click(function(){

			$("#increase_word").show();
		});
		//修改按钮
		$("#ddkz_btn").click(function(){
			xin_change(this);
		});
		
		
	}
	
	select.onchange = function(ev) {
		pageInit(1, this.value)
	}
	first.onclick = function() {
		pageInit(1, select.value)
	}
	end.onclick = function() {
		pageInit(pageCount, select.value)
	}

	next.onclick = function() {
		var curr = current + 1;
		if(curr > pageCount) {
			return
		}
		pageInit(curr, select.value)
	}

	last.onclick = function() {
		var curr = current - 1;
		if(curr < 1) {
			return
		}
		pageInit(curr, select.value)
	}
	pageInit(1, 15);
	
	
	
	//关闭新增
	$(".close").click(function(){
		
		$("#change_word").hide();
	});
	
	//修改按钮
	$("#ddkz_btn").click(function(){
		
		xin_change(this);
	});
	
	$("#word_change_btn").click(function(){
        alert("修改成功")
		
		
		$("#change_word").hide(); 
	});
	
	function xin_change(p){
		
		$("#change_word").show();
		console.log("1111")
		/*var xintr = $(p).parent().parent().children();
		//修改数据
		var changewordList = [];
		for(var x = 0 ; x < 8 ; x ++){
			if(x==4){
	          continue;
			}
			changewordList.push(xintr[x].innerHTML);
		}
		
		var changeInput = $("#change_word .change_word_input");
		for(var i = 0;i < changeInput.length;i ++){
			
				$("#change_word .change_word_input")[i].value = changewordList[i];
			
			
		}*/
	}
	
	


	
}
