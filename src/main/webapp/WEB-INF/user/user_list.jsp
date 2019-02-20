<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 要使用jstl 导入标签库 -->
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>用户列表</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="${pageContext.request.contextPath}/style/adminStyle.css"
	rel="stylesheet" type="text/css" />
<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.js"></script>
<script src="${pageContext.request.contextPath}/js/public.js"></script>
<script src="${pageContext.request.contextPath}/js/CHK.js"></script>
<script>
	$(function() {
		$("#del").change(function() {
			if ($("#del").prop("checked")) {
				//遍历全选
				$("input[type=checkbox][id=id]").each(function() {
					$(this).prop("checked", true);

				})
			} else {
				$("input[type=checkbox][id=id]").each(function() {
					$(this).prop("checked", false);
				})
			}
		})
		$("#b1").click(function() {

			alert($("#del").porp("checked"));
			alert($("#del").attr("checked"));
		})
	})
</script>

</head>
<body>
	<div class="wrap">
		<div class="page-title">
			<span class="modular fl"><i class="user"></i><em>用户列表</em></span> <span
				class="modular fr"><a href="initdep.do" class="pt-link-btn">+添加新用户</a></span>
		</div>
		<div class="operate">
			<form id="myform" name="myform" action="" method="post">
				<input type="text" class="textBox length-long" name="id"
					placeholder="请输入用户ID" /> <input type="submit" value="查询"
					class="tdBtn" />
			</form>
		</div>
		<form name="del" action="delUsers.do" method="post"
			onsubmit="return chkids()">
			<table class="list-style Interlaced">
				<tr>
					<th>ID</th>
					<th>登录名</th>
					<th>真实姓名</th>
					<th>性别</th>
					<th>出生年月</th>
					<th>部门名称</th>
					<th>email</th>
					<th>是否可用</th>
					<th colspan="2">操作</th>

				</tr>
				<c:forEach items="${USERS}" var="user">
					<tr>

						<td><input type="checkbox" name="id" id="id"
							value="${user.id}" /> <span class="middle">${user.id}</span></td>
						<td class="center">${user.loginname}</td>
						<td class="center">${user.realname}</td>
						<td class="center">${user.sex}</td>
						<td class="center">${user.birthday}</td>
						<td class="center">${user.dep}</td>
						<td class="center">${user.email}</td>
						<td class="center"><c:if test="${user.enable==1}">
								<img src="${pageContext.request.contextPath}/images/yes.gif" />
							</c:if> <c:if test="${user.enable!=1}">
								<img src="${pageContext.request.contextPath}/images/no.gif" />
							</c:if></td>

						<td class="center"><a href="toupdatepage.do?id=${user.id}"><img
								src="${pageContext.request.contextPath}/images/icon_edit.gif" /></a>
						</td>
						<td class="center"><a onclick="return confirm('确定删除吗？ ')"
							href="updeleteuser.do?id=${user.id}"><img
								src="${pageContext.request.contextPath}/images/icon_drop.gif" /></a>

						</td>
					</tr>

				</c:forEach>

			</table>
			<!-- BatchOperation -->
			<div style="overflow: hidden;">
				<!-- Operation -->
				<div class="BatchOperation fl">
					<input type="checkbox" id="del" onchange=""/> <label
						for="del" class="btnStyle middle">全选</label> <input type="submit"
						value="批量删除" class="btnStyle" />
				</div>

				<!-- turn page -->
				<div class="turnPage center fr">
					<a href="userlist.do?page=1">第一页</a> <a
						href="userlist.do?page=${PAGE>1?PAGE-1:1} ">上一页</a> <a
						href="userlist.do?page=${PAGE==PAGECOUNT?PAGE:PAGE+1} ">下一页</a> <a
						href="userlist.do?page=${PAGECOUNT} ">最后一页</a>
					第${PAGE}页/共${PAGECOUNT}页,共${COUNT}条信息
				</div>
			</div>
		</form>
	</div>

</body>
</html>