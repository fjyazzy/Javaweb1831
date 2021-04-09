<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html>
    <body>
  <%
	Integer count;
	synchronized (application) {
	  count = (Integer) application.getAttribute("count");
	  if (count == null)
	     count = 0;
	     count = count + 1;
	  application.setAttribute("count", count);
	}
  %>
     你是本网站的第<%=count.intValue()%>个访问者！
 </body>
</html>
