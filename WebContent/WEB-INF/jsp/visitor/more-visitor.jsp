<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>智能访客系统</title>

<link rel="stylesheet" type="text/css"	href="${ctx}/component/css/demo.css" />
<link rel="stylesheet" type="text/css"	href="${ctx}/component/css/component.css" />

<link rel="stylesheet" href="${ctx}/component/combo/combo.select.css">
<link rel="stylesheet" href="${ctx}/component/flowChart/css/flowChart.css" />
	
<link rel="stylesheet" href="${ctx}/component/buttons/gh-buttons.css">
<link rel="stylesheet" href="${ctx}/component/slide/jquery.slide.css">
<script src="${ctx}/scripts/boot.js" type="text/javascript"></script>

   
    
<script type="text/javascript" src="${ctx}/js/jquery-1.11.0.js"></script>
<script src="${ctx}/component/js/cbpFWTabs.js"></script>
<script src="${ctx}/component/combo/jquery.combo.select.js"></script>

<script type="text/javascript" src="${ctx}/component/slide/jquery.slide.js"></script>

<script type="text/javascript" src="${ctx}/component/virtualkeyboard/vk_loader.js?vk_layout=CN%20Chinese%20Simpl.%20Pinyin&vk_skin=flat_gray" ></script>


<!--[if IE]>
 <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->
<style type="text/css">
a {
	text-decoration: none
}

.actvite{
    padding: 5px;
    border-style:solid; 
    border-width:2px; 
    border-color:#FF0000;
}

.fl{
   float:right;
   margin-left:40px;
}

.fl p{

   text-aligin:center;
}

.row{
  margin:12px;
  padding:2px;
  width:30px;
  height:15px;
  font-weight:300
}

