<%@ page language="java" import="java.sql.*" pageEncoding="GBK"%>

<jsp:useBean id="sqlbean" scope="page" class="com.chrkey.bean.SqlConn" />

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>My JSP 'addto.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">

	</head>
	<body>

		<%
		
			String user_id =new String(request.getParameter("user_id").trim().getBytes("ISO8859-1"),"GBK");
			String user_psw =new String(request.getParameter("user_psw").trim().getBytes("ISO8859-1"),"UTF-8");
			String sql = "select * from user where user_id like '%"+user_id+"%' ";
			ResultSet rs = sqlbean.executeQuery(sql);
			if(user_id.length()==0||user_psw.length()==0)
				response.sendRedirect("fail.jsp");
			else if(rs.next())
				response.sendRedirect("exist.jsp");
			else{
				String sqlsql = "insert into user(user_id,user_psw) values('"+user_id+"','"+user_psw+"')";
				sqlbean.executeUpdate(sqlsql);
				response.sendRedirect("registersuccess.jsp");
				}
		%>

	</body>
</html>
