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

<link rel="stylesheet" type="text/css" href="../js/layer/2.4/skin/layer.css" media="screen" />
<script type="text/javascript" src="../js/layer/2.4/layer.js"></script>
<script type="text/javascript" src="../js/layui/layui.js"></script>
<script type="text/javascript" src="../js/layui/layui.all.js"></script>
<link rel="stylesheet" type="text/css" href="../js/layui/css/layui.css" media="screen" />

<style>
		th,td{  
  
  white-space: nowrap;
} 
 select{
		width:120px;
		height:24px;
		border:none;
		border-radius:6px;
		padding-left:6px;
	}
	.layui-input{
display:inline!important;
}
	/* 固定表头 */
	.table-th-css {
		position: relative !important;
		top: 0;
	}
	
	/* 搜索DIV */
	.jk_search{
		display:block;
		width:99.8%;
		height:40px;
		background-color:#ccc;
		margin:0px auto;
		font-size:12px;
	}
	#change_word{
		display:none;
		position: fixed;
		left: 0;
	    top:0;
	    right:0;
	    bottom:0;
	    z-index: 100; 
		background-color:rgba(0,0,0,0.6);
	}
	
	/* 新增修改弹出框关闭按钮 */
	#increase_word .close,
	#change_word .close{
		display:block;
		background-color:rgb(193,213,43);
		width:24px;
		height:24px;
		color: #fff;
    	border-radius: 13px;
		position:absolute;
		top:14px;
		right:20px;
		line-height: 24px;
   		text-align: center;
   		font-size: 18px;
	}
	#increase_word .close::before,
	#change_word .close::before {
	    content: "\2716";
	}
	
	/* 新增修改弹出框input */
	#increase_word .mws-form-row .increase_word_input,
	#change_word .mws-form-row .change_word_input {
		width:200px;
	}
	
	/* 新增修改弹出框label */
	#increase_word .mws-form-row label,
	#change_word .mws-form-row label{
		width:150px;
	}
	
	/* 新增修改弹出框确认按钮 */
	#increase_word #word_increase_btn,
	#change_word #word_change_btn{
		position:relative;
		top:10px;
		left:47%;
	}
	.jk_search p{
		height:40px;
	}
	
	.jk_search p select{
		width:120px;
		height:24px;
		border:none;
		border-radius:6px;
		margin-left:20px;
		padding-left:6px;
	}
	
	/* 搜索按钮 */
	#jk_search_btn{
		margin-top:8px;
		margin-left:20px;
		border:none;
		background-color:rgb(60,61,61);
		width:60px;
		height:24px;
		margin-right:6px;
		color:#fff;
		border-radius:6px;
	}
	
	#ddkz_btn{
		margin-top:8px;
		margin-left:20px;
		border:none;
		background-color:rgb(60,61,61);
		width:60px;
		height:24px;
		margin-right:6px;
		color:#fff;
		border-radius:6px;
	}
	
	/* thead排序按钮 */
	.span-up{
        border-style: solid;
        border-width: 0px 5px 5px 5px;
        border-color: transparent transparent black transparent;
        width: 0px;
        height: 0px;
        display: block;
        position: absolute;
        top: 14px;
       	right: 6px;
    }
    
    .span-down{
        border-style: solid;
        border-width: 5px 5px 0px 5px;
        border-color: black transparent transparent transparent;
        width: 0px;
        height: 0px;
        display: block;
        position: absolute;
        top: 20px;
        right: 6px;
    }
    .xuanzhong{
  border-style:solid !important; 
  border-width:2px !important; 
  border-color:red !important; 
}
.alert-skin .layui-layer-title  {

  background-color: #333;
  color: #C5D52B;
}

	
</style>
 <script type="text/javascript">
