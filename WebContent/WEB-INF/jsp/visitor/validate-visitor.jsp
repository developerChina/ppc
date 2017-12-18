<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>智能验证系统</title>

<link rel="stylesheet" type="text/css"
	href="${ctx}/component/css/demo.css" />
<link rel="stylesheet" type="text/css"
	href="${ctx}/component/css/component.css" />

<link rel="stylesheet" type="text/css"
	href="${ctx}/component/newsbox/css/normalize.css" />
<link rel="stylesheet" type="text/css"
	href="${ctx}/component/newsbox/css/default.css">
<link href="${ctx}/component/newsbox/css/bootstrap.min.css"
	rel="stylesheet" type="text/css" />
<link href="${ctx}/component/newsbox/css/bootstrap-theme.min.css"
	rel="stylesheet" type="text/css" />
<link href="${ctx}/component/newsbox/css/site.css" rel="stylesheet"
	type="text/css" />

<script type="text/javascript" src="${ctx}/js/jquery-1.11.0.js"></script>
<script src="${ctx}/component/js/cbpFWTabs.js"></script>

<script
	src="${ctx}/component/newsbox/js/jquery.bootstrap.newsbox.min.js"
	type="text/javascript"></script>



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
			<span>河南省委 <span class="bp-icon bp-icon-about" data-content="">
			</span>
			</span>
			<h1>智能验证系统</h1>
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
					<li></li>
				</ul>
			</nav>
			<script type="text/javascript">
				$(function() {
					$(".demo1").bootstrapNews({
						newsPerPage : 5,
						autoplay : true,
						pauseOnHover : true,
						direction : 'up',
						newsTickerInterval : 4000,
						onToDo : function() {
							//console.log(this);
						}
					});

					$(".demo2").bootstrapNews({
						newsPerPage : 4,
						autoplay : true,
						pauseOnHover : true,
						navigation : false,
						direction : 'down',
						newsTickerInterval : 2500,
						onToDo : function() {
							//console.log(this);
						}
					});

					$("#demo3").bootstrapNews({
						newsPerPage : 3,
						autoplay : false,

						onToDo : function() {
							//console.log(this);
						}
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
								<div class="check check-success"></div>
								<div class="tag-boder">
									<div class="tag"></div>
								</div>
								<!--右侧内容-->
								<div class="NodeDetail">
									<!--中-->
									<div class="NodeDetail-content">
									
									   <br/>
									
										<div class="container mp30">
											<div class="row">
												<div class="col-md-4">
													<div class="panel panel-default">
														<div class="panel-heading">
															<span class="glyphicon glyphicon-user"></span><b>&nbsp;&nbsp;当前访客</b>
														</div>
														<div class="panel-body">
															<div class="row">
																<div class="col-xs-12">
																	<ul class="demo1">
																		<li class="news-item">
																			<table cellpadding="4" >
																				<tr>
																					<td>
																					  <img	src="${ctx}/component/newsbox/images/1.png"
																						width="60" class="img-circle" />
																					</td>
																					<td>
																					    访客：   张三；访问 ：李四 ；访问日期：2017-12-18
																					</td>
																					
																				</tr>
																			</table>
																		</li>
																		<li class="news-item">
																			<table cellpadding="4">
																				<tr>
																					<td><img
																						src="${ctx}/component/newsbox/images/2.png"
																						width="60" class="img-circle" /></td>
																					<td>
																					    访客：   张三；访问 ：李四 ；访问日期：2017-12-18
																					  
																					</td>
																				</tr>
																			</table>
																		</li>
																		<li class="news-item">
																			<table cellpadding="4">
																				<tr>
																					<td><img
																						src="${ctx}/component/newsbox/images/3.png"
																						width="60" class="img-circle" /></td>
																					<td>
																					    访客：   张三；访问 ：李四 ；访问日期：2017-12-18
																					  
																					</td>
																				</tr>
																			</table>
																		</li>
																	</ul>
																</div>
															</div>
														</div>
														<div class="panel-footer"></div>
													</div>
												</div>

												<div class="col-md-4">
													<div class="panel panel-default">
														<div class="panel-heading">
															<span class="icon-truck"></span><b>&nbsp;&nbsp;当前车辆</b>
														</div>
														<div class="panel-body">
															<div class="row">
																<div class="col-xs-12">
																	<ul class="demo2">
																		<li class="news-item">
																		  京Q3G8B0  访问时间：2017-12-18
																		</li>
																		<li class="news-item">
                                                                                                                                                                                                         京Q3G8B0  访问时间：2017-12-18
																		</li>
																		<li class="news-item">
																		京Q3G8B0  访问时间：2017-12-18
																		</li>
																		<li class="news-item">
																		京Q3G8B0  访问时间：2017-12-18
																		</li>
																		<li class="news-item">
																		京Q3G8B0  访问时间：2017-12-18
																		</li>
																		<li class="news-item">
																		京Q3G8B0  访问时间：2017-12-18
																		</li>
																	</ul>
																</div>
															</div>
														</div>
														<div class="panel-footer"></div>
													</div>
												</div>

												<div class="col-md-4">
													<div class="panel panel-default">
														<div class="panel-heading">
															<span class="glyphicon glyphicon-phone-alt"></span><b>&nbsp;&nbsp;预约</b>
														</div>
														<div class="panel-body">
															<div class="row">
																<div class="col-xs-12">
																	<ul id="demo3">
																		<li class="news-item">
																		  预约人：张三   访问日期：2017-12-18
																		</li>
																		<li class="news-item">
																		预约车：京Q3G8B0   访问日期：2017-12-18
																		</li>
																		<li class="news-item">
																		 预约人：张三   访问日期：2017-12-18
																		</li>
																		<li class="news-item">
																		预约车：京Q3G8B0   访问日期：2017-12-18
																		</li>
																		
																	</ul>
																</div>
															</div>
														</div>
														<div class="panel-footer"></div>
													</div>
												</div>
											</div>
										</div>
									</div>

								</div>
							</div>
						</div>
					</div>

				</section>

			</div>
			<!-- /content -->
		</div>
		<!-- /tabs -->

	</div>
	<script>
		new CBPFWTabs(document.getElementById('tabs'));
	</script>
	<!--以下代码不作为插件效果内容 -->
	<style>
</style>
</body>
</html>
