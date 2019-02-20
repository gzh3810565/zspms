<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<title>后台登录</title>
<!-- Custom Theme files -->
<link href="logincss/css/style.css" rel="stylesheet" type="text/css"
	media="all" />
<!-- Custom Theme files -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="后台登录" />
<!--Google Fonts-->
<!--<link href='//fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
-->
<!--Google Fonts-->
<style type="text/css">
input::-webkit-input-placeholder {
	color: #c4c4c4;
}
</style>

<script type="text/javascript" src="/assest/js/jquery.min.js"></script>

</head>
<body>
	<!--header start here-->

	<span
		style="color: #fff; float: left; position: absolute; top: 333px; left: 500px;">${errmsg}</span>
	<div class="login-form">
		<div style="margin-bottom: 10px" align="center">
		
				<img src="logincss/images/logo.png" alt="" />
		</div>
		<h1>每天 学习 一小时</h1>
	<div class="login-top">
		<form action="login.do" method="post" onsubmit="return chkAll()">
			<div class="login-ic">
				<i></i> <input type="text" id="login"
					value="${cookie.username.value }" name="loginname"
					placeholder="请输入用户名" />
				<div class="clear"></div>
			</div>
			<div class="login-ic">
				<i class="icon"></i> <input type="password"
					value="${cookie.pwd.value }" name="password" placeholder="请输入密码" />
				<div class="clear"></div>
			</div>
			<div class="login-ic">
				<i class="icon"></i> <input type="text" value="" name="chkcode"
					placeholder="请输入验证码" />
				<div class="clear"></div>
				<img src="kaptcha.jpg"
					style="position: absolute; left: 69%; top: 66%">
			</div>


			<div class="login-ic">
				<input type="checkbox" value="1" name="remPwd" id="pwd"
					style="margin-left: 40px">是否记住密码
			</div>

			<div class="log-bwn">
				<input type="submit" value="Login">
			</div>
		</form>
	</div>
	<p class="copy">© 2018 中仕学社</p>
	</div>

	<!--header start here-->
</body>
</html>