<%@ page language="java" import="java.util.*" pageEncoding="utf-8" isErrorPage="true"%>
<%@ page import="java.io.IOException"%>
<html>
	<head>
		<title>处理错误信息页面</title>
	</head>
	<body>
		<p align=center>错误信息</p>
		<hr>
		<%
		    out.print(exception.toString());
		%>
	</body>
</html>
