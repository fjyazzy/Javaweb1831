<%@ page language="java" contentType="text/html; charset=gb2312"
	import="java.sql.*" errorPage="error.jsp"%>
<html>
<head>
<title>������Ϣ�޸����</title>
</head>
<body>
	<jsp:useBean id="db" class="com.fjsdxy.bookinfo" scope="page" />
	<%
	request.setCharacterEncoding("gb2312");
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String passwd = request.getParameter("passwd");
	String sm = request.getParameter("sm");
	String rylx = request.getParameter("rylx");
	String sql = "update dztable set name='" + name + "',passwd='" + passwd + "',sm='" + sm + "',rylx='" + rylx + "' where id="	+ id;
	System.out.print(sql);
	
	int i = db.executeUpdate(sql);
	if (i == 1) {
		out.println("<script language='javaScript'> alert('�޸ĳɹ������ȷ�����Զ�������ҳ��');</script>");
		response.setHeader("refresh", "1;url=index.jsp");
		return;
	}
	db.close();
	%>
</body>
</html>