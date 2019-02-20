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
				<span class="am-icon-code"></span> 查看文章 <a
					href="${pageContext.request.contextPath }/articlelist.do?page=1"
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
						action="updateChannel.do" method="post">
						<div class="am-form-group">
							<label for="user-name" class="am-u-sm-3 am-form-label">标题
								/ Title</label>
							<div class="am-u-sm-9">
								<input type="text" id="author" name="author"
									value="${AB.title }" style="float: left;" readonly="readonly"> <small>
								</small>
							</div>
						</div>
						<div class="am-form-group">
							<label for="user-name" class="am-u-sm-3 am-form-label">所属栏目
								/ channel</label>
							<div class="am-u-sm-9">
							<input type="text" id="upch" name="upch"
									value="${AB.channel }" style="float: left;" readonly="readonly"> <small>
								</small>
							</div>
						</div>
						<div class="am-form-group">
							<label for="user-name" class="am-u-sm-3 am-form-label">作者 
								/ author</label>
							<div class="am-u-sm-9">
							<input type="text" id="upch" name="upch"
									value="${AB.author }" style="float: left;" readonly="readonly"> <small>
								</small>
							</div>
						</div>
						<div class="am-form-group">
							<label for="user-name" class="am-u-sm-3 am-form-label">内容
								/ content</label>
							<div class="am-u-sm-9">
								<textarea type="text" name="lev" id="lev" value="" style="height: 350px;" readonly="readonly">${AB.content }</textarea>
							</div>
						</div>
						<div class="am-form-group">
							<label for="user-name" class="am-u-sm-3 am-form-label">是否推荐
								/ isremod</label>
							<div class="am-u-sm-9">
								<c:if test="${AB.isremod==1 }">是</c:if>
								<c:if test="${AB.isremod!=1 }">否</c:if>
							</div>
						</div>
						<div class="am-form-group">
							<label for="user-name" class="am-u-sm-3 am-form-label">是否热点
								/ ishot</label>
							<div class="am-u-sm-9">
								<c:if test="${AB.ishot==1 }">是</c:if>
								<c:if test="${AB.ishot!=1 }">否</c:if>
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