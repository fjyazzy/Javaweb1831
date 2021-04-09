<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="java.sql.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>借书查询界面</title>
<style>
div {
	margin-top: 20px
}

table {
	margin-top: 50px
}

body {
	width: auto;
	height: 350px;
	background: url(images/557.jpg) no-repeat;
	background-size: 100% 100%;
	background-attachment: fixed;
}

.div_foot {
	position: absolute;
	height: 50px;
	text-align: center;
	line-height: 50px;
	width: 100%;
	margin-top: 350px;
}
html, body {margin: 0;}

html{overflow-y:scroll;}
</style>
</style>
</head>
<body>
	<jsp:useBean id="db" class="com.fjsdxy.bookinfo" scope="page" />
		<jsp:include page="topbar.jsp"></jsp:include>
	<form action="return.jsp">
		<div align="center">
			<td><h1>请输入要归还的书号：</h1></td>
			<%
			String testname=(String)session.getValue("usename");
			ResultSet rs1 = db.executeQuery("select max(id) from borrow");
			rs1.setFetchSize(10000);
			rs1.next();
			out.println("<input type=text name=id required oninput='if(value>" + rs1.getInt(1) + ")value=" + rs1.getInt(1)
					+ ";if(value<1)value=1'/>");
			%>
			<td><input type="submit" value="归还图书" />(可通过扫描图书二维码输入)</td>
		</div>

		<table border="1" bgcolor="#ffffff" align="center" cellspacing="1"
			cellpadding="1">
			<h2 align="center">借书状态查询/归还图书界面</h2>
			<tr>
				<td align="center" width=16%>书号</td>
				<td align="center" width=16%>读者名</td>
				<td align="center" width=16%>书名</td>
				<td align="center" width=16%>借书时间</td>
				<td align="center" width=16%>还书时间</td>
				<td align="center" width=16%>状态</td>
			</tr>
			<%
			
			if(testname==null){
				out.println("请登录系统");
			}
			else{
			String sql = "select * from borrow";
			ResultSet rs = db.executeQuery(sql);
				while (rs.next()) {
					
					int r=rs.getInt(6);
					
					if(r==1){
						out.println(
						"<tr><td>" + rs.getInt(1) + "</td><td>" + rs.getString(2) + "</td><td>" + rs.getString(3) + "</td><td>"
								+ rs.getString(4) + "</td><td>此书还未归还</td><td><b>未归还</b></td></tr>");
					}else if(r==0){
					out.println(
					"<tr><td>" + rs.getInt(1) + "</td><td>" + rs.getString(2) + "</td><td>" + rs.getString(3) + "</td><td>"
							+ rs.getString(4) + "</td><td>" + rs.getString(5) + "</td><td><b>已归还</b></td></tr>");
				
					}
					
					
				}
				rs.close();
				db.close();
			}
				
				
		   

			
			
			%>
		</table>
	</form>
</body>
</html>