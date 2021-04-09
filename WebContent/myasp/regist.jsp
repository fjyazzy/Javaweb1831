<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<% request.setCharacterEncoding("UTF-8"); %>
<html>
    <head>
    <title>注册状态</title>
    </head>
    <body>
    <jsp:useBean id="user" scope="session" class="com.fjsdxy.UserREG" />
    <jsp:setProperty name="user" property="*"/>
	注册成功！<br/>
	点击<a href="userInfo.jsp">这里</a>查看用户信息！
    </body>
</html>
