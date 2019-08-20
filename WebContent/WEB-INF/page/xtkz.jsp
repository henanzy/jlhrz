<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>



<!-- Required Stylesheets -->
<link rel="stylesheet" type="text/css" href="../css/reset.css"
	media="screen" />
<link rel="stylesheet" type="text/css" href="../css/text.css"
	media="screen" />
<link rel="stylesheet" type="text/css"
	href="../css/fonts/ptsans/stylesheet.css" media="screen" />
<link rel="stylesheet" type="text/css" href="../css/fluid.css"
	media="screen" />

<link rel="stylesheet" type="text/css" href="../css/mws.style.css"
	media="screen" />
<link rel="stylesheet" type="text/css" href="../css/icons/icons.css"
	media="screen" />

<!-- Demo and Plugin Stylesheets -->
<link rel="stylesheet" type="text/css" href="../css/demo.css"
	media="screen" />

<link rel="stylesheet" type="text/css"
	href="../plugins/colorpicker/colorpicker.css" media="screen" />
<link rel="stylesheet" type="text/css"
	href="../plugins/jimgareaselect/css/imgareaselect-default.css"
	media="screen" />
<link rel="stylesheet" type="text/css"
	href="../plugins/fullcalendar/fullcalendar.css" media="screen" />
<link rel="stylesheet" type="text/css"
	href="../plugins/fullcalendar/fullcalendar.print.css" media="print" />
<link rel="stylesheet" type="text/css" href="../plugins/tipsy/tipsy.css"
	media="screen" />
<link rel="stylesheet" type="text/css"
	href="../plugins/sourcerer/Sourcerer-1.2.css" media="screen" />
<link rel="stylesheet" type="text/css"
	href="../plugins/jgrowl/jquery.jgrowl.css" media="screen" />
<link rel="stylesheet" type="text/css"
	href="../plugins/spinner/spinner.css" media="screen" />
<link rel="stylesheet" type="text/css" href="../css/jui/jquery.ui.css"
	media="screen" />
<link rel="stylesheet" type="text/css" href="../js/layer/2.4/skin/layer.css" media="screen" />
<script type="text/javascript" src="../js/layer/2.4/layer.js"></script>
<script type="text/javascript" src="../js/layui/layui.js"></script>
<script type="text/javascript" src="../js/layui/layui.all.js"></script>
<link rel="stylesheet" type="text/css" href="../js/layui/css/layui.css" media="screen" />
<!-- Theme Stylesheet -->
<link rel="stylesheet" type="text/css" href="../css/mws.theme.css"
	media="screen" />

<!-- JavaScript Plugins -->

<script type="text/javascript" src="../js/jquery-1.7.1.min.js"></script>

<script type="text/javascript"
	src="../plugins/jimgareaselect/jquery.imgareaselect.min.js"></script>
<script type="text/javascript"
	src="../plugins/jquery.dualListBox-1.3.min.js"></script>
<script type="text/javascript" src="../plugins/jgrowl/jquery.jgrowl.js"></script>
<script type="text/javascript" src="../plugins/jquery.filestyle.js"></script>
<script type="text/javascript"
	src="../plugins/fullcalendar/fullcalendar.min.js"></script>
<script type="text/javascript" src="../plugins/jquery.dataTables.js"></script>
<!--[if lt IE 9]>
<script type="text/javascript" src="../plugins/flot/excanvas.min.js"></script>
<![endif]-->
<script type="text/javascript" src="../plugins/flot/jquery.flot.min.js"></script>
<script type="text/javascript"
	src="../plugins/flot/jquery.flot.pie.min.js"></script>
<script type="text/javascript"
	src="../plugins/flot/jquery.flot.stack.min.js"></script>
<script type="text/javascript"
	src="../plugins/flot/jquery.flot.resize.min.js"></script>
<script type="text/javascript"
	src="../plugins/colorpicker/colorpicker.js"></script>
<script type="text/javascript" src="../plugins/tipsy/jquery.tipsy.js"></script>
<script type="text/javascript"
	src="../plugins/sourcerer/Sourcerer-1.2.js"></script>
<script type="text/javascript" src="../plugins/jquery.placeholder.js"></script>
<script type="text/javascript" src="../plugins/jquery.validate.js"></script>
<script type="text/javascript" src="../plugins/jquery.mousewheel.js"></script>
<script type="text/javascript" src="../plugins/spinner/ui.spinner.js"></script>
<script type="text/javascript" src="../js/jquery-ui.js"></script>

<script type="text/javascript" src="../js/mws.js"></script>
<script type="text/javascript" src="../js/demo.js"></script>
<script type="text/javascript" src="../js/themer.js"></script>



<style type="text/css">
  .alert-skin .layui-layer-title  {
  background-color: #333;
  color: #C5D52B;
}
.layui-layer-close{
background-color: #C5D52B
}
.layui-btn{
background-color:  #333
}

.mws-report {
	width: 98% !important;
	min-width: 170px;
	margin: 8px 1%;
	height: 80px;
	float: left;
	cursor: pointer;
	display: block;
	text-decoration: none;
	color: #323232;
}

.bg{
height:100%;
width:100%;
background-size:contain;

background:url('../images/background/fm.png') no-repeat ;
background-size:100% 100%;

	-moz-background-size: contain;
	-o-background-size: contain;
}
.xuanzhong{
  border-style:solid !important; 
  border-width:2px !important; 
  border-color:red !important; 
}