</style>
</head>
<body>
	<!-- style="overflow:hidden" -->
	<div class="container">
		<header class="clearfix">
			<span>河南省委
			 <span class="bp-icon bp-icon-about" data-content=""> </span>
			</span>
			<h1>智能访客系统</h1>
			<nav>
				<a href="" target="_blank" class="bp-icon bp-icon-prev"
					data-info="回退"> <span>回退</span>
				</a> <a href="javascript:nextstep();" target="_self" class="bp-icon bp-icon-next"
					data-info="下一步"> <span>下一步</span>
				</a> <a href="" target="_blank" class="bp-icon bp-icon-drop"
					data-info="网址主页"> <span>网址主页</span>
				</a> <a href="http://www.juheweb.com" target="_blank"
					class="bp-icon bp-icon-archive" data-info="退出系统"> <span>退出系统</span>
				</a>
			</nav>
		</header>
		<div id="tabs" class="tabs">
			<nav>
				<ul>
					<li><a href="#section-1" class="icon-shop"><span>第一步：访客请登记</span></a></li>
					<li><a id="s-2" href="javascript:nextstep(#section-2);" class="icon-cup"><span>第二步：选择拜访对象</span></a></li>
					<li><a href="#section-3" class="icon-food"><span>第三步：预约、待确认 查询</span></a></li>
					<li><a href="#section-4" class="icon-truck"><span>第四步：访客签离</span></a></li>
				</ul>
			</nav>
			<script type="text/javascript">
			$(function (){
				/* 用按钮控制图片左右滚动 */
				$(".hotPic .JQ-slide").Slide({
					effect:"scroolLoop",
					autoPlay:false,
					speed:"normal",
					timer:3000,
					steps:1
				});
				
			});
			</script>
			<div class="content">
				<section id="section-1">
					<!--事件时间轴-->
					<div class="flowChart">
						<!--左侧轴-->
						<div class="flowChart-left">
							<!--虚线-->
							<div class="dashed"></div>
						</div>
						<!--右侧内容-->
						<div class="flowChart-right">
							<!--一个节点-->
							<div class="oneNode">
								<!--左侧小球-->
								<div class="check check-danger">1</div>
								<div class="tag-boder">
									<div class="tag"></div>
								</div>
								<!--右侧内容-->
								<div class="NodeDetail">
									<!--上-->
									<div class="NodeDetail-title">
										<!--内容-->
										<div class="details">
											<h4>请刷身份证</h4>
										</div>
									</div>

									<div id="capctrl-div" style="position: absolute; display: none">
										<object classid="clsid:34681DB3-58E6-4512-86F2-9477F1A9F3D8"
											id="CapCtrl" width="420px" height="315px"
											codebase="ImageCapOnWeb.cab#version=1,2,0,0"
											style="margin: 0; padding: 0; float: left;">
											<param name="Visible" value="0">
											<param name="AutoScroll" value="0">
											<param name="AutoSize" value="0">
											<param name="AxBorderStyle" value="1">
											<param name="Caption" value="scaner">
											<param name="Color" value="4278190095">
											<param name="Font" value="宋体">
											<param name="KeyPreview" value="0">
											<param name="PixelsPerInch" value="96">
											<param name="PrintScale" value="0.2">
											<param name="Scaled" value="-1">
											<param name="DropTarget" value="0">
											<param name="HelpFile" value>
											<param name="PopupMode" value="0">
											<param name="ScreenSnap" value="0">
											<param name="SnapBuffer" value="10">
											<param name="DockSite" value="0">
											<param name="DoubleBuffered" value="0">
											<param name="ParentDoubleBuffered" value="0">
											<param name="UseDockManager" value="0">
											<param name="Enabled" value="-1">
											<param name="AlignWithMargins" value="0">
											<param name="ParentCustomHint" value="-1">
											<param name="licenseMode" value="2">
											<param name="key1"
												value="jpkQqZaD6QlBq6L7AIl1LA9MJ04Ds+N6Ft9b47KUxAZzgfPCATMIiQ==">
											<param name="key2"
												value="UoteC+oam7pRXJD+LR6+PearD5PI+tnbTOPp1vs13dnBQrPkJFItST16wBOTEaiSWUwWZ1JnKUHcCkvM+Ie+CeRbZvvaT2ATi9yZ1Q==">
										</object>
									</div>

									<!--中-->
									<div class="NodeDetail-content">
										<p>
										    <input type="text" id="cardName" name="cardName" placeholder="姓名" value="">
										    <input type="text" id="cardSex" name="cardSex" placeholder="性别" value="">
										    <input type="text" id="cardNation" name="cardNation" placeholder="民族" value="">
										</p>
										<p>
										    <input type="text" id="cardID" name="cardID" placeholder="身份证号码" value="" style="width:545px">
										</p>
										<p>
										    <input type="text" id="cardAddress" name="cardAddress" placeholder="地址" value="" style="width:545px">
										</p>
										
										<p><input type="text" class="text" id="telephone" name="telephone" placeholder="联系电话" style="width:350px"/></p>
							            <p><input type="text" class="text" id="company" name="company" placeholder="工作单位" style="width:350px"/></p>
							            <p><input id="visitReason" name="visitReason" class="mini-combobox" placeholder="访问事由" style="width:350px" data="resons" valueField	="content" textField="content"/></p>
									</div>
									
									   <div class="flowChart-right" style="margin-top:-242px;">
											<div class="fl">
												<img id="cardPhoto-img" src="${ctx}/images/photoOne.png" alt="" style="width:180px;height:180px"/>
												<input type="hidden" id="cardPhoto" name="cardPhoto" value="">
												<p>证件照片</p>
											</div>
											<div class="fl"> 						
												<img id="photo1-img" src="${ctx}/images/photoTwo.png" alt="" style="width:180px;height:180px"/>
												<input type="hidden" id="photo1" name="photo1" value="">
												<p>拍照照片</p>
											</div>
										</div>
										
									<!--下-->
									<div class="NodeDetail-footer">
									
										<span>
										   <a href="javascript:newvisitor();" class="button pill"	style="text-decoration: none">①点击此按钮刷身份证</a>
										   <a href="javascript:photograph();" class="button pill"	style="text-decoration: none">②点击此按钮拍照</a>
										   <a href="javascript:submitRecord();" class="button pill"	style="text-decoration: none">③添加到访客列表</a>
                                        </span>

									</div>
								</div>
							</div>
						
							<div class="oneNode">
								<!--左侧小球-->
								<div class="check check-success">2</div>
								<div class="tag-boder">
									<div class="tag"></div>
								</div>
								<!--右侧内容-->
								<div class="NodeDetail">
									<!--上-->
									<div class="NodeDetail-title">
										<!--内容-->
										<div class="details">
											<h4>多个访客列表</h4>
										</div>
									</div>
									<!--中-->
									<div class="NodeDetail-content">
										<p>
											<div class="hotPic">
													<div class="JQ-slide">
														<div class="JQ-slide-nav">
														   <a class="prev" href="javascript:void(0);">&#8249;</a>
														   <a class="next" href="javascript:void(0);">&#8250;</a>
														</div>
														<div class="wrap">
															<ul class="JQ-slide-content imgList" id="visitorList">
																
															</ul>
														</div>
													</div>
											</div>
										</p>
									</div>
									<!--下-->
									<div class="NodeDetail-footer">
										<span>
										   <a href="javascript:remove('visitorList');" class="button pill"	style="text-decoration: none">从访客列表里删除</a>
										</span>
									</div>
								</div>
							</div>
						</div>
					</div>

				</section>
				
				<!-- 拜访对象  开始 -->
				<section id="section-2">
				   <!--事件时间轴-->
					<div class="flowChart">
						<!--左侧轴-->
						<div class="flowChart-left">
							<!--虚线-->
							<div class="dashed"></div>
						</div>
						<!--右侧内容-->
						<div class="flowChart-right">
							<!--一个节点-->
							<div class="oneNode">
								<!--左侧小球-->
								<div class="check check-danger">1</div>
								<div class="tag-boder">
									<div class="tag"></div>
								</div>
								<!--右侧内容-->
								<div class="NodeDetail">
									<!--上-->
									<div class="NodeDetail-title">
										<!--内容-->
										<div class="details">
											<h4>请输入拜访对象姓名或电话</h4>
										</div>
									</div>
									<!--中-->
									<div class="NodeDetail-content">
										<p>
										   <!--  <div class="dowebok" style="margin-left: 20px;">
												<select style="width:360px;height:30px">
													<option value="">请输入姓名或手机号</option>
													<optgroup label="物流部">
														<option value="深圳">张三</option>
														<option value="广州">广州</option>
														<option value="珠海">珠海</option>
														<option value="惠州">惠州</option>
													</optgroup>
					
													<optgroup label="锻造部">
														<option value="长沙">长沙</option>
														<option value="株洲">株洲</option>
														<option value="岳阳">岳阳</option>
														<option value="张家界">张家界</option>
													</optgroup>
					
													<optgroup label="江西省">
														<option value="南昌">南昌</option>
														<option value="赣州">赣州</option>
														<option value="宜春">宜春</option>
														<option value="九江">九江</option>
													</optgroup>
												</select>
											</div>-->
											<input style="width:300px;height:30px" type="text" id="txt_Search" onfocus='test();' data-options="required:true" onBlur="VirtualKeyboard.toggle('txt_Search','softkey');" />
                                             <input type="radio" name="radiobutton" value="1" checked> 按手机号查询
                                             &nbsp;&nbsp;&nbsp;&nbsp;
                                             <input type="radio" name="radiobutton" value="2"> 按姓名查询
                                             <a class="mini-button" iconCls="icon-search"  onclick="search()">查询</a>
				                            <a class="mini-button" iconCls="icon-cancel" onclick="clear()">清空</a>
                                            <div id="softkey"></div>
										</p>
										
									</div>
									
								     <div class="NodeDetail-content" id='search_list'>
										
								    </div>
									
									<!--下-->
									<div class="NodeDetail-footer">
										<span>
										   <a href="javascript:findcheck();" class="button pill"	style="text-decoration: none">添加到拜访对象列表</a>
                                        </span>

									</div>
								</div>
							</div>
						
							<div class="oneNode">
								<!--左侧小球-->
								<div class="check check-success">2</div>
								<div class="tag-boder">
									<div class="tag"></div>
								</div>
								<!--右侧内容-->
								<div class="NodeDetail">
									<!--上-->
									<div class="NodeDetail-title">
										<!--内容-->
										<div class="details">
											<h4>多个拜访对象列表</h4>
										</div>
									</div>
									<!--中-->
									<div class="NodeDetail-content">
										<p>
											<div class="hotPic">
													<div class="JQ-slide">
														<div class="JQ-slide-nav">
														   <a class="prev" href="javascript:void(0);">&#8249;</a>
														   <a class="next" href="javascript:void(0);">&#8250;</a>
														</div>
														<div class="wrap">
															<ul class="JQ-slide-content imgList" id="visitedList">
																
														
															</ul>
														</div>
													</div>
											</div>
										</p>
									</div>
									<!--下-->
									<div class="NodeDetail-footer">
										<span>
										   <a href="javascript:remove('visitedList');" class="button pill"	style="text-decoration: none">从拜访对象列表里删除</a>
										</span>
									</div>
								</div>
							</div>
							
							<div class="oneNode">
								<!--左侧小球-->
								<div class="check check-prime">3</div>
								<div class="tag-boder">
									<div class="tag"></div>
								</div>
								<!--右侧内容-->
								<div class="NodeDetail">
									<!--上-->
									<div class="NodeDetail-title">
										<!--内容-->
										<div class="details">
											<h4>通知拜访对象</h4>
										</div>
									</div>
									<!--中-->
									<div class="NodeDetail-content">
										<p>
											<a href="#" class="button pill"	style="text-decoration: none">电话通知</a>
											<a href="#" class="button pill"	style="text-decoration: none">短信通知</a>
		
											
											<a href="#" class="button pill"	style="text-decoration: none">等待确认</a>
											
											<a href="#" class="button pill"	style="text-decoration: none">打印访客单</a>
											<a href="#" class="button pill"	style="text-decoration: none">制访客卡</a>
										</p>
									</div>
									<!--下-->
									<div class="NodeDetail-footer">
										<span>
										   
										</span>
									</div>
								</div>
							</div>
						</div>
					</div>
				  
				</section>
				
				<section id="section-3">
				<br>
				<p>
				     <input style="width:300px;height:30px" type="text" id="txt_Search" onfocus='test();' onBlur="VirtualKeyboard.toggle('txt_Search','softkey');" />
                     <input type="radio" name="radiobutton" value="radiobutton" checked> 预约查询
                     &nbsp;&nbsp;&nbsp;&nbsp;
                     <input type="radio" name="radiobutton" value="radiobutton"> 待确认查询
                    <div id="softkey"></div>
				</p>
				
				</section>
				
				<section id="section-4">
				
				  
				</section>
				
			</div>
			<!-- /content -->
		</div>
		<!-- /tabs -->

	</div>
	<script>
		new CBPFWTabs(document.getElementById('tabs'));
		$('select').comboSelect();
		function test(){
			VirtualKeyboard.toggle('txt_Search', 'softkey');
			$("#kb_langselector,#kb_mappingselector,#copyrights").css("display", "none");
		}
	</script>
	<!--以下代码不作为插件效果内容 -->
	<style>