//var xinwordListj = ${xinwordList};
</script>
</head>
<body>

	<div id="" class="clearfix" style="overflow-x: hidden;">

		<div class="mws-panel grid_4 "
			style="width: 48%; padding-left: 12px; margin: 0px 0px 30px 0px; min-width:500px">
			<div class="mws-panel-header">
				<span class="mws-i-24 i-table-1">调度控制 <select id="hrz" style="size:15px">
                       
                       	<option value="教育局站">教育局站</option>
                       	<option value="一委站">一委站</option>
                       	<option value="二委站">二委站</option>
                    </select></span>
		
			</div>
			
			<div id="xincreate_table_body" class="mws-panel-body">
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
            <button class="layui-btn  " style="width:77px" type="button" onclick="xz(this)"   id="qingd">启用</button>
            <button class="layui-btn " style="width:77px" type="button" onclick="xz(this)"   id="tingz">禁用</button>
            </div>
        </div>

        <div class="layui-form-item" style="width:450px">
            <label class="layui-form-label" style="width:150px">强制开度使能</label>
            <div class="layui-input-block">
            <button class="layui-btn "  style="width:77px" type="button" onclick="xz(this);sbkz('写状态.调节阀强制','1')"   id="tjfqz">强制</button>
            <button class="layui-btn "   type="button" onclick="xz(this);sbkz('写状态.调节阀强制','0')"   id="tjffqz">非强制</button>
            </div>
        </div>

       <div class="layui-form-item" style="width:450px">
            <label class="layui-form-label" style="width:150px">调阀定时开关使能</label>
            <div class="layui-input-block">
            <button class="layui-btn " style="width:77px" type="button" onclick="xz(this);sbkz('写状态.调节阀定时开关使能','1')"   id="tjfdsqy">启用</button>
            <button class="layui-btn " style="width:77px" type="button" onclick="xz(this);sbkz('写状态.调节阀定时开关使能','0')"   id="tjfdsjy">禁用</button>
            </div>
        </div>
        
        <div class="layui-form-item" style="width:450px">
            <label   class="layui-form-label" style="width:150px">定时开启时间</label>
            <div class="layui-input-block">
                <input style="width:100px" autocomplete="off" id="tjfdskqsj"  name="tjfdskqsj"  class="layui-input"  maxlength="12"
                       />
                <button class="layui-btn " type="button" onclick="sbkz('写数据.开启调节阀时间',$('#tjfdskqsj').val())" >修改</button>
            </div>
        </div>

       <div class="layui-form-item" style="width:450px">
            <label   class="layui-form-label" style="width:150px">定时关闭时间</label>
            <div class="layui-input-block">
                <input style="width:100px" autocomplete="off" id="tjfdsgbsj"  name="tjfzt"  class="layui-input" maxlength="12"
                       />
 <button class="layui-btn " type="button" onclick="sbkz('写数据.关闭调节阀时间',$('#tjfdsgbsj').val())" >修改</button>
            </div>
        </div>

        <div class="layui-form-item" style="width:450px">
            <label   class="layui-form-label" style="width:150px">调节阀最低开度</label>
            <div class="layui-input-block">
                <input style="width:100px" autocomplete="off" id="tjfzdkd"  name="tjfzt" class="layui-input" maxlength="12"
                       />
<button class="layui-btn " type="button" onclick="sbkz('写数据.调节阀最低开度',$('#tjfzdkd').val())" >修改</button>
            </div>
        </div>
        <div class="layui-form-item" style="width:450px">
            <label   class="layui-form-label" style="width:150px">调节阀开度给定</label>
            <div class="layui-input-block">
                <input style="width:100px" autocomplete="off" id="tjfkdgd"  name="tjfzt"  class="layui-input" maxlength="12"
                       />
<button class="layui-btn " type="button" onclick="sbkz('写数据.阀门开度设定',$('#tjfkdgd').val())" >修改</button>
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
			
			
		</div>
		
		
		 
	</div>
 </div>
 <script type="text/javascript">
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

 function csh(){
	 var hrz=$("#hrz").val();
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
				"hrz":hrz,
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
					$("#tjffqz").removeClass("xuanzhong");
				}else{
					$("#tjffqz").addClass("xuanzhong");
					$("#tjfqz").removeClass("xuanzhong");
				}
				
				if(map.调节阀定时开关使能==true){
					$("#tjfdsqy").addClass("xuanzhong");
					$("#tjfdsjy").removeClass("xuanzhong");
				}else{
					$("#tjfdsjy").addClass("xuanzhong");
					$("#tjfdsjy").removeClass("xuanzhong");
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
 csh();
 $("#hrz").change(function(){
	 csh();
	});

 </script>
</body>
</html>