.dirlist{
		width:140px;
		height:36px;
		line-height:36px;
		border: 2px solid #2b2d31;
		background-color:rgba(255,255,255,0.6);
		border-radius:8px;
		/* box-shadow:6px 6px 6px 0 #aaa; */
		color:#2b2d31;
		text-align:center;
		position:relative;
		margin-bottom:30px;
	}
	select{
		width:110px;
		height:24px;
		line-height:24px;
		border-radius:4px;
		background-color:rgba(43,45,49,0.8);
		color:#fff;
		cursor:pointer;
		text-align:center;
	}
	.dirlist:after{
		display:block;
		content:'';
	    border-width:8px 8px 8px 8px;
	    border-style:solid;
	    border-color: rgba(43,45,49,0.8) transparent transparent transparent;
	    /* 定位 */
	    position:absolute;
	    left:70%;
	    top:100%;
	}
.alert-skin .layui-layer-title  {

  background-color: #333;
  color: #C5D52B;
}
.layui-input{
display:inline!important;
}
</style>

</head>

<script type="text/javascript" >

function sbkz (name,val){
	  $.ajax({
			url:"<%=basePath%>OpcCon/sbkz.action",
			async:false,
			dataType:"json",
			data:{	
				"name":"吉利."+$("#hrz").val()+"."+name,
				"val":val,
			},
			
			success:function(data){
				alert("操作成功")
			}
			
		});	
}


function xz(p){
	
	$(p).addClass("xuanzhong");
	$(p).next().removeClass("xuanzhong");
	$(p).prev().removeClass("xuanzhong");
}

function bsf(flag){
	
	if(flag=='k'){
		
		$("#bsfgif").show();
	}
    if(flag=='g'){
		
		$("#bsfgif").hide();
	}
}

function xyf(flag){
	
	if(flag=='k'){
		
		$("#xyfgif").show();
		$("#jt1").show();
		$("#jt2").show();
	}
    if(flag=='g'){
		
		$("#xyfgif").hide();
		$("#jt1").hide();
		$("#jt2").hide();
	}
}

function show(){
	var hrz=$("#hrz").val();
	layui.form.render();
	  layer.open({
	      skin:"alert-skin",  
		  type: 1,
	        title: "调节阀控制",
	        area: '450px',
	        offset: '120px',
	        content: $("#message").html()
	    });
	  layui.form.render();
	  var d=[];
	  d[0]="吉利."+hrz+".读状态.调节阀远程就地";
	  d[1]="吉利."+hrz+".写状态.调节阀定时开关使能";
	  d[2]="吉利."+hrz+".写数据.开启调节阀时间";
	  d[3]="吉利."+hrz+".写数据.关闭调节阀时间";
	  d[4]="吉利."+hrz+".写数据.调节阀最低开度";
	  d[5]="吉利."+hrz+".写数据.阀门开度设定";
	  d[6]="吉利."+hrz+".读数据.调节阀反馈";
	  d[7]="吉利."+hrz+".写状态.调节阀强制";
	  
	  $.ajax({
			url:"<%=basePath%>OpcCon/sbxs.action",
			async:false,
			dataType:"json",
			data:{	
				"d":d,
			},
			traditional: true,
			success:function(data){
				var map=data.map;
				if(map.调节阀远程就地==true){
					$("#tjfzt").val("远程")
				}else{
					$("#tjfzt").val("就地")
				}
				
				if(map.调节阀强制==true){
					$("#tjfqz").addClass("xuanzhong");
				}else{
					$("#tjffqz").addClass("xuanzhong");
				}
				
				if(map.调节阀定时开关使能==true){
					$("#tjfdsqy").addClass("xuanzhong");
				}else{
					$("#tjfdsjy").addClass("xuanzhong");
				}
				$("#tjfdskqsj").val(map.开启调节阀时间)
				$("#tjfdsgbsj").val(map.关闭调节阀时间)
				$("#tjfzdkd").val(map.调节阀最低开度)
				$("#tjfkdgd").val(map.阀门开度设定)
				var kd=map.调节阀反馈+"";
				$("#tjfkdfk").val(kd.slice(0,4))
				
				
			}
			
		});	
}

function showXhb(flag){
	layui.form.render();
	  layer.open({
		  skin:"alert-skin",
	        type: 1,
	        title: "循环泵控制",
	        area: '450px',
	        offset: '120px',
	        content: $("#xhb").html()
	    });
	  layui.form.render();
	  
	  $("#xhbbh").val(flag)
	  var d=[];
	  var hrz=$("#hrz").val();
	  d[0]="吉利."+hrz+".读状态.循环泵"+flag+"远程就地";
	  d[1]="吉利."+hrz+".写状态.循环泵"+flag+"强制";
	  d[2]="吉利."+hrz+".写状态.循环泵"+flag+"急停";
	  d[3]="吉利."+hrz+".写数据.循环泵"+flag+"频率设定";
	  d[4]="吉利."+hrz+".读数据.循环泵"+flag+"频率反馈";
	 
	  
	  $.ajax({
			url:"<%=basePath%>OpcCon/sbxs.action",
			async:false,
			dataType:"json",
			data:{	
				"d":d,
			},
			traditional: true,
			success:function(data){
				var map=data.map;
				
				var str="循环泵"+flag+"远程就地"
				console.log(map[str])
				 if(map[str]==true){
					$("#xhbzt").val("远程")
				}else{
					$("#xhbzt").val("就地")
				}
				
				var str1="循环泵"+flag+"强制"
				
				 if(map[str1]==true){
					$("#xhbqz").addClass("xuanzhong");
				}else{
					$("#xhbfqz").addClass("xuanzhong");
				}
				
				var str2="循环泵"+flag+"急停"
				
				 if(map[str2]==true){
					$("#xhbjt").addClass("xuanzhong");
				}else{
					$("#xhbzc").addClass("xuanzhong");
				}
				var str3="循环泵"+flag+"频率设定"
				$("#xhbplgd").val(map[str3].value)
				var str4="循环泵"+flag+"频率反馈"
				$("#xhbplfk").val(map[str4])											
				
			}
			
		});	
}