</style>
<script type="text/javascript">
	
	    var resons = ${resonStr};
	    
		/**
		* 创建访问记录(保存或者更新访客)
		*/
		function submitRecord(){
			var cardid=$("#cardID").val();
			if(cardid==""){
				alert("请登记身份证信息");
				return;
			}
			var telephone=$("#telephone").val();
			if(telephone==""){
				alert("请登记联系电话");
				return;
			}
			var company=$("#company").val();
			if(company==""){
				alert("请登记工作单位");
				return;
			} 
			
			//黑名单和正在访问校验
			$.ajax({
			  type: 'POST',
			  url: '${ctx}/visitor/validateSingleVisitor',
			  data: {"cardid":cardid},
			  success: function(data){
				   if(data.status){
					   // $('#single-visitor-form').submit(); 
					   addList();
				   }else{
					   alert(data.message);
				   }
			  }
			});
			
		}
		
		/**
		* 读取身份证信息
		*/
		function readIDCard(){
			var result;
			var cardInfo={};
			try {  
			    var ax = new ActiveXObject("IDRCONTROL.IdrControlCtrl.1");  
			} catch(e) {  
			    cardInfo["state"]=false;
			    cardInfo["message"]="控件未安装";
			}  	
			//注意：第一个参数为对应的设备端口，USB型为1001，串口型为1至16
			result=idrControl.ReadCard("1001","");
			if (result==1){
				var message={};
				message["name"]=idrControl.GetName();//姓名
				message["folk"]=idrControl.GetFolk();//民族
				message["sex"]=idrControl.GetSex();//性别
				message["birthyear"]=idrControl.GetBirthYear();//出生年
				message["birthmonth"]=idrControl.GetBirthMonth();//出生月
				message["birthday"]=idrControl.GetBirthDay();//出生日
				message["birthdate"]=idrControl.GetBirthYear() + "年" + idrControl.GetBirthMonth() + "月" + idrControl.GetBirthDay() +  "日";//出生日期
				message["code"]=idrControl.GetCode();//公民身份证号码 
				message["address"]=idrControl.GetAddress();//地址
				message["agency"]=idrControl.GetAgency();//签发机关
				message["valid"]=idrControl.GetValid();//有效日期
				message["photobuf"]=idrControl.GetJPGPhotobuf();//照片Base64编码
				message["samid"]=idrControl.GetSAMID();//安全模块号
				message["cardsn"]=idrControl.GetIDCardSN();//身份证卡号
				cardInfo["state"]=true;
				cardInfo["message"]=message;
			}else{
				if (result==-1){
					cardInfo["state"]=false;
				    cardInfo["message"]="端口初始化失败";
				}
				if (result==-2){
					cardInfo["state"]=false;
				    cardInfo["message"]="请重新将卡片放到读卡器上";
				}
				if (result==-3){
					cardInfo["state"]=false;
				    cardInfo["message"]="读取数据失败";
				}
				if (result==-4){
					cardInfo["state"]=false;
				    cardInfo["message"]="生成照片文件失败，请检查设定路径和磁盘空间！";
				}
			}
			return cardInfo;
		}
		
		/**
		* 读取身份证信息 测试
		*/
		function readIDCard_test(){
			var result;
			var cardInfo={};
			var message={};
			message["name"]="张兮兮";//姓名
			message["folk"]="维吾尔族";//民族
			message["sex"]="男";//性别
			message["birthyear"]="2017";//出生年
			message["birthmonth"]="08";//出生月
			message["birthday"]="21";//出生日
			message["birthdate"]="2017年08月21日";//出生日期
			message["code"]="17282520170821032X";//公民身份证号码 
			message["address"]="乌鲁木齐沙依巴克区沙依巴克境内";//地址
			message["agency"]="乌鲁木齐公安厅";//签发机关
			message["valid"]="2028-12-31";//有效日期
			message["photobuf"]="123";//照片Base64编码
			message["samid"]="23213";//安全模块号
			message["cardsn"]="17282520170821032X";//身份证卡号
			cardInfo["state"]=true;
			cardInfo["message"]=message;
			return cardInfo;
		}
		$(function() {
			 //check();
		}); 
		
		function check() {
		  $('body').everyTime('1s','C',function(){
			   $("#sfzgraph").trigger("click");
			},0,true);
		}
		/**
		*  新建访问人
		*/	
		function newvisitor(){
			var cardInfo=readIDCard_test();//硬件测试用例
			//var cardInfo=readIDCard();
			if(cardInfo.state){
				$("#cardPhoto").val(cardInfo.message.photobuf);
				$("#cardPhoto-img").attr("src", "data:image/png;base64,"+cardInfo.message.photobuf);
			   
				$("#cardName").val(cardInfo.message.name);
				//$("#cardName-span").html(cardInfo.message.name);
				
				$("#cardSex").val(cardInfo.message.sex);
				//$("#cardSex-span").html(cardInfo.message.sex);
				
				$("#cardNation").val(cardInfo.message.folk);
				//$("#cardNation-span").html(cardInfo.message.folk);
				 
				$("#cardID").val(cardInfo.message.code);
				//$("#cardID-span").html(cardInfo.message.code);
				
				$("#cardAddress").val(cardInfo.message.address);
				//$("#cardAddress-span").html(cardInfo.message.address);
				
				$.ajax({
				  type: 'POST',
				  url: '${ctx}/visitor/getVisitorBycardID',
				  data: {"cardid":cardInfo.message.code},
				  success: function(data){
					 $("#telephone").val(data.telephone); 
					 $("#company").val(data.company); 
				  }
				});
				
			}else{
				//alert(cardInfo.message);
			}
		}
		
		var capCtrl;
		try {
			//拍照控件初始化
			capCtrl = document.getElementById("CapCtrl");
			capCtrl.SwitchWatchOnly();
	    }
	    catch (e) {
	        console.info(e);
	    }
		
		/**
		* 拍照
		*/
		function photograph(){
			var cardid=$("#cardID").val();
			if(cardid==""){
				alert("请登记身份证信息");
				return;
			}
			if($('#capctrl-div').css('display') == 'none'){
				$("#capctrl-div").show();
				capCtrl.start();
			}else{
				capCtrl.cap();
				var baseStr64=capCtrl.jpegBase64Data;
				if(baseStr64!=""){
				   $("#photo1").val(baseStr64);
				   $("#photo1-img").attr("src", "data:image/png;base64,"+baseStr64);
				}
				capCtrl.stop();
				$("#capctrl-div").hide();
			}
		}
		
		$(document).ready(function(){
		     $(document).bind("contextmenu",function(e){
		         return false;
		     });
		 });
		
		
		function addList(){
			
		 var cardPhoto = $("#cardPhoto-img").attr('src');
		 
		 var cardName = $("#cardName").val();
		 
		 var cardID = $("#cardID").val();
		 
		 var isExit = false;
			
		 var htmls = '<li onclick="checked(this);" date_code="'+cardID+'">'
				+'<a href="javascript:void(0);" class="img"><img src="'+cardPhoto+'" width="140" height="100" alt="'+cardName+'" /></a>'
				+'<a href="javascript:void(0);" class="txt">'+cardName+'</a>'
			    +'</li>'; 
			if($("#visitorList").find("li").length==0){
				 $("#visitorList").append(htmls);
			}else{
				$("#visitorList li").each(function() { 
					 if($(this).attr("date_code")==cardID){
						 alert("添加重复！");
						 isExit = true;
						 return false;
					 }
				 });
				if(!isExit){
					$("#visitorList li").first().before(htmls);
				}
				 
			}
			    
		}
		
		/* $("#visitorList li").click(function(){
			alert(111);
			$(this).addClass("actvite").siblings().removeClass("actvite");
			alert(112);
			
		  }); */
		
		 $("#txt_Search").keydown(function(e) {  
	           if (e.keyCode == 13) {  
	                  alert("12345....");
	                  search();
	           }  
	      });  
		 
		/*  mini.parse();
	     var grid = mini.get("datagrid1");
	     grid.load(); */
		
		 function search(){
	    	 //var telphone = mini.get("telphone").getValue();
	    	 //var name = mini.get("name").getValue();
	    	 var search_val = $("#txt_Search").val();
	    	 var search_type = $("input[name='radiobutton']:checked").val();
	    	 alert(search_val);
	    	 $.ajax({
				  type: 'POST',
				  url: '${ctx}/bevisited/getEmployeees',
				  data: {search_val:search_val,search_type:search_type},
				  success: function(datas){
					//  for (x = 0; x < datas.length; x++) {
						  //判断是否添加
						//  var data=datas[x];
						  alert(datas.length);
						  if(true){
							  alert(111);
							  $("#search_list").empty();
							  var rlist = '<p class="we" style="line-height:30px;color:#000;">'
								        +'<input type="checkbox" name="vtdId" value="112"/>'
								        +'<span class="row">张兮兮</span>'
								        +' <span class="row">150302198709072345</span>'
								        +'<span class="row">15534567867</span>'
								        +'<span class="row">党委办公室</span>'								       
								        +' </p>';
								 $("#search_list").append(rlist);
							 
						  }else{
							  console.info("存在")
						  }
					 // }
				  }
				});
	     }
		 
	
		 
		    $(document).ready(function(){  
		         $(document).bind("contextmenu",function(e){  
		             return false;  
		         });  
		     }); 
		    
		    function checked(obj){
		    	//obj.addClass("actvite");
		    	//obj.find('a').className='actvite';
		    	if($(obj).children('a').get(0).className=='img'){
		    		$(obj).children('a').get(0).className='actvite';
		    	}else{
		    		$(obj).children('a').get(0).className='img';
		    	}
		    	
		    }
		    
		    function remove(str){
		    	$("#"+str+" li").each(function(i){
		    		//$(this).find('li').each(function() { 		    			
		    		  if($(this).children('a').get(0).className=='actvite'){
		    			  $(this).remove();
		    		 } 
		    		//});
		    	});
	
			}
		   
		   function findcheck(){
			   var rows = $('input:checkbox[name=vtdId]:checked').parent("p");
			   var arr=[];
			   rows.find("span").each(function(i){
				   arr[i] = $(this).text();
			   });
				   
				   var name = arr[0];
				   var cardid = arr[1];
				   var phone = arr[2];
				   var depart = arr[3];
				   
				   var vtdinfo ='<li onclick="checked(this);">'
					 +'<a href="javascript:void(0);" class="img"> '																	 
					 +' <span style="color:blue;">'+name+'</span><br/>'
					 +' <span style="color:blue;">'+cardid+'</span><br/>'
					 +'  <span style="color:blue;">'+phone+'</span> <br/>'
					 +'  <span style="color:blue;">'+depart+'</span>'					              
					 +'</a>'
					 +'<a href="javascript:void(0);" class="txt">'+name+'</a>'
					 +'</li>';
					 
					if($("#visitedList").find("li").length==0){
						 $("#visitedList").append(vtdinfo);
					}else{
						 $("#visitedList li").first().before(vtdinfo);
					} 
			   
		   }
		
	</script>
</body>
</html>
