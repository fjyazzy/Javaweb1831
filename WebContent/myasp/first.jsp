<%@ page language="java" pageEncoding="UTF-8"%>
<html>
<body>
<%
        session.setAttribute("username","张三");
        response.sendRedirect("session.jsp");
%>
</body>
</html>
