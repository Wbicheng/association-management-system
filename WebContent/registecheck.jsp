<%@ page import="java.sql.*" language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<%@ page import ="Bean.DBBean" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"> <!-- 然后解读该页面 -->
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="db1" class="Bean.DBBean" scope="page" />
	<%
 		request.setCharacterEncoding("UTF-8");
		String username = (String) request.getParameter("username_registe");
		String password = (String) request.getParameter("password_registe");//取值

 		//下面是数据库操作
 		String sql = "select * from login where username=" + "'" + username + "'";//查询是否存在
 		ResultSet rs = db1.executeQuery(sql);//运行上面的语句
 		if (rs.next()) {//若用户存在，则重新注册
 			out.print("<script language='javaScript'> alert('用户存在');</script>");
 			response.setHeader("refresh", "0;url=registe.jsp");
		} else {
 			sql = "insert into login values('"+ username +"','"+ password +"')";
 			db1.execQuery(sql);
 			out.print("<script language='javaScript'> alert('注册成功');</script>");
 			response.setHeader("refresh", "0;url=login.jsp");
 		}
		db1.close();
	%>
</body>
</html>