function showXyf(){
	var hrz=$("#hrz").val();
	
	layui.form.render();
	  layer.open({
		  skin:"alert-skin",  
		  type: 1,
	        title: "泄压阀控制",
	        area: '450px',
	        offset: '120px',
	        content: $("#xyf").html()
	    });
	  layui.form.render();
	  var d=[];
	  d[0]="吉利."+hrz+".读状态.泄压阀远程就地";
	  d[1]="吉利."+hrz+".写状态.泄压阀强制";
	  d[2]="吉利."+hrz+".写数据.泄压压力上限";
	  d[3]="吉利."+hrz+".写数据.泄压压力下限";
	  
	  
	  $.ajax({
			url:"<%=basePath%>OpcCon/sbxs.action",
			async:false,
			dataType:"json",
			data:{	
				"d":d,
			},
			traditional: true,
			success:function(data){
				var map=data.map;
				if(map.泄压阀远程就地==true){
					$("#xyfzt").val("远程")
				}else{
					$("#xyfzt").val("就地")
				}
				
				if(map.泄压阀强制==true){
					$("#xyfqz").addClass("xuanzhong");
				}else{
					$("#xyffqz").addClass("xuanzhong");
				}
				$("#echsxysx").val(map.泄压压力上限)
				$("#echsxyxx").val(map.泄压压力下限)
			}
			
		});	
}

function showBsf(){
	var hrz=$("#hrz").val();
	layui.form.render();
	  layer.open({
		  skin:"alert-skin",  
		  type: 1,
	        title: "补水阀控制",
	        area: '450px',
	        offset: '120px',
	        content: $("#bsf").html()
	    });
	  layui.form.render();
	  
	  var d=[];
	  d[0]="吉利."+hrz+".读状态.自来水阀远程就地";
	  d[1]="吉利."+hrz+".写状态.自来水阀强制";
	  /* d[2]="吉利.教育局站.写数据.泄压压力上限";
	  d[3]="吉利.教育局站.写数据.泄压压力下限"; */
	  
	  
	  $.ajax({
			url:"<%=basePath%>OpcCon/sbxs.action",
			async:false,
			dataType:"json",
			data:{	
				"d":d,
			},
			traditional: true,
			success:function(data){
				var map=data.map;
				if(map.自来水阀远程就地==true){
					$("#bsfzt").val("远程")
				}else{
					$("#bsfzt").val("就地")
				}
				
				if(map.自来水阀强制==true){
					$("#bsfqz").addClass("xuanzhong");
				}else{
					$("#bsffqz").addClass("xuanzhong");
				}
				/* $("#echsxysx").val(map.泄压压力上限)
				$("#echsxyxx").val(map.泄压压力下限) */
			}
			
		});	
}

function showBsb(flag){
	var hrz=$("#hrz").val();
	layui.form.render();
	  layer.open({
		  skin:"alert-skin",  
		  type: 1,
	        title: "补水泵控制",
	        area: '450px',
	        offset: '120px',
	        content: $("#bsb").html()
	    });
	  layui.form.render();
	  $('#bsbbh').val(flag)
	  var d=[];
	  d[0]="吉利."+hrz+".读状态.补水泵"+flag+"远程就地";
	  d[1]="吉利."+hrz+".写状态.补水泵"+flag+"强制";
	  //d[2]="吉利.教育局站.写状态.补水泵"+flag+"急停";
	  d[2]="吉利."+hrz+".写数据.补水泵"+flag+"频率设定";
	  d[3]="吉利."+hrz+".读数据.补水泵"+flag+"频率反馈";
	 
	  
	  $.ajax({
			url:"<%=basePath%>OpcCon/sbxs.action",
			async:false,
			dataType:"json",
			data:{	
				"d":d,
			},
			traditional: true,
			success:function(data){
				var map=data.map;
				
				var str="补水泵"+flag+"远程就地"
				console.log(map[str])
				 if(map[str]==true){
					$("#bsbzt").val("远程")
				}else{
					$("#bsbzt").val("就地")
				}
				
				var str1="补水泵"+flag+"强制"
				
				 if(map[str1]==true){
					$("#bsbqz").addClass("xuanzhong");
				}else{
					$("#bsbfqz").addClass("xuanzhong");
				}
				
				/* var str2="补水泵"+flag+"急停"
				
				 if(map[str2]==true){
					$("#xhbjt").addClass("xuanzhong");
				}else{
					$("#xhbzc").addClass("xuanzhong");
				} */
				var str3="补水泵"+flag+"频率设定"
				$("#bsbplgd").val(map[str3])
				var str4="补水泵"+flag+"频率反馈"
				$("#bsbplfk").val(map[str4])
				
				
				
				
			}
			
		});	
}


