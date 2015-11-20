<%@ page language="java" pageEncoding="UTF-8" import="java.sql.*"%>

<%--使用MySqlConn.class--%>
<jsp:useBean id="sqlbean" scope="page" class="com.chrkey.bean.SqlConn" />

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>My JSP 'adms.jsp' starting page</title>

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

			<%
				String sql = "select * from user"; //调用数据库中的表user
				ResultSet rs = sqlbean.executeQuery(sql);
			%>

		<br>
		<table width="550" border="1" align="center">
			<tr>
				<td colspan="4">&nbsp;管理用户<br></td>
				
			</tr>
			<tr>
				<td width="133" align="center">user_id</td>
				<td width="133" align="center">user_psw</td>
				<td width="59" align="center">删除</td>
			</tr>

			<% while (rs.next()) { %>

			<tr>
				<td align="center"><%=rs.getString("user_id")%></td>
				<td align="center"><%=rs.getString("user_psw")%></td>

				<td align="center">
					<a href="del.jsp?user_id=<%=rs.getString("user_id")%>"
						onclick="{if(confirm('删除?')){this.document.myform.submit();return true;} return false;}">删除</a>
				</td>
			</tr>

			<% } %>

		</table>
		
		<br>
		<p><a href="login.jsp">&nbsp;登出</a></p>
	</body>
</html>