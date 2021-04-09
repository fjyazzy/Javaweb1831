<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" import="java.sql.*" import="java.io.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<style>
body {
	width: auto;
	height: 350px;
	background: url(images/557.jpg) no-repeat;
	background-size: 100% 100%;
	background-attachment: fixed;
}

</style>
</head>
<body>
	<div align="center">
		<table style="border: 1px solid #000; padding-left: 115px; padding-right: 115px; padding-bottom: 20px">
			<tr>
				<img src="images/logo2.jpg" width=680 border=0>
			</tr>
			<div  style="margin-top:10px"></div>
			<tr>
				<td><a href=index.jsp></a></td>
				<td>
					<%
						request.setCharacterEncoding("UTF-8");
					response.setContentType("text/html;charset=UTF-8");
					String testname = (String) session.getValue("usename");
					if (testname != null) {
						out.println("尊敬的" + testname+",你好");
					}
					%>
					<a href=add.jsp>增加图书信息</a> | <a
					href=recycle.jsp>图书回收站</a> | <a href=search.jsp>检索</a> | <a
					href=tj.jsp>统计</a> | <a href=borrow.jsp>还书页面</a> | <a href=index.jsp>返回主页面</a>
				</td>
			</tr>
		</table>
	</div>
</body>

</html>