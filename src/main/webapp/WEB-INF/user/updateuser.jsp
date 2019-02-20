<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>用户修改</title>
<meta name="description" content="这是一个 index 页面">
<meta name="keywords" content="index">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="renderer" content="webkit">
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="icon" type="image/png"
	href="${pageContext.request.contextPath}/assets/i/favicon.png">
<link rel="apple-touch-icon-precomposed"
	href="${pageContext.request.contextPath}/assets/i/app-icon72x72@2x.png">
<meta name="apple-mobile-web-app-title" content="Amaze UI" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/amazeui.min.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/admin.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/app.css">
<script src="${pageContext.request.contextPath}/js/CHK.js"></script>
</head>

<body data-type="generalComponents">


	<div class="tpl-portlet-components">
		<div class="portlet-title">
			<div class="caption font-green bold">
				<span class="am-icon-code"></span> 用户修改 <a href="userlist.do?page=1"
					style="margin-left: 650px">返回</a>
			</div>
			<div class="tpl-portlet-input tpl-fz-ml">
				<div class="portlet-input input-small input-inline"></div>
			</div>


		</div>
		<div class="tpl-block ">

			<div class="am-g tpl-amazeui-form">

				<div class="am-u-sm-12 am-u-md-9">
					<form id="myform" name="myform" class="am-form am-form-horizontal"
						action="updateuser.do" method="post" onsubmit="return chkAll()">
						<input type="hidden" value="${USERBYID.id}" name="id">
						<div class="am-form-group">
							<label for="user-name" class="am-u-sm-3 am-form-label">登录名
								/ Name</label>
							<div class="am-u-sm-9">
								<input type="text" name="loginname"
									value="${USERBYID.loginname}" readonly="readonly"
									id="loginname"> <small id="loginnamemsg">用户登录名长度不得小于5位</small>
							</div>
						</div>
						<div class="am-form-group">
							<label for="user-name" class="am-u-sm-3 am-form-label">密码
								/ Password</label>
							<div class="am-u-sm-9">
								<input type="password" id="password" name="password" onblur="chkPwd()"
									value="${USERBYID.password}"> <small id="passwordmsg">密码要求不得小于4位</small>
							</div>
						</div>
						<div class="am-form-group">
							<label for="user-name" class="am-u-sm-3 am-form-label">密码
								/ Password</label>
							<div class="am-u-sm-9">
								<input type="password" id="chkpwd" name="chkpwd" onblur="chkpwds()"
									value="${USERBYID.password}"> <small id="passwordmsg2">两次密码必须一致</small>
							</div>
						</div>

						<div class="am-form-group">
							<label for="user-name" class="am-u-sm-3 am-form-label">真实姓名
								/ Realname</label>
							<div class="am-u-sm-9">
								<input type="text" id="realname" name="realname"
									value="${USERBYID.realname}"> <small></small>
							</div>
						</div>
						<div class="am-form-group">
							<label for="user-name" class="am-u-sm-3 am-form-label">部门/Dep</label>
							<div class="am-u-sm-9">

								<select name="dep" style="width: 300px" id="dep">
									<c:forEach items="${DEPS}" var="dep">
										<c:if test="${dep.id==USERBYID.dep}">
											<option  value="${dep.id}" selected="selected">${dep.deptname}</option>
										</c:if>
										<c:if test="${dep.id!=USERBYID.dep}">
											<option value="${dep.id}">${dep.deptname}</option>
										</c:if>
									</c:forEach>
								</select> <small></small>
							</div>
						</div>
						<div class="am-form-group">
							<label for="user-name" class="am-u-sm-3 am-form-label">性别
								/ gender</label>
							<div class="am-u-sm-9">
								<c:if test="${USERBYID.sex==null}">
									<input type="radio" name="sex" checked="checked" value="男">男&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
																&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input
										type="radio" name="sex" value="女">女 
														</c:if>
								<c:if test="${USERBYID.sex=='男'}">
									<input type="radio" name="sex" checked="checked" value="男">男&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
																&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input
										type="radio" name="sex" value="女">女 
																		</c:if>
								<c:if test="${USERBYID.sex=='女'}">
									<input type="radio" name="sex" checked="checked" value="男">男&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
																&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input
										type="radio" name="sex" value="女">女 
																		</c:if>
								<small></small>
							</div>

						</div>
						<div class="am-form-group">
							<label for="user-name" class="am-u-sm-3 am-form-label">是否可用
								/ enable</label>
							<div class="am-u-sm-9">
								<c:if test="${USERBYID.enable==1}">
									<input type="radio" name="enable" checked="checked" value="1">是&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
																&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input
										type="radio" name="enable" value="0">否 
														</c:if>
								<c:if test="${USERBYID.enable==0}">
									<input type="radio" name="enable" checked="checked" value="1">是&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
																&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input
										type="radio" name="enable" value="0">否
																		</c:if>

								<small></small>
							</div>

						</div>
						<div class="am-form-group">
							<label for="user-name" class="am-u-sm-3 am-form-label">出生年月/Birthday</label>
							<div class="am-u-sm-9">
								<input type="text" id="birthday" name="birthday"
									class="am-form-field tpl-form-no-bg" placeholder=""
									value="${USERBYID.birthday}" data-am-datepicker="" readonly />
								<small></small>
							</div>
						</div>

						<div class="am-form-group">
							<label for="user-email" class="am-u-sm-3 am-form-label">电子邮件
								/ Email</label>
							<div class="am-u-sm-9">
								<input type="text" id="email" name="email"
									value="${ USERBYID.email}" onblur="emailChk()"> <small id="emailmsg">邮箱你懂得...</small>
							</div>
						</div>

						<div class="am-form-group">
							<div class="am-u-sm-9 am-u-sm-push-3">
								<input class="am-btn am-btn-primary" type="submit" value="修改" />
								<input class="am-btn am-btn-primary" type="reset" value="重置" />
								<!-- <button type="button" class="am-btn am-btn-primary">提交</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <button type="button" class="am-btn am-btn-primary">重置</button> -->
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>

	</div>

	</div>

	</div>


	<script
		src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/js/amazeui.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/app.js"></script>
</body>

</html>