<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>VK网上图书馆用户注册</title>
<style type="text/css">
body {
	margin-top: 0px;
	margin-left: 0px;;
	font-family: 幼圆;
	background: url(images/bj.jpg) no-repeat;
	background-size: 100% 100%;
	background-attachment: fixed;
}

#content {
	width: 1350px;
	high: 570px;
}

#login {
	background-color: #FEF3C9;
	width: 350px;
	height: 500px;
	float: right;
	margin-top: 30px;
	border-radius: 2px;
	border-bottom-left-radius: 10px;
	border-bottom-right-radius: 10px;
	border-top-left-radius: 10px;
	border-top-right-radius: 10px;
}

#con a:link {
	text-decoration: none;
	color: #000;
}

#con a:visited {
	text-decoration: none;
	color: #000;
	border-width: 0px;
}

#button {
	background-color: #EECC22;
	font-size: 20px;
	color: #FEF3C9;
	width: 160px;
	height: 60px;
	border: 1px solid #FF6;
	border-radius: 5px;
}

.input {
	border-color: #999;
	border-width: 0px;
	width: 200px;
	height: 36px;
}

.div_foot {
	position: absolute;
	height: 50px;
	text-align: center;
	line-height: 50px;
	width: 100%;
	margin-top: 590px;
	color: #FFFFFF;
}
</style>
<script language="javascript">
	function checkForm() {
		var error = document.getElementById("error");

		var uname = document.getElementById("uname").value;
		if (uname.length<4 || uname.lenght>20) {
			alert("用户名长度错误")
			return false;
		}

		var upass1 = document.getElementById("upass1").value;
		var upass2 = document.getElementById("upass2").value;
		if (upass1 != upass2) {
			alert("两次密码不一致")
			return false;
		}

		var ok = document.getElementById("ok").value;
		alert(ok);
	}
</script>
</head>

<body>
	<h1 style="color: #FFFFFF;" align="center">欢迎来到VK网上图书馆注册界面</h1>
	<div id="content">
		<div
			style="margin-top: 250px; margin-left: 350px; float: left; z-index: 1111;"></div>
		<div style="width: 50px; float: right;"></div>
		<div id="login" style="margin-right: 100px;">
			<div style="height: 23px;"></div>
			<div style="width: 350px; height: 27px; font-size: larger;">
				<center>用户注册</center>
			</div>
			<form method="post" action="testreg.jsp"
				onSubmit="return checkForm();">
				<center>
					<table border="0px">
						<tr>
							<td height="69";>用户名:</td>
							<td><input class="input" type="text" required
								placeholder="用户名4-20个字符" id="uname" name="uname" /></td>
						</tr>
						<tr>
							<td height="81";>密&nbsp;&nbsp; 码:</td>
							<td><input class="input" id="upass1" type="password"
								required placeholder="请输入密码" name="upass1" /></td>
						</tr>
						<tr>
							<td height="81";>确认密码:</td>
							<td><input class="input" id="upass2" type="password"
								required placeholder="请再次输入密码" /></td>
						</tr>
						<tr>
							<td height="44"><a href="login.jsp"
								style="text-decoration: none;">已有账户?请登陆</a></td>
						</tr>
						<tr>
							<td colspan="3" style="height: 40px;"><center>
									<input type="checkbox" required /><a
										style="text-decoration: none;" href="#">我接受《服务条款协议》</a>
								</center></td>
						</tr>
						<tr>
							<td></td>
							<td><input type="hidden" id="ok" value="注册成功"></td>
						</tr>
						<tr>
							<td colspan="2"><center>
									<input type="submit" name="submit" id="button" value="注册" />
								</center></td>
						</tr>
					</table>
				</center>
		</div>
	</div>
</body>
</html>
