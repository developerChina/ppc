<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
	<title>人事管理系统——修改员工</title>
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
	<script language="javascript" type="text/javascript" src="${ctx }/js/My97DatePicker/WdatePicker.js"></script>
	<link href="${ctx}/js/My97DatePicker/skin/WdatePicker.css" type="text/css" rel="stylesheet" />
	<script type="text/javascript">
	$(function(){
		// 控制文档加载完成以后 选中性别 
		$("#sex").val("${employee.sex}");
		$("#job_id").val("${employee.job.id}");
    	/** 员工表单提交 */
		$("#employeeForm").submit(function(){
			var msg = "";
			var name = $("#name");
			var cardId = $("#cardId");
			var age = $("#age");
			var phone = $("#phone");
			var tel = $("#tel");
			var company = $("#company");
			var postCode = $("#postCode");
			var job_id = $("#job_id");
			var dept_id = $("#dept_id");
			if ($.trim(name.val()) == ""){
				msg = "姓名不能为空！";
				name.focus();
			}else if ($.trim(cardId.val()) == ""){
				msg = "身份证号码不能为空！";
				cardId.focus();
			}else if (!/^[1-9]\d{16}[0-9A-Za-z]$/.test($.trim(cardId.val()))){
				msg = "身份证号码格式不正确！";
				cardId.focus();
			}else if ($.trim(age.val()) == ""){
				msg = "年龄不能为空！";
				age.focus();
			}else if ($.trim(phone.val()) != "" && !/^1[3|5|8]\d{9}$/.test($.trim(phone.val()))){
				msg = "手机号码格式不正确！";
				phone.focus();
			}else if ($.trim(tel.val()) != "" && !/^0\d{2,3}-?\d{7,8}$/.test($.trim(tel.val()))){
				msg = "电话号码格式不正确！";
				tel.focus();
			}else if ($.trim(company.val()) == "" ){
				msg = "单位不能为空！";
				company.focus();
			}else if ($.trim(postCode.val()) != "" && !/^[1-9]\d{5}$/.test($.trim(postCode.val()))){
				msg = "邮政编码格式不正确！";
				postCode.focus();
			}else if ($.trim(job_id.val()) == ""){
				msg = "职位不能为空！";
			}else if ($.trim(dept_id.val()) == ""){
				msg = "部门不能为空！";
			}
			if (msg != ""){
				$.ligerDialog.error(msg);
				return false;
			}else{
				return true;
			}
			$("#employeeForm").submit();
		});
    });
		

	</script>
</head>
<body>
<table width="100%" border="0" cellpadding="0" cellspacing="0">
  <tr><td height="10"></td></tr>
  <tr>
    <td width="15" height="32"><img src="${ctx}/images/main_locleft.gif" width="15" height="32"></td>
	<td class="main_locbg font2"><img src="${ctx}/images/pointer.gif">&nbsp;&nbsp;&nbsp;当前位置：员工管理  &gt; 修改员工</td>
	<td width="15" height="32"><img src="${ctx}/images/main_locright.gif" width="15" height="32"></td>
  </tr>
