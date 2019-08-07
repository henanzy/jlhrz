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

</style>

</head>

<script type="text/javascript" >

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
}

function showXhb(){
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
}

function showXyf(){
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
}

function showBsf(){
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
}

function showBsb(){
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
}


</script>
<script type="text/html" id="message">
    <form id="pswForm" class="layui-form model-form" action="" method="PUT">

     
        <div class="layui-form-item" style="width:450px">
            <label class="layui-form-label" style="width:150px">调节阀状态</label>
            <div class="layui-input-block">
                <input style="width:200px" autocomplete="off" id="tjfzt" readonly="readonly" name="tjfzt" value="远程" class="layui-input" maxlength="12"
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
            <button class="layui-btn layui-btn-normal"  style="width:77px" type="button" onclick="xz(this)"   id="qingd">强制</button>
            <button class="layui-btn layui-btn-normal"   type="button" onclick="xz(this)"   id="tingz">非强制</button>
            </div>
        </div>

       <div class="layui-form-item" style="width:450px">
            <label class="layui-form-label" style="width:150px">调阀定时开关使能</label>
            <div class="layui-input-block">
            <button class="layui-btn layui-btn-normal" style="width:77px" type="button" onclick="xz(this)"   id="qingd">启用</button>
            <button class="layui-btn layui-btn-normal" style="width:77px" type="button" onclick="xz(this)"   id="tingz">禁用</button>
            </div>
        </div>
        
        <div class="layui-form-item" style="width:450px">
            <label   class="layui-form-label" style="width:150px">定时开启时间</label>
            <div class="layui-input-block">
                <input style="width:200px" autocomplete="off" id="tjfzt"  name="tjfzt" value="6" class="layui-input" maxlength="12"
                       />
            </div>
        </div>

       <div class="layui-form-item" style="width:450px">
            <label   class="layui-form-label" style="width:150px">定时关闭时间</label>
            <div class="layui-input-block">
                <input style="width:200px" autocomplete="off" id="tjfzt"  name="tjfzt" value="18" class="layui-input" maxlength="12"
                       />
            </div>
        </div>

        <div class="layui-form-item" style="width:450px">
            <label   class="layui-form-label" style="width:150px">调节阀最低开度</label>
            <div class="layui-input-block">
                <input style="width:200px" autocomplete="off" id="tjfzt"  name="tjfzt" value="20" class="layui-input" maxlength="12"
                       />
            </div>
        </div>
        <div class="layui-form-item" style="width:450px">
            <label   class="layui-form-label" style="width:150px">调节阀开度给定</label>
            <div class="layui-input-block">
                <input style="width:200px" autocomplete="off" id="tjfzt"  name="tjfzt" value="0.0" class="layui-input" maxlength="12"
                       />
            </div>
        </div>

      <div class="layui-form-item" style="width:450px">
            <label   class="layui-form-label" style="width:150px">调节阀开度反馈</label>
            <div class="layui-input-block">
                <input style="width:200px" autocomplete="off" id="tjfzt" readonly="readonly" name="tjfzt" value="0.0" class="layui-input" maxlength="12"
                       />
            </div>
        </div>
        <div class="layui-form-item model-form-footer" style="margin-left:130px">
           
        </div>
    </form>

</script>


