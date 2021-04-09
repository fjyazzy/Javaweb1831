<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>图书管理界面</title>
</head>
<body>
	<jsp:include page="topbar.jsp"></jsp:include>
	<div align="center" style="margin-top:10px">
		<table border="1">
			<tr>
				<td>用户
				<td>密码
				<td>说明
				<td>人员类型 
				<jsp:useBean id="db" class="com.fjsdxy.bookinfo" scope="page" />
					<%
					String testname = (String) session.getValue("usename");
					System.out.println(testname);
					session.putValue("usename", testname);
					String s = "select * from dztable where isdel=0";
					ResultSet rs = db.executeQuery(s);
					//rs.next();
					while (rs.next()) {
						int id = rs.getInt(1);
						out.println("<tr><td>" + rs.getString(2) + "</td><td>" + rs.getString(3) + "</td><td>" + rs.getString(4)
						+ "</td><td><a href='del.jsp?id=" + id + "'>删除</a>&nbsp;<a href='edit.jsp?id=" + id
						+ "'>修改</a></td></tr>");
					}
					rs.close();
					db.close();
					%>
		</table>
	</div>
	<div align="center" style="margin-top:10px">	
1	采编员	负责图书的添加、删除、回收、统计等功能	1<br>
2	流通员	负责图书的推荐、借阅和归还等功能	2<br>
3	读者	检索、预约图书	3<br>
4	管理员	负责人员身份管理	9<br>
	</div>
	<jsp:include page="../bottom.jsp"></jsp:include>
</body>
</html>