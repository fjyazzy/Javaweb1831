<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
  <%request.setCharacterEncoding("UTF-8"); %>
       请求方法：<%=request.getMethod() %><br />
       参数值：<%=request.getParameter("name") %><br />

</body>
</html>