<script type="text/html" id="xhb">
    <form id="pswForm" class="layui-form model-form" action="" method="PUT">

     
        <div class="layui-form-item" style="width:450px">
            <label class="layui-form-label" style="width:150px">远程就地状态</label>
            <div class="layui-input-block">
                <input style="width:200px" autocomplete="off" id="tjfzt" readonly="readonly" name="tjfzt" value="就地" class="layui-input" maxlength="12"
                       />
            </div>
        </div>
       <div class="layui-form-item" style="width:450px">
            <label   class="layui-form-label" style="width:150px">控制状态设定</label>
            <div class="layui-input-block">
             <button class="layui-btn layui-btn-normal" style="width:77px" type="button" onclick="xz(this)"   id="qingd">强制</button>
            <button class="layui-btn layui-btn-normal"  type="button" onclick="xz(this)"   id="tingz">非强制</button>
            </div>
        </div>

        <div class="layui-form-item" style="width:450px">
            <label   class="layui-form-label" style="width:150px">急停操作</label>
            <div class="layui-input-block">
               <button class="layui-btn layui-btn-normal" style="width:77px" type="button" onclick="xz(this)"   id="qingd">急停</button>
            <button class="layui-btn layui-btn-normal" style="width:77px" type="button" onclick="xz(this)"   id="tingz">正常</button>
            </div>
        </div>

        <div class="layui-form-item" style="width:450px">
            <label   class="layui-form-label" style="width:150px">频率给定（HZ）</label>
            <div class="layui-input-block">
                <input style="width:200px" autocomplete="off" id="tjfzt"  name="tjfzt" value="0.0" class="layui-input" maxlength="12"
                       />
            </div>
        </div>

       <div class="layui-form-item" style="width:450px">
            <label   class="layui-form-label" style="width:150px">频率反馈（HZ）</label>
            <div class="layui-input-block">
                <input style="width:200px" autocomplete="off" id="tjfzt" readonly="readonly" name="tjfzt" value="0.0" class="layui-input" maxlength="12"
                       />
            </div>
       </div>

        <div class="layui-form-item" style="width:450px">
            <label   class="layui-form-label" style="width:150px">二次供压力设定值（Mpa）</label>
            <div class="layui-input-block">
                <input style="width:200px" autocomplete="off" id="tjfzt"  name="tjfzt" value="0.5" class="layui-input" maxlength="12"
                       />
            </div>
        </div>
         <div class="layui-form-item" style="width:450px">
            <label   class="layui-form-label" style="width:150px">启动状态控制</label>
            <div class="layui-input-block">
                <button class="layui-btn layui-btn-normal" style="width:77px" type="button" onclick="xz(this)"   id="qingd">启动</button>
            <button class="layui-btn layui-btn-normal" style="width:77px" type="button" onclick="xz(this)"   id="tingz">停止</button>
            </div>
        </div>

      
        <div class="layui-form-item model-form-footer" style="margin-left:130px">
           
        </div>
    </form>

</script>

<script type="text/html" id="xyf">
    <form id="pswForm" class="layui-form model-form" action="" method="PUT">

     
        <div class="layui-form-item" style="width:450px">
            <label class="layui-form-label" style="width:150px">远程就地状态</label>
            <div class="layui-input-block">
                <input style="width:200px" autocomplete="off" id="tjfzt" readonly="readonly" name="tjfzt" value="就地" class="layui-input" maxlength="12"
                       />
            </div>
        </div>
    

        <div class="layui-form-item" style="width:450px">
            <label   class="layui-form-label" style="width:150px">控制状态设定</label>
            <div class="layui-input-block">
                <input style="width:200px" autocomplete="off" id="tjfzt"  name="tjfzt" value="0.0" class="layui-input" maxlength="12"
                       />
            </div>
        </div>

       <div class="layui-form-item" style="width:450px">
            <label   class="layui-form-label" style="width:150px">二次回水泄压上限（Mpa）</label>
            <div class="layui-input-block">
                <input style="width:200px" autocomplete="off" id="tjfzt" readonly="readonly" name="tjfzt" value="0.0" class="layui-input" maxlength="12"
                       />
            </div>
       </div>

        <div class="layui-form-item" style="width:450px">
            <label   class="layui-form-label" style="width:150px">二次回水泄压下限（Mpa）</label>
            <div class="layui-input-block">
                <input style="width:200px" autocomplete="off" id="tjfzt" readonly="readonly" name="tjfzt" value="0.5" class="layui-input" maxlength="12"
                       />
            </div>
        </div>
         <div class="layui-form-item" style="width:450px">
            <label   class="layui-form-label" style="width:150px">启动状态控制</label>
            <button class="layui-btn layui-btn-normal" type="button" onclick="xz(this);xyf('k')"   id="qingd">启动</button>
            <button class="layui-btn layui-btn-normal" type="button" onclick="xz(this);xyf('g')"   id="tingz">停止</button>
        </div>

      
        <div class="layui-form-item model-form-footer" style="margin-left:130px">
           
        </div>
    </form>

</script>

