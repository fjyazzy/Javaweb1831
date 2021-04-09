<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<title>图书回收站</title>
</head>
<body>
	<jsp:include page="topbar.jsp"></jsp:include>
	<div align="center">
		<p>
		<table border="1">
			<tr>
				<td>书名
				<td>作者
				<td>价格
				<td>恢复 <jsp:useBean id="db" class="com.fjsdxy.bookinfo" scope="page" /><!-- 导入自己的类（Javabean） -->
					<%
						String s = "select * from book_info where isdel=1";
					ResultSet rs = db.executeQuery(s);
					//rs.next();
					while (rs.next()) {
						int id = rs.getInt(1);
						out.println("<tr><td>" + rs.getString(2) + "</td><td>" + rs.getString(3) + "</td><td>" + rs.getString(4)
						+ "</td><td><a href='recall.jsp?id=" + id + "'>恢复</a></td></tr>");
					}
					rs.close();
					db.close();
					%>
		</table>
	</div>

</body>
</html>