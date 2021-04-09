<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
		String usename = request.getParameter("uname");
		String userpassword = request.getParameter("upass1");
		String sql = "insert into dztable(name,passwd)values('" + usename + "','" + userpassword + "')";
		int i = db.executeUpdate(sql);
		if (i != -1) {
			out.println("<script language='javaScript'> alert('注册成功,点击确定跳转到登陆页面!');</script>");
			response.setHeader("refresh", "1;url=login.jsp");
		} else {
			out.println("<script language='javaScript'> alert('注册失败，点击确定返回注册页面！');</script>");
			response.setHeader("refresh", "1;url=register.jsp");
		}
		db.close();
	%>
</body>
</html>