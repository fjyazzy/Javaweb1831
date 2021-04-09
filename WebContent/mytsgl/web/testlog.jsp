<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<jsp:useBean id="db" class="com.fjsdxy.bookinfo" scope="page" />
	<%
	request.setCharacterEncoding("utf-8");
	String usename = request.getParameter("username");
	String userpassword = request.getParameter("passwd");
	String s = "Select passwd,rylx From dztable where name='" + usename + "'";
	ResultSet rs = db.executeQuery(s);
	rs.setFetchSize(10000);
	rs.next();
	String sm = rs.getString(1);
	String rylx=rs.getString(2);
	if (userpassword.equals(sm)) {
		session.putValue("usename", usename);
		session.putValue("rylx", rylx);
		switch(rylx){
		case "9":
			out.println("<script language='javaScript'> alert('管理员-登陆成功');</script>");		
			response.setHeader("refresh", "1;url=admin/index.jsp");
			break;
		case "1":
			out.println("<script language='javaScript'> alert('采编人员-登陆成功');</script>");		
			response.setHeader("refresh", "1;url=cb/index.jsp");
			break;
		case "2":
			out.println("<script language='javaScript'> alert('流通人员-登陆成功');</script>");		
			response.setHeader("refresh", "1;url=lt/index.jsp");
			break;
		case "3":
			out.println("<script language='javaScript'> alert('读者-登陆成功');</script>");		
			response.setHeader("refresh", "1;url=lt/index.jsp");
			break;
		}
		
		
	} else {
		out.println("<script language='javaScript'> alert('登陆失败，点击确定后跳到登陆！');</script>");
		response.setHeader("refresh", "1;url=login.jsp");
	}
	db.close();
	%>
</body>
</html>