</script>
<script type="text/html" id="message">
    <form id="pswForm" class="layui-form model-form" action="" method="PUT">

     
        <div class="layui-form-item" style="width:450px">
            <label class="layui-form-label" style="width:150px">调节阀状态</label>
            <div class="layui-input-block">
                <input style="width:200px" autocomplete="off" id="tjfzt" readonly="readonly" name="tjfzt"  class="layui-input" maxlength="12"
                       />
            </div>
        </div>

        <div class="layui-form-item" style="width:450px">
            <label   class="layui-form-label" style="width:150px">室外温度补偿使能</label>
            <div class="layui-input-block" >
            <button class="layui-btn layui-btn-normal" style="width:77px" type="button" onclick="xz(this)"   id="qingd">启用</button>
            <button class="layui-btn layui-btn-normal" style="width:77px" type="button" onclick="xz(this)"   id="tingz">禁用</button>
            </div>
        </div>

        <div class="layui-form-item" style="width:450px">
            <label class="layui-form-label" style="width:150px">强制开度使能</label>
            <div class="layui-input-block">
            <button class="layui-btn layui-btn-normal"  style="width:77px" type="button" onclick="xz(this);sbkz('写状态.调节阀强制','1')"   id="tjfqz">强制</button>
            <button class="layui-btn layui-btn-normal"   type="button" onclick="xz(this);sbkz('写状态.调节阀强制','0')"   id="tjffqz">非强制</button>
            </div>
        </div>

       <div class="layui-form-item" style="width:450px">
            <label class="layui-form-label" style="width:150px">调阀定时开关使能</label>
            <div class="layui-input-block">
            <button class="layui-btn layui-btn-normal" style="width:77px" type="button" onclick="xz(this);sbkz('写状态.调节阀定时开关使能','1')"   id="tjfdsqy">启用</button>
            <button class="layui-btn layui-btn-normal" style="width:77px" type="button" onclick="xz(this);sbkz('写状态.调节阀定时开关使能','0')"   id="tjfdsjy">禁用</button>
            </div>
        </div>
        
        <div class="layui-form-item" style="width:450px">
            <label   class="layui-form-label" style="width:150px">定时开启时间</label>
            <div class="layui-input-block">
                <input style="width:100px" autocomplete="off" id="tjfdskqsj"  name="tjfdskqsj"  class="layui-input"  maxlength="12"
                       />
                <button class="layui-btn layui-btn-normal" type="button" onclick="sbkz('写数据.开启调节阀时间',$('#tjfdskqsj').val())" >修改</button>
            </div>
        </div>

       <div class="layui-form-item" style="width:450px">
            <label   class="layui-form-label" style="width:150px">定时关闭时间</label>
            <div class="layui-input-block">
                <input style="width:100px" autocomplete="off" id="tjfdsgbsj"  name="tjfzt"  class="layui-input" maxlength="12"
                       />
 <button class="layui-btn layui-btn-normal" type="button" onclick="sbkz('写数据.关闭调节阀时间',$('#tjfdsgbsj').val())" >修改</button>
            </div>
        </div>

        <div class="layui-form-item" style="width:450px">
            <label   class="layui-form-label" style="width:150px">调节阀最低开度</label>
            <div class="layui-input-block">
                <input style="width:100px" autocomplete="off" id="tjfzdkd"  name="tjfzt" class="layui-input" maxlength="12"
                       />
<button class="layui-btn layui-btn-normal" type="button" onclick="sbkz('写数据.调节阀最低开度',$('#tjfzdkd').val())" >修改</button>
            </div>
        </div>
        <div class="layui-form-item" style="width:450px">
            <label   class="layui-form-label" style="width:150px">调节阀开度给定</label>
            <div class="layui-input-block">
                <input style="width:100px" autocomplete="off" id="tjfkdgd"  name="tjfzt"  class="layui-input" maxlength="12"
                       />
<button class="layui-btn layui-btn-normal" type="button" onclick="sbkz('写数据.阀门开度设定',$('#tjfkdgd').val())" >修改</button>
            </div>
        </div>

      <div class="layui-form-item" style="width:450px">
            <label   class="layui-form-label" style="width:150px">调节阀开度反馈</label>
            <div class="layui-input-block">
                <input style="width:200px" autocomplete="off" id="tjfkdfk" readonly="readonly" name="tjfzt"  class="layui-input" maxlength="12"
                       />
            </div>
        </div>

    </form>

</script>


<script type="text/html" id="xhb">
   <form id="pswForm" class="layui-form model-form" action="" method="PUT">

 <input type="hidden" id="xhbbh"/>
        <div class="layui-form-item" style="width:450px">
            <label class="layui-form-label" style="width:150px">远程就地状态</label>
            <div class="layui-input-block">
                <input style="width:200px" autocomplete="off" id="xhbzt" readonly="readonly" name="xhbzt" id="xhbzt" class="layui-input" maxlength="12"
                       />
            </div>
        </div>
       <div class="layui-form-item" style="width:450px">
            <label   class="layui-form-label" style="width:150px">控制状态设定</label>
            <div class="layui-input-block">
             <button class="layui-btn layui-btn-normal" style="width:77px" type="button" onclick="xz(this);sbkz('写状态.循环泵'+$('#xhbbh').val()+'强制','1')"   id="xhbqz">强制</button>
            <button class="layui-btn layui-btn-normal"  type="button" onclick="xz(this);sbkz('写状态.循环泵'+$('#xhbbh').val()+'强制','0')"   id="xhbfqz">非强制</button>
            </div>
        </div>

        <div class="layui-form-item" style="width:450px">
            <label   class="layui-form-label" style="width:150px">急停操作</label>
            <div class="layui-input-block">
               <button class="layui-btn layui-btn-normal" style="width:77px" type="button" onclick="xz(this);sbkz('写状态.循环泵'+$('#xhbbh').val()+'急停','1')"   id="xhbjt">急停</button>
            <button class="layui-btn layui-btn-normal" style="width:77px" type="button" onclick="xz(this);sbkz('写状态.循环泵'+$('#xhbbh').val()+'急停','0')"   id="xhbzc">正常</button>
            </div>
        </div>

        <div class="layui-form-item" style="width:450px">
            <label   class="layui-form-label" style="width:150px">频率给定（HZ）</label>
            <div class="layui-input-block">
                <input style="width:100px" autocomplete="off" id="xhbplgd"  name="tjfzt"  class="layui-input" maxlength="12"
                       />
