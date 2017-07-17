<%@ page language="java" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
		<head>
			<meta content="Content-Type" content="text/html" charset="utf-8">
		<link href="css/contentstyle.css" rel="stylesheet" type="text/css">
		</head>



<table width="100%">
<tr>
<td width="35%" >
	<div align="left">
		<span class="STYLE22">共有<strong>
				${pageInfo.recordCount}</strong> 条记录，当前第<strong>
				${pageInfo.currentPage}</strong> 页，共 <strong>${pageInfo.pageCount}</strong> 页</span>
	</div>
</td>
<td width="65%">
	<table width="150" border="0" align="right" cellpadding="0"
		cellspacing="0">
		<tr>

			<td width="49">
				<div align="center">

					<form method="post" action="${pageInfo.url}">
						<c:forEach items="${pageInfo.param}" var="p">
							<input type="hidden" name="${p.key}" value="${p.value}" />
						</c:forEach>
						<input type="hidden" name="currentPage" value="1">
						<input type="submit"
							<c:if test="${pageInfo.currentPage==1}">disabled</c:if>
							value="首页" />
					</form>
				</div>
			</td>
			<td width="49">
				<div align="center">
					<form method="post" action="${pageInfo.url}">
						<c:forEach items="${pageInfo.param}" var="p">
							<input type="hidden" name="${p.key}" value="${p.value}" />
						</c:forEach>
						<input type="hidden" name="currentPage"
							value="${pageInfo.currentPage-1}">
						<input <c:if test="${pageInfo.currentPage-1<1}">disabled</c:if>
							type="submit" value="上一页" />
					</form>
				</div>
			</td>
			<td width="49">
				<div align="center">
					<form method="post" action="${pageInfo.url}">
						<c:forEach items="${pageInfo.param}" var="p">
							<input type="hidden" name="${p.key}" value="${p.value}" />
						</c:forEach>
						<input type="hidden" name="currentPage"
							value="${pageInfo.currentPage+1}">
						<input
							<c:if test="${pageInfo.currentPage+1>pageInfo.pageCount}">disabled</c:if>
							type="submit" value="下一页" width="40" height="15" />
					</form>
				</div>
			</td>
			<td width="49">
				<div align="center">
					<form method="post" action="${pageInfo.url}">
						<c:forEach items="${pageInfo.param}" var="p">
							<input type="hidden" name="${p.key}" value="${p.value}" />
						</c:forEach>
						<input type="hidden" name="currentPage"
							value="${pageInfo.pageCount}">
						<input type="submit" value="末页"
							<c:if test="${pageInfo.currentPage==pageInfo.pageCount}">disabled</c:if> />
					</form>
				</div>
			</td>
			<!--  
			<td width="37" class="STYLE22">
				<div align="center">
					转到
				</div>
			</td>
			<td width="22">
				<div align="center">
					<input type="text" name="textfield" id="textfield"
						style="width: 20px; height: 12px; font-size: 12px; border: solid 1px #7aaebd;" />
				</div>
			</td>
			<td width="22" class="STYLE22">
				<div align="center">
					页
				</div>
			</td>
			<td width="35">
				<img src="../images/main_62.gif" width="26" height="15" />
			</td>
			
			-->
		</tr>
	</table>

</td>
</tr>
</table>

</html>