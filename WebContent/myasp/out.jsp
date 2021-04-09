<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page import="java.io.IOException"%>
<html>
    <body>
    <%!
    public void printStar(JspWriter out) {
    	try {
	      out.println("*******************<br>");
		} catch (IOException e) {
	      e.printStackTrace();
		}
    }%>
          
    <%
	printStar(out);
	out.println("Hello,world!<br>");
	printStar(out);
    %>
    </body>
</html>