</table>
<table width="100%" height="90%" border="0" cellpadding="5" cellspacing="0" class="main_tabbor" align="center">
  <tr valign="top">
    <td>
    	 <form action="${ctx}/employee/updateEmployee" id="employeeForm" method="post" >
			<!-- 隐藏表单，flag表示添加标记 -->
    	 	<input type="hidden" name="flag" value="2">
			<input type="hidden" name="id" value="${employee.id }">
		  <table width="100%" border="0" cellpadding="0" cellspacing="10" class="main_tab" >
		    <tr><td class="font3 fftd">
		    	<table>
		    	
		    	<tr>
		    			<td class="font3 fftd">姓名：<input type="text" name="name" id="name" size="20" value="${employee.name }" /></td>
		    			<td class="font3 fftd">单位：<input name="company" id="company" size="20" value="${employee.company}"></td>
		    			<td class="font3 fftd">身份证号：<input type="text" name="cardId" id="cardId" size="20" value="${employee.cardId }"/></td>
		    		</tr>
		    		<tr>
		    			<td class="font3 fftd">性别：
									<select name="sex" style="width:143px;">
					    			<option value="0">--请选择性别--</option>
					    			<option value="1">男</option>
					    			<option value="2">女</option>
					    		</select></td>
		    			<td class="font3 fftd">职位：
		    			 <select name="job_id" id="job_id" style="width:143px;">
					    			<option value="">--请选择职位--</option>
					    			<c:forEach items="${requestScope.jobs }" var="job">
					    				<option value="${job.id }">${job.name }</option>
					    			</c:forEach>
					    		</select>
					    </td >
					    <td class="font3 fftd">
					    	所属部门：
					<select  name="dept_id" id="dept_id" style="width:143px;">
						   <option value="">--部门选择--</option>
						   <c:forEach items="${requestScope.depts }" var="dept">
						   		<c:choose>
			    					<c:when test="${employee.dept.id == dept.id }">
			    						<option value="${dept.id }" selected="selected">${dept.name }</option>
			    					</c:when>
			    					<c:otherwise>
			    						<option value="${dept.id }">${dept.name }</option>
			    					</c:otherwise>
			    				</c:choose>
			    			</c:forEach>
					</select>
					    </td>
		    		</tr>
		    		<tr>
		    			<td class="font3 fftd">学历：<input name="education" id="education" size="20" value="${employee.education }"/></td>
		    			<td class="font3 fftd">年龄：<input name="age" id="age" size="20" value="${employee.age }"/></td>
		    			<td class="font3 fftd">
							联系地址：<input name="address" id="address" size="20" value="${employee.address }"/>
						</td>
		    		</tr>
		    		<tr>
		    			<td class="font3 fftd">手机：<input name="phone" id="phone" size="20" value="${employee.phone }"/></td>
		    			<td class="font3 fftd">电话：<input name="tel" id="tel" size="20" value="${employee.tel }"/></td>
		    			<td class="font3 fftd">邮政编码：<input name="postCode" id="postCode" size="20" value="${employee.postCode }"/></td>
		    		</tr>
		    			<tr>
				<td class="font3 fftd">备注：<input name="remark" id="remark" size="20" value="${employee.remark }"/></td>
				<td class="font3 fftd">民族：<input name="race" id="race" size="20" value="${employee.race }"/></td>
				<td class="font3 fftd">出生日期：<input class="Wdate" onfocus="WdatePicker({skin:'whyGreen',dateFmt:'yyyy-MM-dd'});" 
					name="birthday" id="birthday" size="20" value="<fmt:formatDate value='${employee.birthday }' pattern='yyyy-MM-dd' />" /></td>
						</tr>
						<tr>
							<td class="font3 fftd">IC卡号：<input name="icno" id="icno" size="20" value="${employee.icno }"/></td>
							<td class="font3 fftd">远距离卡号：<input name="licno" id="licno" size="10" value="${employee.licno }"/><input type="button" onclick=""  value="&nbsp;读取 &nbsp; "></td>
							<td class="font3 fftd">有效期：<input class="Wdate" onfocus="WdatePicker({skin:'whyGreen',dateFmt:'yyyy-MM-dd'});" 
					name="startvalidity" id="startvalidity" size="10px" value="<fmt:formatDate value='${employee.startvalidity }' pattern='yyyy-MM-dd' />" />--<input class="Wdate" onfocus="WdatePicker({skin:'whyGreen',dateFmt:'yyyy-MM-dd'});" 
					name="endvalidity" id="endvalidity" size="10px" value="<fmt:formatDate value='${employee.endvalidity }' pattern='yyyy-MM-dd' />" /></td>
						</tr>
						<!-- 	爱&nbsp;&nbsp;&nbsp;&nbsp;好：<input name="hobby" id="hobby" size="20"/> -->
		    	</table>
		    </td></tr>
			<tr><td align="center" class="fftd">
			<input type="submit" value="&nbsp;修改&nbsp;">&nbsp;&nbsp;<input type="button" onclick="javascript:window.history.back(-1);"  value="&nbsp;返回 &nbsp; "></td></tr>
			</table>
			</form>
				</table>
<div style="height:10px;"></div>
</body>
</html>