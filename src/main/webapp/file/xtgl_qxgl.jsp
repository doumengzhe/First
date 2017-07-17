<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head> <meta content="Content-Type" content="text/html" charset="utf-8">
<base href="<%=basePath%>">
<title>无标题文档</title>
<link href="css/css.css" rel="stylesheet" type="text/css">
</head>

<body>
	<table width="98%" align="center" cellpadding="0" cellspacing="0">
		<tr>
			<td height="41" background="images/table/right-top-bg.jpg"><img
				src="images/ico/home-ico.jpg" width="4" height="10" hspace="10"
				align="middle"><span class="txt-blue">系统管理&gt;&gt;权限管理</span></td>
		</tr>
	</table>
	<table width="98%" align="center" cellpadding="0" cellspacing="0">
		<tr>
			<td><table width="100%" align="center" cellpadding="0"
					cellspacing="0">
					<tr>
						<td height="21" background="images/table/list-top.jpg"
							class="table-left-right-gray">&nbsp;</td>
					</tr>
					<tr>
						<td><table width="100%" border="1" align="center"
								cellpadding="2" cellspacing="0" bordercolorlight="#D4D4D4"
								bordercolordark="#FFFFFF" bgcolor="#FFFFFF"
								style="word-break :break-all;">
								<tr>
									<td width="15%" height="24" bgcolor="#FBE9B7"><div
											align="center">
											<span class="txt-blue">角色</span>
										</div></td>
									<td width="21%" bgcolor="#FBE9B7"><div align="center">
											<span class="txt-blue">起草权限</span>
										</div></td>
									<td width="28%" bgcolor="#FBE9B7"><div align="center">
											<span class="txt-blue">统计查询</span>
										</div></td>
									<td width="21%" bgcolor="#FBE9B7"><div align="center">
											<span class="txt-blue">系统管理</span>
										</div></td>
								</tr>
								<c:forEach items="${list }" var="role" varStatus="state">
									<tr bgcolor="#FFFFFF">
										<td height="22"><div align="center" class="txt-gray">${ role.getRolename()}</div></td>
										<td><div align="center">
												<c:if test="${ role.getRights().contains('qckh')}">√</c:if>
											</div></td>
										<td><div align="center">
												<c:if test="${ role.getRights().contains('tjcx')}">√</c:if>
											</div></td>
										<td><div align="center">
												<c:if test="${ role.getRights().contains('xtgl')}">√</c:if>
											</div></td>
									</tr>
								</c:forEach>

								<tr bgcolor="#F9F9F9">
									<td height="24" colspan="4"><table align="right"
											cellpadding="0" cellspacing="0">
											<tr>
												<td><img src="images/button/an-left.jpg" width="18"
													height="21"></td>
												<td width="60" background="images/button/an-bg.jpg"
													class="txt-blue"><div align="center" class="txt-blue">
														<a href="xtgl_qxUpdate.action" class="txt-blue">修改设置</a>
													</div></td>
												<td><img src="images/button/an-right.jpg" width="4"
													height="21"></td>
											</tr>
										</table></td>
								</tr>
							</table></td>
					</tr>
				</table></td>
		</tr>
	</table>
</body>
</html>

