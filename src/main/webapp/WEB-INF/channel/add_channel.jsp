<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 要使用jstl 导入标签库 -->
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="这是一个 index 页面">
<meta name="keywords" content="index">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="renderer" content="webkit">
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="icon" type="image/png"
	href="${pageContext.request.contextPath }/assets/i/favicon.png">
<link rel="apple-touch-icon-precomposed"
	href="${pageContext.request.contextPath }/assets/i/app-icon72x72@2x.png">
<meta name="apple-mobile-web-app-title" content="Amaze UI" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/assets/css/amazeui.min.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/assets/css/admin.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/assets/css/app.css">
<script src="${pageContext.request.contextPath }/js/jquery.js"></script>


</head>

<body data-type="generalComponents">

	<header> </header>
	<div class="tpl-portlet-components">
		<div class="portlet-title">
			<div class="caption font-green bold">
				<span class="am-icon-code"></span> 栏目新增 <a
					href="${pageContext.request.contextPath }/channellist.do?page=1"
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
						action="addchannel.do" method="post">
						<div class="am-form-group">
							<label for="user-name" class="am-u-sm-3 am-form-label">栏目名
								/ Cname</label>
							<div class="am-u-sm-9">
								<input type="text" id="cname" name="cname"
									placeholder="栏目名 / Cname" style="float: left;"> <small>
									<span id="loginnamemsg" style="float: r;"> </span>
								</small>
							</div>
						</div>
						<div class="am-form-group">
							<label for="user-name" class="am-u-sm-3 am-form-label">上级栏目
								/ uplev</label>
							<div class="am-u-sm-9">
								<select name="uplev" style="width: 300px">
									<c:forEach items="${UID}" var="uid">
									<c:if test="${uid.yz==0 }">
										<option value="${uid.uid}">${uid.uname}</option>
										</c:if>
									</c:forEach>
								</select>
							</div>
						</div>

						<div class="am-form-group">
							<label for="user-name" class="am-u-sm-3 am-form-label">级别
								/ lev</label>
							<div class="am-u-sm-9">
								<input type="text" name="lev" id="lev" placeholder="级别  / lev">
								<small></small>
							</div>
						</div>
						<div class="am-form-group">
							<label for="user-name" class="am-u-sm-3 am-form-label">是否叶子
								/ isleaf</label>
							<div class="am-u-sm-9">
								<input type="radio" name="isleaf" checked="checked" value="1">是&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="radio"
									name="isleaf" value="0">否<small></small>
							</div>
						</div>
						<div class="am-form-group">
							<label for="user-name" class="am-u-sm-3 am-form-label">顺序
								/ sort</label>
							<div class="am-u-sm-9">
								<input type="text" name="sort" id="sort"
									placeholder="顺序  / sort"> <small></small>
							</div>
						</div>

						<div class="am-form-group">
							<div class="am-u-sm-9 am-u-sm-push-3">
								<input class="am-btn am-btn-primary" type="submit" value="提交" />
								<input class="am-btn am-btn-primary" type="reset" value="重置" />
								<!-- <button type="button" class="am-btn am-btn-primary">提交</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <button type="button" class="am-btn am-btn-primary">重置</button> -->
							</div>
						</div>
					</form>
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