<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>图书管理界面</title>
</head>
<body>
	<jsp:include page="topbar.jsp"></jsp:include>
	<h2 align=center>图书借阅窗口</h2>
	<div align="center" style="margin-top:10px">
		<form action="js.jsp" method="post">
			<table>
				<CAPTION>图书借阅</CAPTION>
				<tr>
					<th width="30%">书号：</th>
					<td width="70%"><input name="id" type="text">(可通过扫描图书二维码输入)</td>
				</tr>
				<tr>
					<th>读者：</th>
					<td><input name="dzname" type="text">(可通过扫描借书证二维码输入)</td>
				</tr>
				<tr>
					<th colspan="2"><input type="submit" name="submit" value="借阅">
						<input type="reset" value="重置"></th>
				</tr>
			</table>
		</form>
	</div>
	<jsp:include page="../bottom.jsp"></jsp:include>
</body>
</html>