<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<title>无标题文档</title>
	<meta content="Content-Type" content="text/html" charset="utf-8">
<link href="css/css.css" rel="stylesheet" type="text/css">
</head>

<body>
	<table width="98%" align="center" cellpadding="0" cellspacing="0">
		<tr>
			<td align="center"><img src="images/top-pic.jpg" width="993"
				height="133"></td>
		</tr>
	</table>
	<table width="993" align="center" cellpadding="0" cellspacing="0">
		<tr>
			<td><table width="100%" align="center" cellpadding="0"
					cellspacing="0">
					<tr>
						<td height="21" background="images/table/list-top.jpg"
							class="table-left-right-gray">&nbsp;</td>
					</tr>
					<tr>
						<td><table width="100%" border="1" height="400"
								align="center" cellpadding="2" cellspacing="0"
								bordercolorlight="#D4D4D4" bordercolordark="#FFFFFF"
								bgcolor="#FFFFFF" style="word-break :break-all;">
								<tr>
									<td height="200" colspan="5" bgcolor="#F9F9F9"><div
											align="center">
											<img src="images/ico/error.gif" width="50" height="50"
												align="absmiddle"> <span class="txt-gray">HTTP
												错误 401.3 - 未经授权：访问由于 ACL 对所请求资源的设置被拒绝。 <br> ${hello }<s:fielderror></s:fielderror>
											</span><br>
										</div></td>
								</tr>
								<tr bgcolor="#F9F9F9">
									<td height="22" colspan="5" bgcolor="#E5EEFF" class="txt-gray">
										<table align="right" cellpadding="0" cellspacing="0">
											<tr>
												<td><img src="images/button/an-left.jpg" width="18"
													height="21"></td>
												<td width="40" background="images/button/an-bg.jpg"
													class="txt-blue"><div align="center">
														<a onClick="window.close();" class="txt-blue"
															style="cursor:hand">关闭</a>
													</div></td>
												<td><img src="images/button/an-right.jpg" width="4"
													height="21"></td>
											</tr>
										</table>
									</td>
								</tr>

							</table></td>
					</tr>
				</table></td>
		</tr>
	</table>
	<table width="993" cellspacing="0" cellpadding="0" align="center">
		<tr>
			<td height="40" background="images/sub-bottom-pic.jpg"><div
					align="right">
					<span class="txt-gray">中国移动通信集团新疆有限公司版权所有 （ Copyright (C)
						2004-2005 ）</span>
				</div></td>
		</tr>
	</table>
</body>
</html>