<script type="text/html" id="bsf">
    <form id="pswForm" class="layui-form model-form" action="" method="PUT">

     
        <div class="layui-form-item" style="width:450px">
            <label class="layui-form-label" style="width:150px">远程就地状态</label>
            <div class="layui-input-block">
                <input style="width:200px" autocomplete="off" id="tjfzt" readonly="readonly" name="tjfzt" value="就地" class="layui-input" maxlength="12"
                       />
            </div>
        </div>
    

        <div class="layui-form-item" style="width:450px">
            <label   class="layui-form-label" style="width:150px">控制状态设定</label>
            <div class="layui-input-block">
                <input style="width:200px" autocomplete="off" id="tjfzt"  name="tjfzt" value="0.0" class="layui-input" maxlength="12"
                       />
            </div>
        </div>

       <div class="layui-form-item" style="width:450px">
            <label   class="layui-form-label" style="width:150px">水阀开关上限（m）</label>
            <div class="layui-input-block">
                <input style="width:200px" autocomplete="off" id="tjfzt" readonly="readonly" name="tjfzt" value="0.0" class="layui-input" maxlength="12"
                       />
            </div>
       </div>

        <div class="layui-form-item" style="width:450px">
            <label   class="layui-form-label" style="width:150px">水阀开关下限（m）</label>
            <div class="layui-input-block">
                <input style="width:200px" autocomplete="off" id="tjfzt" readonly="readonly" name="tjfzt" value="0.5" class="layui-input" maxlength="12"
                       />
            </div>
        </div>
         <div class="layui-form-item" style="width:450px">
            <label   class="layui-form-label" style="width:150px">启动状态控制</label>
            <button class="layui-btn layui-btn-normal" type="button" onclick="xz(this);bsf('k')"   id="qingd">启动</button>
            <button class="layui-btn layui-btn-normal" type="button" onclick="xz(this);bsf('g')"   id="tingz">停止</button>
        </div>

      
        <div class="layui-form-item model-form-footer" style="margin-left:130px">
           
        </div>
    </form>

</script>

<script type="text/html" id="bsf">
    <form id="pswForm" class="layui-form model-form" action="" method="PUT">

     
        <div class="layui-form-item" style="width:550px>
            <label class="layui-form-label" style="width:150px">远程就地状态</label>
            <div class="layui-input-block">
                <input style="width:200px" autocomplete="off" id="tjfzt" readonly="readonly" name="tjfzt" value="就地" class="layui-input" maxlength="12"
                       />
            </div>
        </div>
    

        <div class="layui-form-item" style="width:550px>
            <label   class="layui-form-label" style="width:150px">控制状态设定</label>
            <div class="layui-input-block">
                <input style="width:200px" autocomplete="off" id="tjfzt"  name="tjfzt" value="0.0" class="layui-input" maxlength="12"
                       />
            </div>
        </div>

       <div class="layui-form-item" style="width:550px>
            <label   class="layui-form-label" style="width:150px">水阀开关上限（m）</label>
            <div class="layui-input-block">
                <input style="width:200px" autocomplete="off" id="tjfzt" readonly="readonly" name="tjfzt" value="0.0" class="layui-input" maxlength="12"
                       />
            </div>
       </div>

        <div class="layui-form-item" style="width:550px>
            <label   class="layui-form-label" style="width:150px">水阀开关下限（m）</label>
            <div class="layui-input-block">
                <input style="width:200px" autocomplete="off" id="tjfzt" readonly="readonly" name="tjfzt" value="0.5" class="layui-input" maxlength="12"
                       />
            </div>
        </div>
         <div class="layui-form-item" style="width:550px>
            <label   class="layui-form-label" style="width:150px">启动状态控制</label>
            <button class="layui-btn layui-btn-normal" type="button" onclick="xz(this)"   id="qingd">启动</button>
            <button class="layui-btn layui-btn-normal" type="button" onclick="xz(this)"   id="tingz">停止</button>
        </div>
    </form>

</script>

