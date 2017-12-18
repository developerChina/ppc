<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<title>部门管理</title>
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
	<script src="${ctx}/js/ligerUI/js/plugins/ligerTree.js" type="text/javascript"></script>
	<link href="${ctx}/css/pager.css" type="text/css" rel="stylesheet" />
	
	<script src="${ctx}/scripts/boot.js" type="text/javascript"></script>
	
	<script type="text/javascript">
		$(function(){
	 	   /** 获取上一次选中的部门数据 */
	 	   var boxs  = $("input[type='checkbox'][id^='box_']");
	 	   
	 	  /** 给全选按钮绑定点击事件  */
	      $("#checkAll").click(function(){
    		 // this是checkAll  this.checked是true
    		 // 所有数据行的选中状态与全选的状态一致
    		 boxs.attr("checked",this.checked);
	      })
	    	
	 	 /** 给数据行绑定鼠标覆盖以及鼠标移开事件  */
    	 $("tr[id^='data_']").hover(function(){
    		$(this).css("backgroundColor","#eeccff");
    	 },function(){
    		$(this).css("backgroundColor","#ffffff");
    	 })
	    	
	    	
	 	   /** 删除员工绑定点击事件 */
	 	   $("#delete").click(function(){
	 		   /** 获取到用户选中的复选框  */
	 		   var checkedBoxs = boxs.filter(":checked");
	 		   if(checkedBoxs.length < 1){
	 			  mini.showMessageBox({
	 		           showModal: false,
	 		            width: 250,
	 		            title: "提示",
	 		            message: "记录已删除",
	 		            timeout: 2000,
	 		            x:"center",
	 		            y:"top"
	 		        });
	 		   }else{
	 			   /** 得到用户选中的所有的需要删除的ids */
	 			   var ids = checkedBoxs.map(function(){
	 				   return this.value;
	 			   })
	 			    mini.confirm("确定删除记录？", "确定？",
			            function (action) {
			                if (action == "ok") {
			                	window.location = "${ctx }/dept/removeDept?ids=" + ids.get();
			                } 
			            }
			        );
	 		   }
	 	   })
	 	   /** 添加员工绑定点击事件 */
	 	   $("#add").click(function(){
	 		   window.location = "${ctx }/dept/addDept?flag=1";
	 	   })
	 	   
	 	   $("#search").click(function(){
	 		   var actionURL = $("#deptform").attr("action");
	 	       $("#deptform").attr("action","${ctx}/dept/selectDept");
	 	       $("#deptform").submit();
	 	   })
	 	   
	 	    $("#import").click(function(){
		 		 window.location = "${ctx }/dept/importDeptPage";
		 	})
	 	   
	 	   $("#export").click(function(){
	 		   var actionURL = $("#deptform").attr("action");
	 	       $("#deptform").attr("action","${ctx}/dept/exportExcel");
	 	       $("#deptform").submit();
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
		<td class="main_locbg font2"><img src="${ctx}/images/pointer.gif">&nbsp;&nbsp;&nbsp;当前位置：部门管理 &gt; 部门查询</td>
		<td width="15" height="32"><img src="${ctx}/images/main_locright.gif" width="15" height="32"></td>
	  </tr>
	</table>
	
	<table width="100%" height="90%" border="0" cellpadding="5" cellspacing="0" class="main_tabbor">
	  <!-- 查询区  -->
	  <tr valign="top">
	    <td colspan="2" height="30">
		  <table width="100%" border="0" cellpadding="0" cellspacing="10" class="main_tab">
		    <tr>
			  <td class="fftd">
			  	<form name="deptform" method="post" id="deptform">
				    <table width="100%" border="0" cellpadding="0" cellspacing="0">
					  <tr>
					    <td class="font3">
					    	部门名称：<input type="text" name="name">
					    	<input id="search" type="button" value="&nbsp;搜索&nbsp;"/>
					    	<input id="delete" type="button" value="&nbsp;删除&nbsp;"/>
					    	<input id="add" type="button" value="&nbsp;添加部门&nbsp;"/>
					    	<input id="import" type="button" value="&nbsp; 导入 &nbsp;"/>
					    	<input id="export" type="button" value="&nbsp; 导出 &nbsp;"/>
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
	    <td width="10%" rowspan="2">
	        <ul id="tree1" class="mini-tree" url="${ctx}/dept/selectAllDept"
	        showTreeIcon="true" textField="name" idField="id" parentField="pid" resultAsTree="false" 
	        showArrow="true" expandOnNodeClick="true" expandOnLoad="1">
	    	</ul>
	    </td>
	    <td height="20">
		  <table width="100%" border="1" cellpadding="5" cellspacing="0" style="border:#c2c6cc 1px solid; border-collapse:collapse;">
		    <tr class="main_trbg_tit" align="center">
			  <td><input type="checkbox" name="checkAll" id="checkAll"></td>
			  <td>名称</td>
			  <td>详细信息</td>
			  <td>上级部门</td>
			  <td align="center">操作</td>
			</tr>
			<c:forEach items="${requestScope.depts}" var="dept" varStatus="stat">
				<tr id="data_${stat.index}" align="center" class="main_trbg">
					<td><input type="checkbox" id="box_${stat.index}" value="${dept.id}"></td>
					 <td>${dept.name }</td>
					 <td>${dept.remark }</td>
					 <td>${dept.dept.name }</td>
					 <td align="center" width="40px;"><a href="${ctx}/dept/updateDept?flag=1&id=${dept.id}">
							<img title="修改" src="${ctx}/images/update.gif"/></a>
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
		  	        submitUrl="${ctx}/dept/selectDept?pageIndex={0}"/>
		  </td>
	  </tr>
	</table>
	<div style="height:10px;"></div>
</body>
</html>