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
			<span class="modular fl"><i class="user"></i><em>公告列表</em></span> <span
				class="modular fr"><a href="column/add_column.jsp"
				class="pt-link-btn">+添加新公告</a></span>
		</div>
		<div class="operate">
			<form id="myform" name="myform" action="" method="post"
				onsubmit="return chk1()">
				<input type="text" class="textBox length-long" name="id"
					placeholder="请输入用户ID" /> <input type="submit" value="查询"
					class="tdBtn" />
			</form>
		</div>
		<form name="update" action="delcolumns.do" method="post" onsubmit="return chkids()">
			<table class="list-style Interlaced">
				<tr>
					<th>ID</th>
					<th>标题</th>
					<th>公告时间</th>
					<th>公告人</th>
					<th>创建人</th>
					<th>创建时间</th>
					<th>修改人</th>
					<th>修改时间</th>
					<th colspan="2">操作</th>

				</tr>
				<c:forEach items="${COLS}" var="cols">
					<tr>
						<td><input type="checkbox" name="id" id="id"
							value="${cols.id}" /> <span class="middle">${cols.id}</span></td>
						<td class="center">${cols.title}</td>
						<td class="center">${cols.ctime}</td>
						<td class="center">${cols.cman}</td>
						<td class="center">${cols.creator}</td>
						<td class="center">${cols.createTime}</td>
						<td class="center">${cols.updator}</td>
						<td class="center">${cols.upDateTime}</td>
						
						
						<td class="center">
							<a href="ColumnrById.do?id=${cols.id}">
								<img src="${pageContext.request.contextPath}/images/icon_edit.gif" />
							</a>
						</td>
						
						<td>
							<a onclick="return confirm('确定删除吗？ ')" href="delcolumnbyid.do?id=${cols.id}">
								<img src="${pageContext.request.contextPath}/images/icon_drop.gif" />
							</a>
						</td>
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
					<a href="columnlist.do?page=1">第一页</a> <a
						href="columnlist.do?page=${PAGE>1?PAGE-1:1} ">上一页</a> <a
						href="columnlist.do?page=${PAGE==PAGECOUNT?PAGE:PAGE+1} ">下一页</a> <a
						href="columnlist.do?page=${PAGECOUNT} ">最后一页</a>
					第${PAGE}页/共${PAGECOUNT}页,共${COUNT}条信息
				</div>
			</div>
		</form>
	</div>

</body>
</html>