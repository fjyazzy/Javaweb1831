<%@ page language="java" contentType="text/html; charset=gb2312"
	pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>还书</title>
</head>
<body>
	<jsp:useBean id="db" class="com.fjsdxy.bookinfo" scope="page" />
	<%
		java.util.Date d = new java.util.Date();
	java.text.SimpleDateFormat dformat = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	String datetime = dformat.format(d);
	request.setCharacterEncoding("gb2312");
	String id = request.getParameter("id");
	ResultSet rs1 = db.executeQuery("select state from borrow where id=" + id);
	rs1.setFetchSize(10000);
	rs1.next();
	int sm = rs1.getInt(1);
	if (sm == 1) {
		int i = db.executeUpdate("update borrow set state=0 where id=" + id);
		int s = db.executeUpdate("update borrow set hstime='" + datetime + "' where id=" + id);
		out.println("<script language='javaScript'> alert('归还成功，点击确定后自动跳到借书界面！');</script>");
		response.setHeader("refresh", "1;url=index.jsp");
	} else if (sm == 0) {
		out.println("<script language='javaScript'> alert('归还失败，此书已归还！点击确定后重新跳到还书界面！');</script>");
		response.setHeader("refresh", "1;url=borrow.jsp");
	}
	db.close();
	%>
</body>
</html>