<script type="text/html" id="bsb">
    <form id="pswForm" class="layui-form model-form" action="" method="PUT">

     
        <div class="layui-form-item" style="width:450px">
            <label class="layui-form-label" style="width:150px">远程就地状态</label>
            <div class="layui-input-block">
                <input style="width:200px" autocomplete="off" id="tjfzt" readonly="readonly" name="tjfzt" value="就地" class="layui-input" maxlength="12"
                       />
            </div>
        </div>
       <div class="layui-form-item" style="width:450px">
            <label   class="layui-form-label" style="width:150px">控制状态设定</label>
            <div class="layui-input-block" >
                <button class="layui-btn layui-btn-normal" style="width:77px" type="button" onclick="xz(this)"   id="qingd">强制</button>
            <button class="layui-btn layui-btn-normal"  type="button" onclick="xz(this)"   id="tingz">非强制</button>
            </div>
        </div>

        <div class="layui-form-item" style="width:450px">
            <label   class="layui-form-label" style="width:150px">急停操作</label>
            <div class="layui-input-block" >
            <button class="layui-btn layui-btn-normal" style="width:77px" type="button" onclick="xz(this)"   id="qingd">急停</button>
            <button class="layui-btn layui-btn-normal" style="width:77px" type="button" onclick="xz(this)"   id="tingz">正常</button>
            </div>
        </div>

        <div class="layui-form-item" style="width:450px">
            <label   class="layui-form-label" style="width:150px">频率给定（HZ）</label>
            <div class="layui-input-block">
                <input style="width:200px" autocomplete="off" id="tjfzt"  name="tjfzt" value="0.0" class="layui-input" maxlength="12"
                       />
            </div>
        </div>

       <div class="layui-form-item" style="width:450px">
            <label   class="layui-form-label" style="width:150px">频率反馈（HZ）</label>
            <div class="layui-input-block">
                <input style="width:200px" autocomplete="off" id="tjfzt" readonly="readonly" name="tjfzt" value="0.0" class="layui-input" maxlength="12"
                       />
            </div>
       </div>

        <div class="layui-form-item" style="width:450px">
            <label   class="layui-form-label" style="width:150px">二次供压力设定值（Mpa）</label>
            <div class="layui-input-block">
                <input style="width:200px" autocomplete="off" id="tjfzt"  name="tjfzt" value="0.5" class="layui-input" maxlength="12"
                       />
            </div>
        </div>
         <div class="layui-form-item" style="width:450px">
            <label   class="layui-form-label" style="width:150px">启动状态控制</label>
            <div class="layui-input-block" >
                <button class="layui-btn layui-btn-normal" style="width:77px" type="button" onclick="xz(this)"   id="qingd">启动</button>
            <button class="layui-btn layui-btn-normal" style="width:77px" type="button" onclick="xz(this)"   id="tingz">停止</button>
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
	                    <option value="天鹅堡换热站">天鹅堡换热站</option>
						<option value="舒馨苑换热站">舒馨苑换热站</option>
						<option value="联通嘉苑换热站">联通嘉苑换热站</option>
						<option value="金领时代换热站">金领时代换热站</option>
						<option value="建业壹号城邦换热站">建业壹号城邦换热站</option>
						<option value="砥柱大厦换热站">砥柱大厦换热站</option>
						<option value="越海华府换热站">越海华府换热站</option>
						<option value="枫桥水岸换热站">枫桥水岸换热站</option>
						<option value="金盾园换热站">金盾园换热站</option>
						<option value="枢纽局西苑小区">枢纽局西苑小区</option>
						
	</select>
	</div>
	
	 
	<div style="width:350px;height:60px;  position: absolute;left: 50%;top: 3%;">
	<h1 id="title">天鹅堡换热站运行界面</h1>
	</div>
	<div  id="bsfgif" style="position: absolute;left: 17%;top: 85%;">
	<img src="../images/background/Arrow-Right.gif" width="80" height="80" />
	</div>
	<div style="width:3%;height:9%;  position: absolute;left: 56%;top: 30%" onclick="showXhb()">
	
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
	<div style="width:3%;height:9%;  position: absolute;left: 56%;top: 45%";" onclick="showXhb()">
	
	</div>
	
	<div style="width:3%;height:9%; 	 position: absolute;left: 56%;top: 75%;" onclick="showBsb()">
	
	</div>
	
	<div style="width:3%;height:9%;   position: absolute;left: 56%;top: 87%;" onclick="showBsb()">
	
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
	一次供水瞬时流量：&nbsp;<span>0.00</span>&nbsp;m³/h<br/>
	一次供水瞬时热量：&nbsp;<span>0.00</span>&nbsp;GJ/h<br/>
	一次供水累计流量：&nbsp;<span>84566.6</span>&nbsp;m³<br/>
	一次供水累计热量：&nbsp;<span>6195.1</span>&nbsp;GJ<br/>
	</div>
	
	<div style="width:270px;height:65px;font-size:15px;  position: absolute;left: 60%;top: 20%;" >
	二次供水瞬时流量：&nbsp;<span>0.00</span>&nbsp;m³/h<br/>	
	二次供水累计流量：&nbsp;<span>0.00</span>&nbsp;m³<br/>	
	</div>
	
	<div style="width:12%;height:4%;  position: absolute;left:50%;top: 29%" >
	<span style="font-size:15px;">0.0HZ</span>
	</div>
	
	<div style="width:12%;height:4%;  position: absolute;left:50%;top: 43%" >
	<span style="font-size:15px;">0.0HZ</span>
	</div>
	
	<div style="width:12%;height:4%;  position: absolute;left:50%;top: 73%" >
	<span style="font-size:15px;">0.0HZ</span>
	</div>
	
	<div style="width:12%;height:4%;  position: absolute;left:50%;top: 84%" >
	<span style="font-size:15px;">0.0HZ</span>
	</div>
	
	<div style="width:250px;height:105px;font-size:15px;  position: absolute;left: 15%;top: 45%;" >
	累计电量：&nbsp;<span>27693.9</span>&nbsp;KWH<br/>
    A项电压：&nbsp;<span>234.9</span>&nbsp;V<br/>
	B项电压：&nbsp;<span>230.6</span>&nbsp;V<br/>
	C项电压：&nbsp;<span>233.6</span>&nbsp;V<br/>
	A项电流：&nbsp;<span>0.00</span>&nbsp;A<br/>
	B项电流：&nbsp;<span>0.00</span>&nbsp;A<br/>
	C项电流：&nbsp;<span>1.20</span>&nbsp;A<br/>
	</div>
	
	<div style="width:12%;height:4%;  position: absolute;left:7%;top: 8%" >
	<span style="font-size:15px;">24.0℃</span>
	</div>
	
	<div style="width:12%;height:4%;  position: absolute;left:11%;top: 8%" >
	<span style="font-size:15px;">0.0MPa</span>
	</div>
	
	<div style="width:12%;height:4%;  position: absolute;left:78%;top: 8%" >
	<span style="font-size:15px;">24.9℃</span>
	</div>
	
	<div style="width:12%;height:4%;  position: absolute;left:85%;top: 8%" >
	<span style="font-size:15px;">0.02MPa</span>
	</div>
	
	<div style="width:12%;height:4%;  position: absolute;left:7%;top:32%" >
	<span style="font-size:15px;">25.1℃</span>
	</div>
	
	<div style="width:12%;height:4%;  position: absolute;left:11%;top: 32%" >
	<span style="font-size:15px;">0.02MPa</span>
	</div>
	
	<div style="width:12%;height:4%;  position: absolute;left:78%;top: 32%" >
	<span style="font-size:15px;">24.9℃</span>
	</div>
	
	<div style="width:12%;height:4%;  position: absolute;left:85%;top: 32%" >
	<span style="font-size:15px;">0.09MPa</span>
	</div>
	
	<div style="width:12%;height:4%;  position: absolute;left:67%;top: 32%" >
	<span style="font-size:15px;">0.00MPa</span>
	</div>
	
	<div style="width:12%;height:4%;  position: absolute;left:10%;top: 78%" >
	<span style="font-size:15px;">0.0m³</span>
	</div>
	<div style="width:270px;height:65px;font-size:15px;  position: absolute;left: 35%;top: 80%;" >
	补水瞬时流量：&nbsp;<span>0.00</span>&nbsp;m³/h<br/>	
	补水累计流量：&nbsp;<span>0.00</span>&nbsp;m³<br/>	
	</div>
</div>
</body>

<script type="text/javascript">
$("#hrz").change(function(){
	 
	$("#title").html($("#hrz").val()+"运行界面")
		
	});
</script>
</html>