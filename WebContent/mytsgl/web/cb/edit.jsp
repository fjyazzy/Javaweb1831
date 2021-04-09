<%@ page language="java" contentType="text/html; charset=gb2312"
	pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>修改图书</title>
<style>
body {
	width: auto;
	height: 350px;
	background: url(images/557.jpg) no-repeat;
	background-size: 100% 100%;
	background-attachment: fixed;
}
.div_foot {
	position: absolute;
	height: 50px;
	text-align: center;
	line-height: 50px;
	width: 100%;
	margin-top: 400px;
}
html, body {margin: 0;}

html{overflow-y:scroll;}
</style>
</head>
<body>
	<jsp:useBean id="db" class="com.fjsdxy.bookinfo" scope="page" />
	<%
		request.setCharacterEncoding("gb2312");

	String id = request.getParameter("id");
	ResultSet rs = db.executeQuery("select * from book_info where id=" + id);
	rs.next();
	%>
	<jsp:include page="topbar.jsp"></jsp:include>
	<div align="center">
		<form action="update.jsp" method="post">
			<table border="1" width="50%">
				<h1>修改图书信息</h1>
				<tr>
					<th width="30%">书名：</th>
					<td width="70%"><input name="bookname" type="text"
						value="<%=rs.getString(2)%>"></td>
				</tr>
				<tr>
					<th>作者：</th>
					<td><input name="author" type="text"
						value="<%=rs.getString(3)%>"></td>
				</tr>
				<tr>
					<th>价格：</th>
					<td><input name="price" type="text"
						value="<%=rs.getString(4)%>">元</td>
				</tr>
				<tr>
					<th colspan="2"><input type="hidden" name="id" value="<%=id%>">
						<input type="submit" value="修改"> <input type="reset"
						value="重置"></th>
				</tr>
			</table>
		</form>
	</div>

	<%
		db.close();
	%>
	<div class="div_foot">&copy;2019-2020 www.sdxyxzn.com All Right
		Reserved.&nbsp;徐郑楠&nbsp;版权所有</div>
</body>
</html>
