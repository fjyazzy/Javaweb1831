<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>VK网上图书馆用户登录</title>
<style type="text/css">
body {
	margin-top: 0px;
	margin-left: 0px;;
	font-family: 幼圆;
	background: url(images/bj.jpg) no-repeat;
	background-size: 100% 100%;
	background-attachment: fixed;
}

#content {
	width: 1350px;
	high: 570px;
}

#login {
	background-color: #FEF3C9;
	width: 350px;
	height: 350px;
	float: right;
	margin-top: 80px;
	border-radius: 2px;
	border-bottom-left-radius: 10px;
	border-bottom-right-radius: 10px;
	border-top-left-radius: 10px;
	border-top-right-radius: 10px;
}

#con a:link {
	text-decoration: none;
	color: #000;
}

#con a:visited {
	text-decoration: none;
	color: #000;
	border-width: 0px;
}

#button {
	background-color: #EECC22;
	font-size: 20px;
	color: #FEF3C9;
	width: 160px;
	height: 60px;
	border: 1px solid #FF6;
	border-radius: 5px;
}

.input {
	border-color: #999;
	border-width: 0px;
	width: 200px;
	height: 36px;
}

.div_foot {
	position: absolute;
	height: 50px;
	text-align: center;
	line-height: 50px;
	width: 100%;
	margin-top: 590px;
	color: #FFFFFF;
}

</style>

</head>

<body>
	<jsp:useBean id="db" class="com.fjsdxy.bookinfo" scope="page" />
	
	<h1 style="color: #FFFFFF;" align="center">欢迎来到VK网上图书馆登陆界面</h1>
	<div id="content">
		<div
			style="margin-top: 250px; margin-left: 350px; float: left; z-index: 1111;"></div>
		<div style="width: 50px; float: right;"></div>
		<div id="login" style="margin-right: 100px;">
			<div style="height: 23px;"></div>
			<div style="width: 350px; height: 27px; font-size: larger;">
				<center>用户登录</center>
			</div>
			<form method="post" action="testlog.jsp">
				<center>
					<table border="0px">
						<tr>
							<td height="69";>用户名:</td>
							<td><input type="text" class="input" required="required"
								id="name" name="username" /></td>
						</tr>
						<tr>
							<td height="81";>密&nbsp;&nbsp; 码:</td>
							<td><input type="password" class="input" required="required"
								id="password" name="passwd" /></td>
						</tr>
						<tr>
							<td height="44">
								<div align="center">
									<a href="register.jsp" style="text-decoration: none;">立即注册</a>
								</div>
							</td>
						</tr>
						<tr>
							<td colspan="2"><center>
									<input type="submit" id="button" value="登录" />
								</center></td>
						</tr>
					</table>
				</center>
		</div>
	</div>
	<div class="div_foot"><jsp:include page="bottom.jsp"></jsp:include></div>
	
</body>
</html>
