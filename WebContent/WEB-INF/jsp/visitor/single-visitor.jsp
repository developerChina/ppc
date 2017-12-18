<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="${ctx}/css/visitor/common.css" />
<link rel="stylesheet" href="${ctx}/css/visitor/single-visitor.css" />
<link rel="stylesheet" href="${ctx}/fangke/css/style.css" />
<link rel="stylesheet" href="${ctx}/fangke/combo.select.css">
<link rel="stylesheet" href="${ctx}/fangke/buttons/gh-buttons.css">
<link rel="stylesheet" href="${ctx}/fangke/menu.css">
<link rel="stylesheet" type="text/css" href="${ctx}/fangke/paopao/css/paopao.css"/>

<script type="text/javascript" src="${ctx}/fangke/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="${ctx}/fangke/js/script.js"></script>
<script src="${ctx}/fangke/jquery.combo.select.js"></script>
<script src="${ctx}/fangke/paopao/script/paopao.js" type="text/javascript" charset="utf-8"></script>
<style>
.border-table {   
    border-collapse: collapse;   
    border: none;   
 }   
.border-table td {   
    border: solid #ccc 1px;   
 }   
</style>
</head>
<body>
	<form id="single-visitor-form" method="post"
		action="${ctx}/visitor/forwardSingleVisited">
		<div class="wrap">
			<div class="head">
				<h2>访客系统</h2>
			</div>
			<div class="content clearfix">
				<div class="sidebar">
					<!--导航切换-->
					<ul class="sidebar_tab">
						<li class="sidebar_tab_all sidebar_tab_cur">
						  <a href="#">访客登记</a>
						</li>
						<li class="sidebar_tab_appliance"><a href="#">拜访对象</a></li>
						<li class="sidebar_tab_print"><a href="#">访客单打印</a></li>
						<li class="sidebar_tab_shop"><a href="#">访客签离</a></li>
					</ul>
					<div class="sidebar_main">
						<div class="sidebar_main_all">
							<div class="sliderbox">
								<table class="border-table" width="760" align="center" cellpadding="8" cellspacing="0">
									<tr>
										<td>姓 名：</td>
										<td>性别：</td>
										<td rowspan="4" align="center" valign="middle">证件照片</td>
										<td rowspan="4" align="center" valign="middle">现场照片</td>
										<td rowspan="6" align="center" valign="middle">
										     <a id="box1" href="#" class="button pill" style="text-decoration:none">现场拍照</a>
									          <br><br><br>
										     <a id="box2" href="#" class="button pill" style="text-decoration:none">添加访客</a>
									          <br><br><br>
								             <a id="box3" href="#" class="button pill" style="text-decoration:none">删除访客</a>
										</td>
									</tr>
									<tr>
										<td >民族：</td>
										<td >联系电话：</td>
									</tr>
                                    <tr>
										<td colspan="2">身份号码：</td>
									</tr>
                                    <tr>
										<td colspan="2">家庭地址：</td>
									</tr>
									<tr>
										<td colspan="4">工作单位：</td>
									</tr>
									<tr>
										<td colspan="4">访问事由：</td>
									</tr>
									
								</table>
								<hr>
								<div id="ztbox">
									<div class="spic">
										<div id="left"></div>
										<div id="conter">
											<ul>
												<li class="on">
												<img class="smallpic" src="${ctx}/fangke/images/img01.jpg" /></li>
											</ul>
										</div>
										<div id="right"></div>
									</div>
									<div id="scroll">
										<span></span>
									</div>
								</div>
							</div>
						</div>
						<!--选择拜访对象-->
						<div class="sidebar_main_appliance" style="display: none;">
							<div class="sliderbox">
								<div class="dowebok">
									<select>
										<option value="">选择拜访对象</option>
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

								</div>
								<div id="ztbox">
									<div class="spic">
										<div id="left"></div>
										<div id="conter">
											<ul>
												<li class="on"><img class="smallpic"
													src="${ctx}/fangke/images/img01.jpg" /></li>
											</ul>
										</div>
										<div id="right"></div>
									</div>
									<div id="scroll">
										<span></span>
									</div>
								</div>
								<hr>
								<br>
								<br>
								<div style="text-align: center">
									<a href="#" class="button pill" style="text-decoration:none">添加拜访对象</a>
									&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; <a href="#"
										class="button pill" style="text-decoration:none">删除拜访对象</a>
								</div>
							</div>

						</div>
						<!--访客单打印-->
						<div class="sidebar_main_print" style="display: none;">
							<div class="sliderbox">
								<div class="dowebok">
									<select>
										<option value="">请刷卡</option>
									</select>
								</div>
								<br> <br>
								<div id="ztbox">
									<div class="spic">
										<div id="left"></div>
										<div id="conter">
											<ul>
												<li class="on">张三</li>
											</ul>
										</div>
										<div id="right"></div>
									</div>
									<div id="scroll">
										<span></span>
									</div>
								</div>
								<hr>
								<br>
								<br>
								<div style="text-align: center">
									<a href="#" class="button pill" style="text-decoration:none" >查询确认</a> 
									&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
									<a href="#"	class="button pill" style="text-decoration:none">打印凭条</a>
								</div>
							</div>

						</div>


						<!--访客签离-->
						<div class="sidebar_main_shop" style="display: none;"></div>
					</div>
					<!--内容切换end-->
				</div>
			</div>
			<div class="foot">在使用过程中，有任何问题请于工作人员联系</div>
		</div>
	</form>
</body>
<script type="text/javascript">
	$(function() {
		/*切换导航，添加当前效果*/
		$(".sidebar_tab li a").mouseover(function() {
			$(this).parent("li").addClass("sidebar_tab_cur");
			$(this).parent("li").siblings().removeClass("sidebar_tab_cur");
		});
		/*鼠标移入导航，切换对应内容*/
		$(".sidebar_tab_all").mouseover(function() {
			$(".sidebar_main_all").show().siblings().hide();
		});
		$(".sidebar_tab_appliance").mouseover(function() {
			$(".sidebar_main_appliance").show().siblings().hide();
		});
		$(".sidebar_tab_shop").mouseover(function() {
			$(".sidebar_main_shop").show().siblings().hide();
		});
		$(".sidebar_tab_print").mouseover(function() {
			$(".sidebar_main_print").show().siblings().hide();
		});

		$('select').comboSelect();
		
		var arrObj = [$('#box1'),$('#box2'),$('#box3')];
		var arrTitle = ['请刷身份证','添加访客','删除访客'];
		$.guidance({
			obj:arrObj,
			title:arrTitle
		});
	});
</script>
</html>
