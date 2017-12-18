<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<title>定位系统-分组管理</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="pragma" content="no-cache" />
	<meta http-equiv="cache-control" content="no-cache" />
	<meta http-equiv="expires" content="0" />    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3" />
	<meta http-equiv="description" content="This is my page" />
	<link href="${ctx}/css/css.css" type="text/css" rel="stylesheet" />
	<link rel="stylesheet" type="text/css" href="${ctx}/js/ligerUI/skins/Aqua/css/ligerui-dialog.css"/>
	<link href="${ctx}/js/ligerUI/skins/ligerui-icons.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="${ctx }/js/jquery-1.11.0.js"></script>
    <script type="text/javascript" src="${ctx }/js/jquery-migrate-1.2.1.js"></script>
	<script src="${ctx}/js/ligerUI/js/core/base.js" type="text/javascript"></script>
	<script src="${ctx}/js/ligerUI/js/plugins/ligerDrag.js" type="text/javascript"></script> 
	<script src="${ctx}/js/ligerUI/js/plugins/ligerDialog.js" type="text/javascript"></script>
	<script src="${ctx}/js/ligerUI/js/plugins/ligerResizable.js" type="text/javascript"></script>
	<link href="${ctx}/css/pager.css" type="text/css" rel="stylesheet" />

<script type="text/javascript">

    function deleteLgroup(a){
    	$.ligerDialog.confirm("确认要删除吗?","删除定位系统分组 ",function(r){
			   if(r){
				   window.location = "${ctx }/location/delLgroupAck?Lgroup=" + a;
			   }
		   });
    }
    
    function updateLgroup(a){
    	
	window.location = "${ctx }/location/updateLgroupAck?flag=1&Lgroup=" + a;
			
    }

		$(function(){
		 	  /** 给数据行绑定鼠标覆盖以及鼠标移开事件  */
		    	$("tr[id^='data_']").hover(function(){
		    		$(this).css("backgroundColor","#eeccff");
		    	},function(){
		    		$(this).css("backgroundColor","#ffffff");
		    	})
		    	
		 	   /** 添加员工绑定点击事件 */
		 	   $("#add").click(function(){
		 		   window.location = "${ctx }/location/addLgroupAck?flag=1";
		 	   })
	 })
	</script>
	
</head>
<body>
	<!-- 导航 -->
	<table width="100%" border="0" cellpadding="0" cellspacing="0">
	  <tr><td height="10"></td></tr>
	  <tr>
	    <td width="15" height="32"><img src="${ctx}/images/main_locleft.gif" width="15" height="32"></td>
		<td class="main_locbg font2"><img src="${ctx}/images/pointer.gif">&nbsp;&nbsp;&nbsp;当前位置：定位系统-分组管理 &gt; 分组查询</td>
		<td width="15" height="32"><img src="${ctx}/images/main_locright.gif" width="15" height="32"></td>
	  </tr>
	</table>
	
	<table width="100%" height="90%" border="0" cellpadding="5" cellspacing="0" class="main_tabbor">
	  <!-- 查询区  -->
	  <tr valign="top">
	    <td height="30">
		  <table width="100%" border="0" cellpadding="0" cellspacing="10" class="main_tab">
		    <tr>
			  <td class="fftd">
			  	<form name="empform" method="post" id="empform" action="${ctx}/location/GroupAck">
				    <table width="100%" border="0" cellpadding="0" cellspacing="0">
					  <tr>
					    <td class="font3">
					    	分组名称:<input type="text" name="groupName">
					    	<input type="submit" value="&nbsp;&nbsp;搜索&nbsp;&nbsp;"/>
					    	<input id="add" type="button" value="&nbsp;&nbsp;添加分组&nbsp;&nbsp;"/> 
					    </td>
					  </tr>
					</table>
				</form>
			  </td>
			</tr>
		  </table>
		</td>
	  </tr>
	  
	  <!-- 数据展示区 -->
	  <tr valign="top">
	    <td height="20">
		  <table width="100%" border="1" cellpadding="5" cellspacing="0" style="border:#c2c6cc 1px solid; border-collapse:collapse;">
		    <tr class="main_trbg_tit" align="center">
		      <td>序号</td>
			  <td>名称</td>
			  <td>创建时间</td>
			  <td>最小回传时间</td>
			  <td>最大回传时间</td>
			  <td>用户数量</td>
			  <td>车辆数量</td>
			  <td align="center">操作</td>
			</tr>
			<c:forEach items="${requestScope.pagingList}" var="lg" varStatus="stat">
				<tr id="data_${stat.index}" align="center" class="main_trbg">
					  <td>${stat.count}</td>
					  <td>${lg.groupName}</td>
					  <td>${lg.createtime}</td>
					  <td>${lg.mintime}</td>
					  <td>${lg.maxtime}</td>
					  <td>${lg.userCount}</td>
					  <td>${lg.vhcCount}</td>
 					  <td align="center">
 					  <a href="javascript:void(0)" onclick="deleteLgroup('${lg.id}')">删除</a>/<a href="javascript:void(0)" onclick="updateLgroup('${lg.id}')">修改</a>
					  </td>
				</tr>
			</c:forEach>
		  </table>
		</td>
	  </tr>
	  <!-- 分页标签 -->
	  <tr valign="top">
		    <td align="center" class="font3">
		  	 <fkjava:pager
		  	        pageIndex="${requestScope.pageModel.pageIndex}" 
		  	        pageSize="${requestScope.pageModel.pageSize}" 
		  	        recordCount="${requestScope.pageModel.recordCount}" 
		  	        style="digg"
		  	        submitUrl="${ctx}/elevator/elevatorAck?pageIndex={0}"/>
		  </td>
	  </tr>
	</table>
	<div style="height:10px;"></div>
</body>
</html>