<button class="layui-btn layui-btn-normal" type="button" onclick="sbkz('写数据.循环泵'+$('#xhbbh').val()+'频率设定',$('#xhbplgd').val())" >修改</button>
            </div>
        </div>

       <div class="layui-form-item" style="width:450px">
            <label   class="layui-form-label" style="width:150px">频率反馈（HZ）</label>
            <div class="layui-input-block">
                <input style="width:200px" autocomplete="off" id="xhbplfk" readonly="readonly" name="tjfzt"  class="layui-input" maxlength="12"
                       />
            </div>
       </div>

       
         <div class="layui-form-item" style="width:450px">
            <label   class="layui-form-label" style="width:150px">启动状态控制</label>
            <div class="layui-input-block">
            <button class="layui-btn layui-btn-normal" style="width:77px" type="button" onclick="xz(this);sbkz('写状态.循环泵'+$('#xhbbh').val()+'启动','1')"   id="qingd">启动</button>
            <button class="layui-btn layui-btn-normal" style="width:77px" type="button" onclick="xz(this);sbkz('写状态.循环泵'+$('#xhbbh').val()+'停止','1')"   id="tingz">停止</button>
            </div>
        </div>
    </form>

</script>

<script type="text/html" id="xyf">
    <form id="pswForm" class="layui-form model-form" action="" method="PUT">

     
        <div class="layui-form-item" style="width:450px">
            <label class="layui-form-label" style="width:150px">远程就地状态</label>
            <div class="layui-input-block">
                <input style="width:200px" autocomplete="off" id="xyfzt" readonly="readonly" name="tjfzt"  class="layui-input" maxlength="12"
                       />
            </div>
        </div>
    

        <div class="layui-form-item" style="width:450px">
            <label   class="layui-form-label" style="width:150px">控制状态设定</label>
            <div class="layui-input-block">
            <button class="layui-btn layui-btn-normal" type="button" onclick="xz(this);sbkz('写状态.泄压阀强制','1')"   id="xyfqz">强制</button>
            <button class="layui-btn layui-btn-normal" type="button" onclick="xz(this);sbkz('写状态.泄压阀强制','0')"   id="xyffqz">非强制</button>
            </div>
        </div>

       <div class="layui-form-item" style="width:450px">
            <label   class="layui-form-label" style="width:150px">二次回水泄压上限（Mpa）</label>
            <div class="layui-input-block">
                <input style="width:200px" autocomplete="off" id="echsxysx" readonly="readonly" name="tjfzt"  class="layui-input" maxlength="12"
                       />

            </div>
       </div>

        <div class="layui-form-item" style="width:450px">
            <label   class="layui-form-label" style="width:150px">二次回水泄压下限（Mpa）</label>
            <div class="layui-input-block">
                <input style="width:200px" autocomplete="off" id="echsxyxx" readonly="readonly" name="tjfzt"  class="layui-input" maxlength="12"
                       />

            </div>
        </div>
         <div class="layui-form-item" style="width:450px">
            <label   class="layui-form-label" style="width:150px">启动状态控制</label>
            <button class="layui-btn layui-btn-normal" type="button" onclick="xz(this);xyf('k');sbkz('写状态.泄压阀开启','1')"   id="qingd">启动</button>
            <button class="layui-btn layui-btn-normal" type="button" onclick="xz(this);xyf('g');sbkz('写状态.泄压阀关闭','1')"   id="tingz">停止</button>
        </div>

      
       
    </form>

</script>

<script type="text/html" id="bsf">
    <form id="pswForm" class="layui-form model-form" action="" method="PUT">

     
        <div class="layui-form-item" style="width:450px">
            <label class="layui-form-label" style="width:150px">远程就地状态</label>
            <div class="layui-input-block">
                <input style="width:200px" autocomplete="off" id="bsfzt" readonly="readonly" name="tjfzt"  class="layui-input" maxlength="12"
                       />
            </div>
        </div>
    

        <div class="layui-form-item" style="width:450px">
            <label   class="layui-form-label" style="width:150px">控制状态设定</label>
            <div class="layui-input-block">
               <button class="layui-btn layui-btn-normal" type="button" onclick="xz(this);sbkz('写状态.自来水阀强制','1')"   id="bsfqz">强制</button>
            <button class="layui-btn layui-btn-normal" type="button" onclick="xz(this);sbkz('写状态.自来水阀强制','0')"   id="bsffqz">非强制</button>
            </div>
        </div>

       <div class="layui-form-item" style="width:450px">
            <label   class="layui-form-label" style="width:150px">水阀开关上限（m）</label>
            <div class="layui-input-block">
                <input style="width:200px" autocomplete="off" id="sfkgsx" readonly="readonly" name="tjfzt"  class="layui-input" maxlength="12"
                       />
            </div>
       </div>

        <div class="layui-form-item" style="width:450px">
            <label   class="layui-form-label" style="width:150px">水阀开关下限（m）</label>
            <div class="layui-input-block">
                <input style="width:200px" autocomplete="off" id="sfkgxx" readonly="readonly" name="tjfzt"  class="layui-input" maxlength="12"
                       />
            </div>
        </div>
         <div class="layui-form-item" style="width:450px">
            <label   class="layui-form-label" style="width:150px">启动状态控制</label>
            <button class="layui-btn layui-btn-normal" type="button" onclick="xz(this);bsf('k');sbkz('写状态.自来水阀开启','1')"   id="qingd">启动</button>
            <button class="layui-btn layui-btn-normal" type="button" onclick="xz(this);bsf('g');sbkz('写状态.自来水阀关闭','1')"   id="tingz">停止</button>
        </div>

      
        
    </form>

