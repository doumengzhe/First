<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
<title></title>
<link href="css/css.css" rel="stylesheet" type="text/css">
</head>

<body>
	<table width="98%" align="center" cellpadding="0" cellspacing="0">
		<tr>
			<td height="41" background="images/table/right-top-bg.jpg"><img
				src="images/ico/home-ico.jpg" width="4" height="10" hspace="10"
				align="absmiddle"> <span class="txt-blue">我的工作&gt;&gt;起草考核</span>
			</td>
		</tr>
	</table>
	<table width="98%" align="center" cellpadding="0" cellspacing="0">
		<tr>
			<td>
				<table width="100%" align="center" cellpadding="0" cellspacing="0">
					<tr>
						<td height="21" background="images/table/list-top.jpg"
							class="table-left-right-gray">&nbsp;</td>
					</tr>
					<tr>
						<td>
							<table width="100%" border="1" align="center" cellpadding="2"
								cellspacing="0" bordercolorlight="#D4D4D4"
								bordercolordark="#FFFFFF" bgcolor="#FFFFFF"
								style="word-break: break-all;">
								<tr bgcolor="#FBE9B7">
									<td width="8%" class="table-right-bottom-gray">
										<div align="center">
											<span class="txt-blue">选择</span>
										</div>
									</td>
									<td width="53%" class="table-right-bottom-gray">
										<div align="center">
											<span class="txt-blue">考核标题</span>
										</div>
									</td>
									<td width="20%" class="table-right-bottom-gray">
										<div align="center">
											<span class="txt-blue">起草人</span>
										</div>
									</td>
									<td width="19%" class="table-bottom-gray">
										<div align="center">
											<span class="txt-blue">起草时间</span>
										</div>
									</td>
								</tr>

								<c:forEach var="map" items="${list}" varStatus="state">
									<tr bgcolor='${state.count%2==0?"#E5EEFF":"#FFFFFF"}'>
										<td class="table-right-bottom-gray">
											<div align="center">
												<input type="checkbox" name="checkbox2"
													value="${map.get('DOCID') }">
											</div>
										</td>
										<td class="table-right-bottom-gray" align="center"><a
											href="wodegz-qckh.htm" target="_blank" class="txt-gray">${map.get('DOCNAME')}</a>
										</td>
										<td class="table-right-bottom-gray" align="center"><a href="#"
											class="txt-gray">${map.get('REALNAME')}</a></td>
										<td class="table-bottom-gray" align="center"><span class="txt-gray">[<fmt:formatDate
													value="${map.get('CREATETIME') }" pattern="yyyy-MM-dd"></fmt:formatDate>]
										</span></td>
									</tr>
								</c:forEach>

								<!-- 分页信息 -->

								<!-- 以下是操作菜单 -->

								<tr bgcolor="#F9F9F9">
									<td colspan="4" class="table-right-bottom-gray">
										<div align="center"></div>
										<table width="100%" cellpadding="0" cellspacing="0">
											<tr>
												
												<td width="68%" align="left">&nbsp;<span class="txt-blue">选择全部</span></td>

												<td width="12%">
													<table align="right" cellpadding="0" cellspacing="0">
														<tr style="cursor: pointer">
															<td><img src="images/button/an-left.jpg" width="18"
																height="21"></td>
															<td width="60" background="images/button/an-bg.jpg"
																class="txt-blue">
																<div align="center">
																	<a href="newKH?accountid=${accountid}" class="txt-blue">起草新考核</a>
																</div>
															</td>
															<td><img src="images/button/an-right.jpg" width="4"
																height="21"></td>
														</tr>
													</table>
												</td>

												<td width="12%">
													<table align="right" cellpadding="0" cellspacing="0">
														<tr style="cursor: pointer">
															<td><img src="images/button/an-left.jpg" width="18"
																height="21"></td>
															<td width="60" background="images/button/an-bg.jpg"
																class="txt-blue">
																<div align="center">全部删除</div>
															</td>
															<td><img src="images/button/an-right.jpg" width="4"
																height="21"></td>
														</tr>
													</table>
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</body>
</html>

