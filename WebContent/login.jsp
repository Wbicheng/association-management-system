<%@ page import="java.sql.*" language="java"
	contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- <html> -->
<!-- <head> -->
<!-- <meta http-equiv="Content-Type" content="text/html; charset=utf-8"> -->
<!-- <title>登录界面</title> -->
<!-- </head> -->
<!-- <body> -->
<!-- 	<center> -->
<!-- 		<!-- 居中 -->
<!-- 		<h1 style="color: red">登录</h1> -->
<!-- 		<!-- 标题 -->
<!-- 		<form id="indexform" name="indexForm" action="logincheck.jsp" -->
<!-- 			method="post"> -->
<!-- 			<!-- 用户表单，内容提交后交由logincheck.jsp处理，提交方式为post即网址不显示提交内容 -->
<!-- 			<table border="1"> -->
<!-- 				建立表格，border=1带表框，=0不带 -->
<!-- 				<tr> -->
<!-- 					第一行 -->
<!-- 					<td>账号：</td> -->
<!-- 					第一行下第一个元素 -->
<!-- 					<td><input type="text" name="username"></td> -->
<!-- 					form元素输入，类型为text，name作为区分 -->
<!-- 				</tr> -->
<!-- 				<tr> -->
<!-- 					<td>密码：</td> -->
<!-- 					<td><input type="password" name="password"></td> -->
<!-- 				</tr> -->
<!-- 			</table> -->
<!-- 			<br> <input type="submit" value="登录" style="color: #BC8F8F"> -->
<!-- 			<!-- form元素输入，类型为，name作为区分 -->

<!-- 		</form> -->
<!-- 		<form action="registe.jsp"> -->
<!-- 			<input type="submit" value="注册" style="color: #BC8F8F"> -->
<!-- 		</form> -->
<!-- 	</center> -->
<!-- </body> -->
<!-- </html> -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>登录界面</title>
<link rel="stylesheet" type="text/css" href="./css/login.css">
</head>
<body>
	<div class="logo">
		<div class="name">
			<img src="./image/system.jpg" width="450px" height="100px">
		</div>
	</div>
	<div class="logincontainer">
		<div class="denglv">
			<h1 style="color: bisque">登录</h1>
		</div>
		
		<div class="account">
            <form id="indexform" name="indexForm" action="logincheck.jsp">
                <table>
                    <tr>
                        <td>账号:</td>
                        <td><input type="text" name="username"></td>
                    </tr>
                    <tr>
                        <td>密码:</td>
                        <td><input type="password" name="password"></td>
                    </tr>
                </table>
                <input id="pasw" type="submit" value="登录" style="color: #BC8F8F">
            </form>
             </div>
            <input id="regis" type="submit" value="注册" style="color:#BC8F8F" onclick="location.href='registe.jsp'">

	</div>
</body>
</html>

