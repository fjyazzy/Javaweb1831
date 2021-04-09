<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html>
    <head>
         <title>用户信息</title>
    </head>
    <body>
    <jsp:useBean id="user" scope="session" class="com.fjsdxy.UserREG" />
        姓名：<jsp:getProperty name="user" property="name"/>
        性别：
<%
if(user.getSex()==1) out.println("男");
else out.println("女");
%>
      学历：<jsp:getProperty name="user" property="education"/>
     </body>
</html>
