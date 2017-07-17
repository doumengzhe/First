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
<base href="<%=basePath%>" />
<title>无标题文档</title>
<link href="css/css.css" rel="stylesheet" type="text/css">
</head>

<body>
	<table width="98%" align="center" cellpadding="0" cellspacing="0">
		<tr>
			<td height="41" background="images/table/right-top-bg.jpg"><img
				src="images/ico/home-ico.jpg" width="4" height="10" hspace="10"
				align="middle"><span class="txt-blue">系统查询</span></td>
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
									<td width="50%" bgcolor="#FBE9B7" align="center">
										<div class="txt-blue">考核标题</div>
									</td>
									<td width="50%" bgcolor="#FBE9B7" align="center">
										<div class="txt-blue">分类统计</div>
									</td>
								</tr>

								<c:forEach items="${list }" var="map" varStatus="state">
									<tr height="22" bgcolor="#FFFFFF">
										<td class="txt-gray" align="center">
											<div class="txt-gray">${map.get('DOCNAME') }</div>
										</td>
										<td class="txt-gray" align="center"><a
											href="tjcx_getResult.action?docid=${map.get('DOCID') }&khLevel=SUPERIORS" target="_blank"> <img
												src="images/ico/sj-xj.gif" alt="上级评审结果" width="19"
												height="15" hspace="4" border="0" align="middle"></a> <a
											href="tjcx_getResult?docid=${map.get('DOCID') }&khLevel=PEER" target="_blank"><img
												src="images/ico/tj.gif" alt="同级评审结果" width="19" height="15"
												hspace="4" border="0" align="middle"></a> <a
											href="tjcx_getResult?docid=${map.get('DOCID') }&khLevel=INFERIOR" target="_blank"><img
												src="images/ico/rep1.gif" alt="下级评审结果" width="15"
												height="15" hspace="4" border="0" align="middle"></a> <a
											href="tjcx_getFina.action?docid=${map.get('DOCID') }" target="_blank"><img
												src="images/ico/team2.gif" alt="最终统计结果" width="20"
												height="20" hspace="4" border="0" align="middle"></a></td>
									</tr>
								</c:forEach>
							</table></td>
					</tr>
				</table></td>
		</tr>
	</table>
</body>
</html>
