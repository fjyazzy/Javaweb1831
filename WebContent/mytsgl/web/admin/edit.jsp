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
	<jsp:include page="topbar.jsp"></jsp:include>
	<%
	request.setCharacterEncoding("gb2312");
	String id = request.getParameter("id");
	ResultSet rs = db.executeQuery("select * from dztable where id=" + id);
	rs.next();
	%>
	<div align="center">
		<form action="update.jsp" method="post">
			<table border="1" width="50%">
				<h1>修改人员信息</h1>
				<tr>
					<th width="30%">用户名：</th>
					<td width="70%"><input name="name" type="text"
						value="<%=rs.getString(2)%>"></td>
				</tr>
				<tr>
					<th>密码：</th>
					<td><input name="passwd" type="text"
						value="<%=rs.getString(3)%>"></td>
				</tr>
				<tr>
					<th>说明：</th>
					<td><input name="sm" type="text"
						value="<%=rs.getString(5)%>"></td>
				</tr>
				<tr>
					<th>人员类型：</th>
					<td><input name="rylx" type="text"
						value="<%=rs.getString(4)%>"></td>
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
	<jsp:include page="../bottom.jsp"></jsp:include>
</body>
</html>
