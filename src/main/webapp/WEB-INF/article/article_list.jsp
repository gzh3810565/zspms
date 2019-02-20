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
<script src="${pageContext.request.contextPath}/js/jquery.js"></script>
<script src="${pageContext.request.contextPath}/js/public.js"></script>
<script src="${pageContext.request.contextPath}/js/CHK.js"></script>
<script>
	$(function() {
		$("#del").change(function() {
			if ($("#del").prop("checked")) {
				$("input[type=checkbox][id=id]").each(function() {
					$(this).prop("checked", true);

				})
			} else {
				$("input[type=checkbox][id=id]").each(function() {
					$(this).prop("checked", false);
				})
			}
		})
	})
	$("#b1").click(function(){
		
		alert($("#del").porp("checked"));
		alert($("#del").attr("checked"));
		
		
	})
	
	
</script>
</head>
<body>
	<div class="wrap">
		<div class="page-title">
			<span class="modular fl"><i class="user"></i><em>文章列表</em></span> <span
				class="modular fr"><a href="touparticle.do"
				class="pt-link-btn">+添加新文章</a></span>
		</div>
		<div class="operate">
			<form id="myform" name="myform" action="" method="post"
				onsubmit="return chk1()">
				<input type="text" class="textBox length-long" name="id"
					placeholder="请输入用户ID" /> <input type="submit" value="查询"
					class="tdBtn" />
			</form>
		</div>
		<form name="update" action="delarticles.do" method="post" onsubmit="return chkids()">
			<table class="list-style Interlaced">
				<tr>
					<th>ID</th>
					<th>标题</th>
					<th>发表时间</th>
					<th>发表人</th>
					<th>所属栏目</th>
					<th>是否热点</th>
					<th>是否推荐</th>
					<th colspan="2">操作</th>

				</tr>
				<c:forEach items="${AB}" var="ab">
					<tr>
						<td><input type="checkbox" name="id" id="id" value="${ab.id}" />
							<span class="middle">${ab.id}</span></td>
							
							<!-- 标题超链接 -->
						<td class="center"><a style="color: blue; text-decoration: underline;" href="queryArticlenById.do?id=${ab.id }">${ab.title}</a></td>
						
						
						<td class="center">${ab.crtime}</td>
						<td class="center">${ab.author}</td>
						<td class="center">${ab.channel}</td>
						<td class="center"><c:if test="${ab.isremod==1}">
								<img src="${pageContext.request.contextPath}/images/yes.gif" />
							</c:if> <c:if test="${ab.isremod!=1}">
								<img src="${pageContext.request.contextPath}/images/no.gif" />
							</c:if></td>
						<td class="center"><c:if test="${ab.ishot==1}">
								<img src="${pageContext.request.contextPath}/images/yes.gif" />
							</c:if> <c:if test="${ab.ishot!=1}">
								<img src="${pageContext.request.contextPath}/images/no.gif" />
							</c:if></td>
							
							
						
						<td class="center"><a href="articleById.do?id=${ab.id}">
								<img
								src="${pageContext.request.contextPath}/images/icon_edit.gif" />
						</a></td>

						<td><a onclick="return confirm('确定删除吗？ ')"
							href="delArticle.do?id=${ab.id}"> <img
								src="${pageContext.request.contextPath}/images/icon_drop.gif" />
						</a></td>
					</tr>

				</c:forEach>

			</table>
			<!-- BatchOperation -->
			<div style="overflow: hidden;">
				<!-- Operation -->
				<div class="BatchOperation fl">
					<input type="checkbox" id="del" onchange="allcheck()" /> <label
						for="del" class="btnStyle middle">全选</label> <input type="submit"
						value="批量删除" class="btnStyle" />
				</div>

				<!-- turn page -->
				<div class="turnPage center fr">
					<a href="articlelist.do?page=1">第一页</a> <a
						href="articlelist.do?page=${PAGE>1?PAGE-1:1} ">上一页</a> <a
						href="articlelist.do?page=${PAGE==PAGECOUNT?PAGE:PAGE+1} ">下一页</a>
					<a href="articlelist.do?page=${PAGECOUNT} ">最后一页</a>
					第${PAGE}页/共${PAGECOUNT}页,共${COUNT}条信息
				</div>
			</div>
		</form>
	</div>

</body>
</html>