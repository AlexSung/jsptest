<%@ page language="java" import="java.sql.*" pageEncoding="UTF-8"%>
<jsp:useBean id="sqlbean" scope="page" class="com.chrkey.bean.SqlConn" />

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>My JSP 'loginto.jsp' starting page</title>

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
		
			//String username = request.getParameter("username").trim();
			String username =new String(request.getParameter("username").trim().getBytes("ISO8859-1"),"UTF-8");
			System.out.println(username);
			String password = request.getParameter("password").trim();
			String role = request.getParameter("role").trim();

			try {
				if (role.equals("0")) {  //不能用role=="0"
					String sql = "select * from admin where admin_id='"+username+"'and admin_psw='"+password+"'";
					ResultSet rs = sqlbean.executeQuery(sql);
					if (rs.next())
						response.sendRedirect("adms.jsp"); //验证成功则直接跳转了，不会看到错误信息
					else
						out.println("错误的用户名或密码");
				} 
				
				else if (role.equals("1")) {  //与role.equals("0"）类似
                    String sql = "select * from user where user_id='"+username+"'and user_psw='"+password+"'";
					ResultSet rs = sqlbean.executeQuery(sql);
					if (rs.next())
						out.println("你好，"+username);
					else
						out.println("错误的用户名或密码");
				}
				
			} catch (Exception ee) {
				ee.printStackTrace();
			}
		%>
	</body>
</html>
