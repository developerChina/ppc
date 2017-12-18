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
				</a> <a href="" target="_blank" class="bp-icon bp-icon-next"
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
					<li><a href="#section-2" class="icon-cup"><span>第二步：选择拜访对象</span></a></li>
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
									<!--中-->
									<div class="NodeDetail-content">
										<p>
										    <input type="text" name="q" value="姓名">
										    <input type="text" name="q" value="性别">
										    <input type="text" name="q" value="年龄">
										</p>
										<p>
										    <input type="text" name="q" value="身份证号码" style="width:545px">
										</p>
										<p>
										    <input type="text" name="q" value="地址" style="width:545px">
										</p>
									</div>
									<!--下-->
									<div class="NodeDetail-footer">
										<span>
										   <a href="#" class="button pill"	style="text-decoration: none">①点击此按钮刷身份证</a>
										   <a href="#" class="button pill"	style="text-decoration: none">②点击此按钮拍照</a>
										   <a href="#" class="button pill"	style="text-decoration: none">③添加到访客列表</a>
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
															<ul class="JQ-slide-content imgList">
																<li>
																	<a href="http://www.17sucai.com/" class="img"><img src="${ctx}/component/slide/images/aa6d7f26f941d87728eb0716d36d9cbe.jpg" width="140" height="100" alt="用jquery特效制作图片金字塔式放大缩小展示" /></a>
																	<a href="http://www.17sucai.com/" class="txt">用jquery特效制作图片金字塔式放大缩小展示</a>
																</li>
																<li>
																	<a href="http://www.17sucai.com/" class="img"><img src="${ctx}/component/slide/images/bb276cedeaeb0438ed3275a9711b1d69.jpg" width="140" height="100" alt="jquery特效制作 slide 图片窗帘式滚动" /></a>
																	<a href="http://www.17sucai.com/" class="txt">jquery特效制作 slide 图片窗帘式滚动</a>
																</li>
																<li>
																	<a href="http://www.17sucai.com/" class="img"><img src="${ctx}/component/slide/images/761e64dd86a7ebd0919c18d0c04ebabb.jpg" width="140" height="100" alt="仿苹果视网膜效应的jQuery和CSS" /></a>
																	<a href="http://www.17sucai.com/" class="txt">仿苹果视网膜效应的jQuery和CSS</a>
																</li>
																<li>
																	<a href="http://www.17sucai.com/" class="img"><img src="${ctx}/component/slide/images/9202c9767e0383e4db7ccecc92801d10.jpg" width="140" height="100" alt="斯莱德奥特提示使用jQuery和CSS3" /></a>
																	<a href="http://www.17sucai.com/" class="txt">斯莱德奥特提示使用jQuery和CSS3</a>
																</li>
																<li>
																	<a href="http://www.17sucai.com/" class="img"><img src="${ctx}/component/slide/images/aa6d7f26f941d87728eb0716d36d9cbe.jpg" width="140" height="100" alt="用jquery特效制作图片金字塔式放大缩小展示" /></a>
																	<a href="http://www.17sucai.com/" class="txt">用jquery特效制作图片金字塔式放大缩小展示</a>
																</li>
																<li>
																	<a href="http://www.17sucai.com/" class="img"><img src="${ctx}/component/slide/images/bb276cedeaeb0438ed3275a9711b1d69.jpg" width="140" height="100" alt="jquery特效制作 slide 图片窗帘式滚动" /></a>
																	<a href="http://www.17sucai.com/" class="txt">jquery特效制作 slide 图片窗帘式滚动</a>
																</li>
																<li>
																	<a href="http://www.17sucai.com/" class="img"><img src="${ctx}/component/slide/images/761e64dd86a7ebd0919c18d0c04ebabb.jpg" width="140" height="100" alt="仿苹果视网膜效应的jQuery和CSS" /></a>
																	<a href="http://www.17sucai.com/" class="txt">仿苹果视网膜效应的jQuery和CSS</a>
																</li>
																<li>
																	<a href="http://www.17sucai.com/" class="img"><img src="${ctx}/component/slide/images/9202c9767e0383e4db7ccecc92801d10.jpg" width="140" height="100" alt="斯莱德奥特提示使用jQuery和CSS3" /></a>
																	<a href="http://www.17sucai.com/" class="txt">斯莱德奥特提示使用jQuery和CSS3</a>
																</li>
															</ul>
														</div>
													</div>
											</div>
										</p>
									</div>
									<!--下-->
									<div class="NodeDetail-footer">
										<span>
										   <a href="#" class="button pill"	style="text-decoration: none">从访客列表里删除</a>
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
											<input style="width:300px;height:30px" type="text" id="txt_Search" onfocus='test();' onBlur="VirtualKeyboard.toggle('txt_Search','softkey');" />
                                             <input type="radio" name="radiobutton" value="radiobutton" checked> 按手机号查询
                                             &nbsp;&nbsp;&nbsp;&nbsp;
                                             <input type="radio" name="radiobutton" value="radiobutton"> 按姓名查询
                                            <div id="softkey"></div>
										</p>
										
									</div>
									<!--下-->
									<div class="NodeDetail-footer">
										<span>
										   <a href="#" class="button pill"	style="text-decoration: none">添加到拜访对象列表</a>
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
															<ul class="JQ-slide-content imgList">
																<li>
																	<a href="http://www.17sucai.com/" class="img"><img src="${ctx}/component/slide/images/aa6d7f26f941d87728eb0716d36d9cbe.jpg" width="140" height="100" alt="用jquery特效制作图片金字塔式放大缩小展示" /></a>
																	<a href="http://www.17sucai.com/" class="txt">用jquery特效制作图片金字塔式放大缩小展示</a>
																</li>
																<li>
																	<a href="http://www.17sucai.com/" class="img"><img src="${ctx}/component/slide/images/bb276cedeaeb0438ed3275a9711b1d69.jpg" width="140" height="100" alt="jquery特效制作 slide 图片窗帘式滚动" /></a>
																	<a href="http://www.17sucai.com/" class="txt">jquery特效制作 slide 图片窗帘式滚动</a>
																</li>
																<li>
																	<a href="http://www.17sucai.com/" class="img"><img src="${ctx}/component/slide/images/761e64dd86a7ebd0919c18d0c04ebabb.jpg" width="140" height="100" alt="仿苹果视网膜效应的jQuery和CSS" /></a>
																	<a href="http://www.17sucai.com/" class="txt">仿苹果视网膜效应的jQuery和CSS</a>
																</li>
																<li>
																	<a href="http://www.17sucai.com/" class="img"><img src="${ctx}/component/slide/images/9202c9767e0383e4db7ccecc92801d10.jpg" width="140" height="100" alt="斯莱德奥特提示使用jQuery和CSS3" /></a>
																	<a href="http://www.17sucai.com/" class="txt">斯莱德奥特提示使用jQuery和CSS3</a>
																</li>
																<li>
																	<a href="http://www.17sucai.com/" class="img"><img src="${ctx}/component/slide/images/aa6d7f26f941d87728eb0716d36d9cbe.jpg" width="140" height="100" alt="用jquery特效制作图片金字塔式放大缩小展示" /></a>
																	<a href="http://www.17sucai.com/" class="txt">用jquery特效制作图片金字塔式放大缩小展示</a>
																</li>
																<li>
																	<a href="http://www.17sucai.com/" class="img"><img src="${ctx}/component/slide/images/bb276cedeaeb0438ed3275a9711b1d69.jpg" width="140" height="100" alt="jquery特效制作 slide 图片窗帘式滚动" /></a>
																	<a href="http://www.17sucai.com/" class="txt">jquery特效制作 slide 图片窗帘式滚动</a>
																</li>
																<li>
																	<a href="http://www.17sucai.com/" class="img"><img src="${ctx}/component/slide/images/761e64dd86a7ebd0919c18d0c04ebabb.jpg" width="140" height="100" alt="仿苹果视网膜效应的jQuery和CSS" /></a>
																	<a href="http://www.17sucai.com/" class="txt">仿苹果视网膜效应的jQuery和CSS</a>
																</li>
																<li>
																	<a href="http://www.17sucai.com/" class="img"><img src="${ctx}/component/slide/images/9202c9767e0383e4db7ccecc92801d10.jpg" width="140" height="100" alt="斯莱德奥特提示使用jQuery和CSS3" /></a>
																	<a href="http://www.17sucai.com/" class="txt">斯莱德奥特提示使用jQuery和CSS3</a>
																</li>
															</ul>
														</div>
													</div>
											</div>
										</p>
									</div>
									<!--下-->
									<div class="NodeDetail-footer">
										<span>
										   <a href="#" class="button pill"	style="text-decoration: none">从拜访对象列表里删除</a>
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
</body>
</html>