</script>


<script type="text/html" id="bsb">
    <form id="pswForm" class="layui-form model-form" action="" method="PUT">

     <input type="hidden" id="bsbbh"/>
        <div class="layui-form-item" style="width:450px">
            <label class="layui-form-label" style="width:150px">远程就地状态</label>
            <div class="layui-input-block">
                <input style="width:200px" autocomplete="off" id="bsbzt" readonly="readonly" name="bsbzt" value="就地" class="layui-input" maxlength="12"
                       />
            </div>
        </div>
       <div class="layui-form-item" style="width:450px">
            <label   class="layui-form-label" style="width:150px">控制状态设定</label>
            <div class="layui-input-block" >
            <button class="layui-btn layui-btn-normal" style="width:77px" type="button" onclick="xz(this);sbkz('写状态.补水泵'+$('#bsbbh').val()+'强制','1')"   id="bsbqz">强制</button>
            <button class="layui-btn layui-btn-normal"  type="button" onclick="xz(this);sbkz('写状态.补水泵'+$('#bsbbh').val()+'强制','0')"   id="bsbfqz">非强制</button>
            </div>
        </div>

        <div class="layui-form-item" style="width:450px">
            <label   class="layui-form-label" style="width:150px">急停操作</label>
            <div class="layui-input-block" >
            <button class="layui-btn layui-btn-normal" style="width:77px" type="button" onclick="xz(this)"   id="bsbjt">急停</button>
            <button class="layui-btn layui-btn-normal" style="width:77px" type="button" onclick="xz(this)"   id="bsbzc">正常</button>
            </div>
        </div>

        <div class="layui-form-item" style="width:450px">
            <label   class="layui-form-label" style="width:150px">频率给定（HZ）</label>
            <div class="layui-input-block">
                <input style="width:100px" autocomplete="off" id="bsbplgd"  name="tjfzt"  class="layui-input" maxlength="12"
                       />
<button class="layui-btn layui-btn-normal" type="button" onclick="sbkz('写数据.补水泵'+$('#bsbbh').val()+'频率设定',$('#bsbplgd').val())" >修改</button>
            </div>
        </div>

       <div class="layui-form-item" style="width:450px">
            <label   class="layui-form-label" style="width:150px">频率反馈（HZ）</label>
            <div class="layui-input-block">
                <input style="width:200px" autocomplete="off" id="bsbplfk" readonly="readonly"   class="layui-input" maxlength="12"
                       />
            </div>
       </div>

        
         <div class="layui-form-item" style="width:450px">
            <label   class="layui-form-label" style="width:150px">启动状态控制</label>
            <div class="layui-input-block" >
                <button class="layui-btn layui-btn-normal" style="width:77px" type="button" onclick="xz(this);sbkz('写状态.补水泵'+$('#bsbbh').val()+'启动','1')"   id="bsbqd">启动</button>
            <button class="layui-btn layui-btn-normal" style="width:77px" type="button" onclick="xz(this);sbkz('写状态.补水泵'+$('#bsbbh').val()+'停止','1')"   id="bsbtz">停止</button>
            </div>
        </div>

      
        <div class="layui-form-item model-form-footer" style="margin-left:130px">
           
        </div>
    </form>
</script>

