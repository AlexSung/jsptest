<%@ page language="java" pageEncoding="UTF-8" import="java.sql.*"%>

<%--使用SqlConn.class--%>
<jsp:useBean id="sqlbean" scope="page" class="com.chrkey.bean.SqlConn" />

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>

		<title>My JSF 'login.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

	</head>

	<body>
		<br>
		<br>
		<form name="form1" action="loginto.jsp" method="post">
		
		<table width="225" border="1" align="center">
			<tbody>
				<tr>
					<td>用户名</td>
					<td><input type="text" name="username">	</td>
				</tr>
				<tr>
					<td>密码	</td>
					<td><input type="password" name="password"></td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<input type="radio" checked="checked" value="1" name="role">用户
						&nbsp;&nbsp;&nbsp;
						<input type="radio" value="0" name="role">管理员
					</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td><input type="submit" value="登陆" name="login">
						&nbsp;&nbsp;
						<input onclick="location.href='add.jsp';" type="button" value="注册" name="reset">
					</td>
				</tr>
			</tbody>
		</table>
</form></body>
</html>