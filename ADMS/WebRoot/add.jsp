<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>My JSP 'add.jsp' starting page</title>

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
		<form method="post" name="form" action="addto.jsp">
			<table width="230" border="1">
				<tbody>
					<tr>
						<td>&nbsp;id</td>
						<td><input type="text" name="user_id"></td>
					</tr>
					<tr>
						<td>password</td>
						<td><input type="password" name="user_psw">	</td>
					</tr>
					<tr>
					    <td></td>
						<td align="center">
							<input type="submit" name="submit" value="×¢²á">
							&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="reset" name="reset" value="ÖØÖÃ">
						</td>
					</tr>
				</tbody>
			</table>
		</form>

		<br>
		<a href="login.jsp">&lt;&lt;·µ»Ø</a>
	</body>
</html>