<body  style="">
<div class="bg">
     <div style="width:50px;height:60px;  position: relative;left: 3%;top: 3%;" >
	<select id="hrz" name="hrz">
	<option value="教育局站">教育局站</option>
	<option value="一委站">一委站</option>
	<option value="二委站">二委站</option>
							
	</select>
	</div>
	
	 
	<div style="width:350px;height:60px;  position: absolute;left: 50%;top: 3%;">
	<h1 id="title">一委站运行界面</h1>
	</div>
	<div  id="bsfgif" style="position: absolute;left: 17%;top: 85%;">
	<img src="../images/background/Arrow-Right.gif" width="80" height="80" />
	</div>
	<div style="width:3%;height:9%;  position: absolute;left: 56%;top: 30%" onclick="showXhb('1')">
	
	</div>
	
	<div style="width:4%;height:10%;  position: absolute;left: 17%;top: 7%" onclick="show()">
	
	</div>
	
	<div style="width:7%;height:4%;  position: absolute;left: 17.5%;top: 3%" >
	<span style="color:red;font-size:15px;">调节阀</span>
	</div>
	
	<div style="width:12%;height:4%;  position: absolute;left: 5%;top: 17%" >
	<span style="color:red;font-size:18px;">一次供水</span>
	</div>
	<div style="width:15%;height:4%;  position: absolute;left: 26%;top: 10%" >
	<span style="color:red;font-size:15px;">一次供水热量表</span>
	</div>
	<div style="width:15%;height:4%;  position: absolute;left: 62%;top: 10%" >
	<span style="color:red;font-size:15px;">二次供水流量表</span>
	</div>
	<div style="width:12%;height:4%;  position: absolute;left: 80%;top: 17%" >
	<span style="color:red;font-size:18px;">二次供水</span>
	</div>
	
	<div style="width:12%;height:4%;  position: absolute;left: 80%;top: 42%" >
	<span style="color:red;font-size:18px;">二次回水</span>
	</div>
	
	
	<div style="width:12%;height:4%;  position: absolute;left: 90%;top: 52%" >
	<span style="color:red;font-size:15px;">集水器</span>
	</div>
	
	<div style="width:12%;height:4%;  position: absolute;left: 90%;top: 27%" >
	<span style="color:red;font-size:15px;">分水器</span>
	</div>
	
	<div style="width:12%;height:4%;  position: absolute;left: 72.5%;top: 50%" >
	<span style="color:red;font-size:15px;">除污器</span>
	</div>
	
	<div style="width:12%;height:4%;  position: absolute;left:55%;top: 29%" >
	<span style="color:red;font-size:15px;">1#循环泵</span>
	</div>
	
	<div style="width:12%;height:4%;  position: absolute;left:55%;top: 43%" >
	<span style="color:red;font-size:15px;">2#循环泵</span>
	</div>
	
	<div style="width:12%;height:4%;  position: absolute;left:55%;top: 73%" >
	<span style="color:red;font-size:15px;">1#补水泵</span>
	</div>
	
	<div style="width:12%;height:4%;  position: absolute;left:55%;top: 84%" >
	<span style="color:red;font-size:15px;">2#补水泵</span>
	</div>
	
	<div style="width:12%;height:4%;  position: absolute;left:45%;top: 63%" >
	<span style="color:red;font-size:15px;">泄压阀</span>
	</div>
	
	<div style="width:12%;height:4%;  position: absolute;left:36%;top: 87%" >
	<span style="color:red;font-size:15px;">补水流量表</span>
	</div>
	
	<div style="width:12%;height:4%;  position: absolute;left:17.5%;top: 78%" >
	<span style="color:red;font-size:15px;">补水阀</span>
	</div>
	
	<div style="width:12%;height:4%;  position: absolute;left:10%;top: 80%" >
	<span style="color:red;font-size:15px;">水表</span>
	</div>
	
	
	<div style="width:12%;height:4%;  position: absolute;left: 72.5%;top: 50%" >
	<span style="color:red;font-size:15px;">除污器</span>
	</div>
	
	<div style="width:12%;height:4%;  position: absolute;left: 5%;top: 42%" >
	<span style="color:red;font-size:18px;">一次回水</span>
	</div>
	<div style="width:12%;height:4%;  position: absolute;left: 35%;top: 45%" >
	<span style="color:red;font-size:15px;">板式换热器</span>
	</div>
	<div style="width:3%;height:9%;  position: absolute;left: 56%;top: 45%";" onclick="showXhb('2')">
	
	</div>
	
	<div style="width:3%;height:9%; 	 position: absolute;left: 56%;top: 75%;" onclick="showBsb('1')">
	
	</div>
	
	<div style="width:3%;height:9%;   position: absolute;left: 56%;top: 87%;" onclick="showBsb('2')">
	
	</div>
	
	<div style="width:3%;height:9%;  position: absolute;left: 45%;top: 65%;" onclick="showXyf()">
	
	</div>
	
	<div id="xyfgif" style="position: absolute;left: 44%;top: 70%;" >
	<img src="../images/background/Arrow-Right.gif" width="80" height="80" />
	</div>
	<div style="width:3%;height:9%;  position: absolute;left: 18%;top: 80%;" onclick="showBsf()">
	
	</div>
	<!--数据  -->
	
	<div style="width:270px;height:85px;font-size:15px;  position: absolute;left: 15%;top: 20%;" >
	一次供水瞬时流量：&nbsp;<span id="ycgsssll"></span>&nbsp;m³/h<br/>
	一次供水瞬时热量：&nbsp;<span id="ycgsssrl"></span>&nbsp;GJ/h<br/>
	一次供水累计流量：&nbsp;<span id="ycgsljll"></span>&nbsp;m³<br/>
	一次供水累计热量：&nbsp;<span id="ycgsljrl"></span>&nbsp;GJ<br/>
	</div>
	
	<div style="width:270px;height:65px;font-size:15px;  position: absolute;left: 60%;top: 20%;" >
	二次供水瞬时流量：&nbsp;<span id="ecgsssll"></span>&nbsp;m³/h<br/>	
	二次供水累计流量：&nbsp;<span id="ecgsljll"></span>&nbsp;m³<br/>	
	</div>
	
	<div style="width:12%;height:4%;  position: absolute;left:50%;top: 29%" >
	<span style="font-size:15px;" id="xhb1plfk"></span>HZ
	</div>
	
	<div style="width:12%;height:4%;  position: absolute;left:50%;top: 43%" >
	<span style="font-size:15px;" id="xhb2plfk"></span>HZ
	</div>
	
	<div style="width:12%;height:4%;  position: absolute;left:50%;top: 73%" >
	<span style="font-size:15px;" id="bsb1plfk"></span>HZ
	</div>
	
	<div style="width:12%;height:4%;  position: absolute;left:50%;top: 84%" >
	<span style="font-size:15px;" id="bsb2plfk"></span>HZ
	</div>
	
	<div style="width:250px;height:105px;font-size:15px;  position: absolute;left: 15%;top: 45%;" >
	累计电量：&nbsp;<span id="dlsjz"></span>&nbsp;KWH<br/>
    A项电压：&nbsp;<span id="Axdyz"></span>&nbsp;V<br/>
	B项电压：&nbsp;<span id="Bxdyz"></span>&nbsp;V<br/>
	C项电压：&nbsp;<span id="Cxdyz"></span>&nbsp;V<br/>
	A项电流：&nbsp;<span id="Axdlz"></span>&nbsp;A<br/>
	B项电流：&nbsp;<span id="Bxdlz"></span>&nbsp;A<br/>
	C项电流：&nbsp;<span id="Cxdlz"></span>&nbsp;A<br/>
	</div>
	
	<div style="width:12%;height:4%;  position: absolute;left:7%;top: 8%" >
	<span style="font-size:15px;" id="ycgswd"></span>℃
	</div>
	
	<div style="width:12%;height:4%;  position: absolute;left:11%;top: 8%" >
	<span style="font-size:15px;" id="ycgsyl"></span>MPa
	</div>
	
	<div style="width:12%;height:4%;  position: absolute;left:78%;top: 8%" >
	<span style="font-size:15px;" id="ecgswd"></span>℃
	</div>
	
	<div style="width:12%;height:4%;  position: absolute;left:85%;top: 8%" >
	<span style="font-size:15px;" id="ecgsyl"></span>MPa
	</div>
	
	<div style="width:12%;height:4%;  position: absolute;left:7%;top:32%" >
	<span style="font-size:15px;" id="ychswd"></span>℃
	</div>
	
	<div style="width:12%;height:4%;  position: absolute;left:11%;top: 32%" >
	<span style="font-size:15px;" id="ychsyl"></span>MPa
	</div>
	
	<div style="width:12%;height:4%;  position: absolute;left:78%;top: 32%" >
	<span style="font-size:15px;" id="echswd"></span>℃
	</div>
	
	<div style="width:12%;height:4%;  position: absolute;left:85%;top: 32%" >
	<span style="font-size:15px;" id="echsyl"></span>MPa
	</div>
	
	<div style="width:12%;height:4%;  position: absolute;left:67%;top: 32%" >
	<span style="font-size:15px;">0.00MPa</span>
	</div>
	
	<div style="width:12%;height:4%;  position: absolute;left:10%;top: 78%" >
	<span style="font-size:15px;" id="zlszbsl"></span>m³
	</div>
	<div style="width:270px;height:65px;font-size:15px;  position: absolute;left: 35%;top: 80%;" >
	补水瞬时流量：&nbsp;<span id="bsssll"></span>&nbsp;m³/h<br/>	
	补水累计流量：&nbsp;<span id="bsljll"></span>&nbsp;m³<br/>	
	</div>
	<div style="width:3%;height:3%;    position: absolute;left:27%;top: 85%" >
	<span style="font-size:15px;" id="sxyw"></span>
	</div>
