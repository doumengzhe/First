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
<title>${list.get(0).get('DOCNAME') }考核结果</title>
<link href="css/css.css" rel="stylesheet" type="text/css">
</head>

<body>
	<form action="export.action" method="post">
		<table width="98%" align="center" cellpadding="0" cellspacing="0">
			<tr>
				<td align="center"><img src="images/top-pic.jpg" width="993"
					height="133"></td>
			</tr>
		</table>
		<table width="993" align="center" cellpadding="0" cellspacing="0">
			<tr>
				<td height="41" background="images/table/right-top-bg.jpg"
					class="txt-blue"><img src="images/ico/home-ico.jpg" width="4"
					height="10" hspace="10" align="middle">${list.get(0).get('DOCNAME') }<input
					type="hidden" name="docname" value="${list.get(0).get('DOCNAME') }" /><input
					type="hidden" name="khLevel" value="FINA" /></td>
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
							<td><table width="100%" border="1" align="center"
									cellpadding="2" cellspacing="0" bordercolorlight="#D4D4D4"
									bordercolordark="#FFFFFF" bgcolor="#FFFFFF"
									style="word-break :break-all;">
									<tr bgcolor="#FBE9B7" class="txt-blue" height="22">
										<td width="20%"><div align="center">考核人</div> <input
											type="hidden" name="headers" value="考核人" /></td>
										<td width="20%"><div align="center">上级评分</div> <input
											type="hidden" name="headers" value="上级评分" /></td>
										<td width="20%"><div align="center">同级评分</div> <input
											type="hidden" name="headers" value="同级评分" /></td>
										<td width="20%"><div align="center">下级评分</div> <input
											type="hidden" name="headers" value="下级评分" /></td>
										<td width="20%"><div align="center">总评分</div> <input
											type="hidden" name="headers" value="总分" /></td>
									</tr>

									<c:forEach items="${list }" var="map" varStatus="state">
										<tr bgcolor='${state.count%2==1?"#E5EEFF":"#FFFFFF"}'>
											<td class="txt-gray"><div align="center">${map.get('REALNAME') }</div>
												<input type="hidden" name="datas"
												value="${map.get('REALNAME') }" /></td>
											<td class="txt-gray"><div align="center">${map.get('SUPERIORS') }</div>
												<input type="hidden" name="datas"
												value="${map.get('SUPERIORS') }" /></td>
											<td class="txt-gray"><div align="center">${map.get('PEER') }</div>
												<input type="hidden" name="datas"
												value="${map.get('PEER') }" /></td>
											<td class="txt-gray"><div align="center">${map.get('INFERIOR') }</div>
												<input type="hidden" name="datas"
												value="${map.get('INFERIOR') }" /></td>
											<td class="txt-gray"><div align="center">${map.get('FINA') }</div>
												<input type="hidden" name="datas"
												value="${map.get('FINA') }" /></td>
										</tr>
									</c:forEach>

									<tr bgcolor="#F9F9F9">
										<td height="22" colspan="5" class="txt-gray"><table
												align="right" cellpadding="0" cellspacing="0">
												<tr>
													<td><img src="images/button/an-left.jpg" width="18"
														height="21"></td>
													<td width="80" background="images/button/an-bg.jpg"
														class="txt-blue"><div align="center">
															<input type="submit" value="导出Xsl文件" class="txt-blue" />
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
		<table width="993" cellspacing="0" cellpadding="0" align="center">
			<tr>
				<td height="40" background="images/sub-bottom-pic.jpg"><div
						align="right">
						<span class="txt-gray">中国移动通信集团新疆有限公司版权所有 （ Copyright (C)
							2004-2005 ）</span>
					</div></td>
			</tr>
		</table>
	</form>
</body>
</html>
