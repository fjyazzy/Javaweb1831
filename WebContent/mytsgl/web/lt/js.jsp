<%@ page language="java" contentType="text/html; charset=gb2312"
	pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>借书</title>
</head>
<body>
	<jsp:useBean id="db" class="com.fjsdxy.bookinfo" scope="page" />
	<%
	String testname = (String) session.getValue("usename");
	java.util.Date d = new java.util.Date();
	java.text.SimpleDateFormat dformat = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	String datetime = dformat.format(d);
	request.setCharacterEncoding("gb2312");
	String id = request.getParameter("id");
	String dzname = request.getParameter("dzname");	
	ResultSet rs1 = db.executeQuery("select bookname from book_info where id=" + id);
	rs1.setFetchSize(10000);
	rs1.next();
	String sm = rs1.getString(1);
	int i = db.executeUpdate("insert into borrow(dzname,bookname,ltyname,jstime,state) values('" + dzname + "','" + sm + "','" + testname + "','"
			+ datetime + "','1')");
	if (rs1.getString(1) != null) {
		out.println("<script language='javaScript'> alert('借书成功，点击确定后自动跳到主页！');</script>");
		response.setHeader("refresh", "1;url=index.jsp");
	} else {
		out.println("<script language='javaScript'> alert('借书失败，点击确定后自动跳到主页！');</script>");
		response.setHeader("refresh", "1;url=index.jsp");
	}
	db.close();
	%>
</body>
</html>
