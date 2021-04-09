<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<% response.setHeader("Refresh","5"); %>
       现在的时间是：
<%=java.text.DateFormat.getDateTimeInstance().format(new java.util.Date())%>
</body>
</html>