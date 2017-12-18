<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
	<title>添加用户</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
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
		var boxs  = $("input[type='checkbox'][id^='box_']");
    	/** 员工表单提交 */
		$("#elevatorForm").submit(function(){
			var elevatorName = $("#elevatorName");
			var pwd = $("#pwd");
			var userPwd = $("#pwdtow");
			var myclient = $("#myclient");
			var mytime = $("#mytime");
			var msg = "";
			if ($.trim(elevatorName.val()) == ""){
				msg = "用户名称不能为空！";
				elevatorName.focus();
			}else if ($.trim(pwd.val()) == ""){
				msg = "用户密码不能为空！";
				pwd.focus();
			}else if ($.trim(userPwd.val()) == ""){
				msg = "确认密码不能为空！";
				userPwd.focus();
			}else if ($.trim(userPwd.val())!=$.trim(pwd.val())){
				msg = "2次密码不一致！";
			}else if ($.trim(myclient.val()) == ""){
				msg = "所属客户不能为空！";
				myclient.focus();
			}else if ($.trim(mytime.val()) == ""){
				msg = "过期时间不能为空！";
				mytime.focus();
			}else{
				 var checkedBoxs = boxs.filter(":checked");
		 		   if(checkedBoxs.length < 1){
		 			  msg = " 请选择需要添加的分组！"; 
		 		   }
			}
			 
	 		  
			if (msg != ""){
				$.ligerDialog.error(msg);
				return false;
			}else{
				return true;
			}
			$("#elevatorForm").submit();
		});
    });
		

	</script>
</head>
<body>
<table width="100%" border="0" cellpadding="0" cellspacing="0">
  <tr><td height="10"></td></tr>
  <tr>
    <td width="15" height="32"><img src="${ctx}/images/main_locleft.gif" width="15" height="32"></td>
	<td class="main_locbg font2"><img src="${ctx}/images/pointer.gif">&nbsp;&nbsp;&nbsp;当前位置：定位系统-用户管理  &gt; 添加用户</td>
	<td width="15" height="32"><img src="${ctx}/images/main_locright.gif" width="15" height="32"></td>
  </tr>
</table>
<table width="100%" height="90%" border="0" cellpadding="5" cellspacing="0" class="main_tabbor">
  <tr valign="top">
    <td>
    	 <form action="${ctx}/location/addLuserAck" id="elevatorForm" method="post">
    	 	<!-- 隐藏表单，flag表示添加标记 -->
    	 	<input type="hidden" name="flag" value="2">
		  <table width="100%" border="0" cellpadding="0" cellspacing="10" class="main_tab">
		    <tr><td class="font3 fftd">
		    	<table>
		    		<tr>
		    			<td class="font3 fftd">用户&nbsp;名称：&nbsp;&nbsp;<input name="userName" id="elevatorName" type="text"  size="20"/></td>
		    		</tr>
		    		<tr>
		    			<td class="font3 fftd">用户&nbsp;类型：&nbsp;
		    			<select name="userType">
							<option disabled="disabled">--请选择用户类型--</option>
							<option value="-1" selected = "selected">普通监控员</option>
							<option value="1">一级管理员</option>
							<option value="2">二级管理员</option>
						</select>
						</td>
		    		</tr>
		    		<tr>
		    			<td class="font3 fftd">用户&nbsp;密码：&nbsp;
		    			<input name=rePwd id="pwd" type="password" size="20" /></td>
		    		</tr>
		    		<tr>
		    			<td class="font3 fftd">确认&nbsp;密码：&nbsp;
		    			<input name="userPwd" id="pwdtow" type="password"  size="20" /></td>
		    		</tr>
		    		<tr>
		    			<td class="font3 fftd">所属&nbsp;客户：&nbsp;
		    			<select name="clientID" id="myclient">
								<option disabled="disabled" selected = "selected">--请选择客户--</option>
								<c:forEach items="${requestScope.clientParts}" var="client">
								<option value="${client.id}">${client.compyname}</option>
								</c:forEach>
						</select>
						</td>
		    		</tr>
		    		<tr>
		    			<td class="font3 fftd">选择&nbsp;分组：&nbsp;
		    			<c:forEach items="${requestScope.groupParts}" var="group" varStatus="stat">
		    				<input type="checkbox" name="ids" id="box_${stat.index}"  value="${group.id}">${group.groupName}
		    				<c:if test="${stat.count % 5 == 0 }">
		    				<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		    				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		    				</c:if>
		    			</c:forEach>
		    			
		    			</td>
		    		</tr>
		    		<tr>
		    			<td class="font3 fftd">过期&nbsp;时间：&nbsp;
		    			<input name="overduetime" id="mytime" type="text"  size="20" 
		    			class="Wdate" onfocus="WdatePicker({skin:'whyGreen',dateFmt:'yyyy-MM-dd'});" /></td>
		    		</tr>
		    	</table>
		    </td></tr>
			<tr><td class="main_tdbor"></td></tr>
			
			<tr><td align="left" class="fftd"><input type="submit" value="&nbsp;&nbsp;添加&nbsp;&nbsp;">&nbsp;&nbsp;<input type="button" onclick="javascript:window.history.back(-1);" value="&nbsp;&nbsp;返回 &nbsp;&nbsp;"></td></tr>
		  </table>
		 </form>
	</td>
  </tr>
</table>
<div style="height:10px;"></div>
</body>
</html>