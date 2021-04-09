<%@ page language="java" import="java.util.*" pageEncoding="utf-8" errorPage="error.jsp" %>
<html>
    <head>
	<title>计算结果</title>
    </head>
    <body>
	<p align=center>正确的运算结果是：<hr>
	<%
	    String divided = request.getParameter("divided"); //接受被除数参数
	    String divide = request.getParameter("divide");//接受除数参数
	    int i = Integer.parseInt(divided);
	    int j = Integer.parseInt(divide);
		out.println(i + "/" + j + "=" + i / j);

	 %>
	</p>
    </body>
</html>