</div>
</body>

<script type="text/javascript">
$("#hrz").change(function(){
	 
	$("#title").html($("#hrz").val()+"运行界面")
	hrz();
	});
	
function hrz(){
	 var hrz=$("#hrz").val()
	$.ajax({
		url:"<%=basePath%>OpcCon/xtkzSj.action",
		async:false,
		dataType:"json",
		data:{	
			"hrz":"吉利."+hrz+".读数据.",
		},
		success:function(data){
			var map=data.map;
			console.log(map)
			$("#ycgsssll").html(map.一次供水瞬时流量);
			$("#ycgsssrl").html(map.一次供水瞬时热量);
			$("#ycgsljll").html(map.一次供水累计流量);
			$("#ycgsljrl").html(map.一次供水累计热量);
			$("#ecgsssll").html(map.二次供水瞬时流量);
			$("#ecgsljll").html(map.二次供水累计流量);
			
			$("#ycgswd").html(map.一次供水温度);
			$("#ycgsyl").html(map.一次供水压力);
			$("#ecgswd").html(map.二次供水温度);
			$("#ecgsyl").html(map.二次供水压力);
			
			$("#ychswd").html(map.一次回水温度);
			$("#ychsyl").html(map.一次回水压力);
			$("#echswd").html(map.二次回水温度);
			$("#echsyl").html(map.二次回水压力);
			
			$("#Axdlz").html(map.A相电流值);
			$("#Bxdlz").html(map.B相电流值);
			$("#Cxdlz").html(map.C相电流值);
			$("#Axdyz").html(map.A相电压值);
			$("#Bxdyz").html(map.B相电压值);
			$("#Cxdyz").html(map.C相电压值);
			$("#dlsjz").html(map.电量实际值);
			
			$("#zlszbsl").html(map.自来水总补水量);
			$("#bsssll").html(map.补水瞬时流量);
			$("#bsljll").html(map.补水累计流量);
			
			$("#xhb1plfk").html(map.循环泵1频率反馈);
			$("#xhb2plfk").html(map.循环泵2频率反馈);
			$("#bsb1plfk").html(map.补水泵1频率反馈);
			$("#sxyw").html(map.水箱液位);
			
		}
		
	});	
}	
hrz();
</script>
</html>