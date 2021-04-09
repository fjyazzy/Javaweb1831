<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html>
<body>
	Session ID: <%=session.getId()%><br/>
	用户名：<%=session.getAttribute("username")%>
</body>
</html>
