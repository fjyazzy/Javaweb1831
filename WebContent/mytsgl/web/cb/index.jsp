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
				<td>书名
				<td>作者
				<td>价格
				<td>管理 
				<jsp:useBean id="db" class="com.fjsdxy.bookinfo" scope="page" />
					<%
					String testname = (String) session.getValue("usename");
					System.out.println(testname);
					session.putValue("usename", testname);
					String s = "select * from book_info where isdel=0";
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
	<jsp:include page="../bottom.jsp"></jsp:include>
</body>
</html>