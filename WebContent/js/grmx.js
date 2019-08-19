function getRootPath(){      
	var curWwwPath=window.document.location.href;      
    var pathName=window.document.location.pathname;      
    var pos=curWwwPath.indexOf(pathName); 
    var localhostPaht=curWwwPath.substring(0,pos);      
    var projectName=pathName.substring(0,pathName.substr(1).indexOf('/')+1);      
    return(localhostPaht+projectName);  
} 
function grjs(){
	var selHrz =$('#hrz').val();
	var hrz;
	var kxs=$('#kxs').val();
	var grmj=$('#sjmj').val();
	
	var wd=$('#swwd').val();
		
	 var ygssrl=kxs*(18-wd)*grmj/25;
	 var tygrl=kxs*(18-wd)*grmj/25*24;
	 $('#ygssrl').val(ygssrl.toFixed(2));
	 $('#tygrl').val(tygrl.toFixed(2));
	 
}

function csjs1(){
	var sr =$('#ygssrl').val();
	if(sr==""){
		alert("请先计算瞬时热量")
		return;
	}
	var sl;var gswd;var hswd;
	if($("#jslx1").val()=="供水温度计算"){
		sl=$("#ssll1").val();
		hswd=$("#hswd1").val();
		if(sl!=0){
			gswd=sr*239/sl+hswd;
			$("#gswd1").val(parseFloat(gswd).toFixed(2));
		}else{
			alert("瞬时流量请勿填0！")
		}
		return;
	}
	if($("#jslx1").val()=="回水温度计算"){
		sl=$("#ssll1").val();
		gswd=$("#gswd1").val();
		if(sl!=0){
			hswd=gswd-sr*239/sl;
			$("#hswd1").val(hswd.toFixed(2));
		}else{
			alert("瞬时流量请勿填0！")
		}
		return;
	}
	
	if($("#jslx1").val()=="瞬时流量计算"){
		hswd=$("#hswd1").val();
		gswd=$("#gswd1").val();
		if(gswd-hswd>0){
			sl=sr*239/(gswd-hswd)
			$("#ssll1").val(sl.toFixed(2));
		}else{
			alert("供水温度应大于回水温度！")
		}
		return;
	}
	
	 
}

function csjs2(){
	var sr =$('#ygssrl').val();
	if(sr==""){
		alert("请先计算瞬时热量")
		return;
	}
	var sl;var gswd;var hswd;
	if($("#jslx2").val()=="供水温度计算"){
		sl=$("#ssll2").val();
		hswd=$("#hswd2").val();
		if(sl!=0){
			gswd=sr*239/sl+hswd;
			$("#gswd2").val(parseFloat(gswd).toFixed(2));
		}else{
			alert("瞬时流量请勿填0！")
		}
		return;
	}
	if($("#jslx2").val()=="回水温度计算"){
		sl=$("#ssll2").val();
		gswd=$("#gswd2").val();
		if(sl!=0){
			hswd=gswd-sr*239/sl;
			$("#hswd2").val(hswd.toFixed(2));
		}else{
			alert("瞬时流量请勿填0！")
		}
		return;
	}
	
	if($("#jslx2").val()=="瞬时流量计算"){
		hswd=$("#hswd2").val();
		gswd=$("#gswd2").val();
		if(gswd-hswd>0){
			sl=sr*239/(gswd-hswd)
			$("#ssll2").val(sl.toFixed(2));
		}else{
			alert("供水温度应大于回水温度！")
		}
		return;
	}
	
	 
}
$(document).ready(function() {
	
	$.ajax({
		url:'https://www.tianqiapi.com/api/',
		async:false,
		dataType:"json",
		data:{	
			
		},
		success:function(res){
			
			$('#swwd').val(res.data[0].tem.replace("℃",""));
		}
		
	});
	$("#jsfs").change(function(){
		
		if($("#jsfs").val()=="实际参数计算"){
			$.ajax({
				url : getRootPath()+"/OpcCon/getHrzXx.action", 
				async : false,
				dataType : "json",
				data : {
				"hrz":$('#hrz').val(),
				
				},
				success : function(data) {
					if(data.list.length>0){
						$('#kxs').val(data.list[0].Kxs);
						$('#sjmj').val(data.list[0].shijimj);
						
					}
					
				}
			});
		}
		
	});
		
	
	

});







