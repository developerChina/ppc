<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<title>黑名单管理</title>
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
	
		function myblack(a){
			 $.ligerDialog.confirm("确认要取消拉黑吗?","取消拉黑 ",function(r){
				   if(r){
					   window.location = "${ctx}/visitor/cancelblack?blacklistID="+a;
				   }
			   });
		}
	
		$(function(){
			
			/** 给全选按钮绑定点击事件  */
	    	$("#checkAll").click(function(){
	    		// this是checkAll  this.checked是true
	    		// 所有数据行的选中状态与全选的状态一致
	    		boxs.attr("checked",this.checked);
	    	})
	    	
			/** 获取上一次选中的部门数据 */
		 	   var boxs  = $("input[type='checkbox'][id^='box_']");
		 	   
		 	  /** 给数据行绑定鼠标覆盖以及鼠标移开事件  */
		    	$("tr[id^='data_']").hover(function(){
		    		$(this).css("backgroundColor","#eeccff");
		    	},function(){
		    		$(this).css("backgroundColor","#ffffff");
		    	})
		 	   
		    
		    	 /** 删除员工绑定点击事件 */
		 	   $("#deletemy").click(function(){
		 		   /** 获取到用户选中的复选框  */
		 		   var checkedBoxs = boxs.filter(":checked");
		 		   if(checkedBoxs.length < 1){
		 			   $.ligerDialog.error(" 请选择一个需要移除黑名单的人员！");
		 		   }else{
		 			   /** 得到用户选中的所有的需要删除的ids */
		 			   var ids = checkedBoxs.map(function(){
		 				   return this.value;
		 			   })
		 			   
		 			   $.ligerDialog.confirm("确认要移除吗?","移除黑名单 ",function(r){
		 				   if(r){
		 					   //alert(ids.get())
		 					   window.location = "${ctx}/visitor/batchDelete?ids=" + ids.get();
		 				   }
		 			   });
		 		   }
		 	   })
		    	
		    	
		 	   /** 手动添加 绑定点击事件 */
		 	   $("#addManual").click(function(){
		 		   window.location = "${ctx}/visitor/blackManual?flag=1";
		 	   })
		 	     /** 自动添加 绑定点击事件 */
		 	   $("#addAutomatic").click(function(){
		 		   window.location = "${ctx}/visitor/blackAutomatic?flag=1";
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
		<td class="main_locbg font2"><img src="${ctx}/images/pointer.gif">&nbsp;&nbsp;&nbsp;当前位置：黑名单 &gt; 黑名单查询</td>
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
			  	
				
				<form name="empform" method="post" id="empform" action="${ctx}/visitor/blackAck">
				    <table width="100%" border="0" cellpadding="0" cellspacing="0">
					  <tr>
					    <td class="font3">
					    	人员姓名：<input type="text" name="blacklistName">
					    	单位名称：<input type="text" name="company">
					    	<input type="submit" value="&nbsp;&nbsp;搜索&nbsp;&nbsp;"/>
					    	<input id="addAutomatic" type="button" value="&nbsp;&nbsp;将访客拉黑&nbsp;&nbsp;"/>
							<input id="addManual" type="button" value="&nbsp;&nbsp;手动拉黑&nbsp;&nbsp;"/>
							<input id="deletemy" type="button" value="&nbsp;&nbsp;批量取消拉黑&nbsp;&nbsp;"/>
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
			  <td><input type="checkbox" name="checkAll" id="checkAll"></td>
			  <td>黑名单人员姓名</td>
			  <td>单位</td>
			  <td>身份证号</td>
			  <td>拉黑原因</td>
			  <td align="center">操作</td>
			</tr>
			<c:forEach items="${requestScope.blacks}" var="black" varStatus="stat">
				<tr id="data_${stat.index}" align="center" class="main_trbg">
					<td><input type="checkbox" id="box_${stat.index}" value="${black.blacklistID}"></td>
					 <td>${black.blacklistName}</td>
					  <td>${black.company}</td>
					  <td>${black.idNumber }</td>
					  <td>${black.reason}</td>
 					  <td align="center">
 					       <a href="javascript:myblack(${black.blacklistID})">
							  <%--  <img title="&nbsp;&nbsp;取消拉黑&nbsp;&nbsp;" src="${ctx}/images/update.gif"/> --%>
						   			取消拉黑
						   </a>
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
		  	        submitUrl="${ctx}/visitor/blackAck?pageIndex={0}"/>
		  </td>
	  </tr>
	</table>
	<div style="height:10px;"></div>
</body>
</html>