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
					type="hidden" name="khLevel" value="${khLevel }" /></td>
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
									<tr>
										<td rowspan="2" width="10%" bgcolor="#FBE9B7"><div
												align="center">
												<span class="txt-blue">考核人</span> <input type="hidden"
													name="headers" value="考核人" />
											</div></td>
										<td colspan="3" bgcolor="#FBE9B7"><div align="center"
												class="txt-blue">德</div></td>
										<td colspan="4" bgcolor="#FBE9B7" class="txt-blue"><div
												align="center">能</div></td>
										<td colspan="3" bgcolor="#FBE9B7"><div align="center"
												class="txt-blue">勤</div></td>
										<td colspan="2" bgcolor="#FBE9B7"><div align="center"
												class="txt-blue">绩</div></td>
										<td rowspan="2" width="6%" bgcolor="#FBE9B7" class="txt-blue"><div
												align="center">总分</div></td>
									</tr>
									<tr>
										<td width="7%" valign="top" bgcolor="#FEF9ED" class="txt-gray"><div
												align="center">
												思<br> 想<br> 素<br> 质
											</div> <input type="hidden" name="headers" value="思想素质" /></td>
										<td width="7%" valign="top" bgcolor="#FEF9ED" class="txt-gray"><div
												align="center">
												廉<br> 洁<br> 自<br> 律
											</div> <input type="hidden" name="headers" value="廉洁自律" /></td>
										<td width="7%" valign="top" bgcolor="#FEF9ED" class="txt-gray"><div
												align="center">
												工<br> 作<br> 作<br> 风
											</div> <input type="hidden" name="headers" value="工作作风" /></td>
										<td width="7%" valign="top" bgcolor="#FEF9ED" class="txt-gray"><div
												align="center">
												决<br> 策<br> 能<br> 力
											</div> <input type="hidden" name="headers" value="决策能力" /></td>
										<td width="7%" valign="top" bgcolor="#FEF9ED" class="txt-gray"><div
												align="center">
												组<br> 织<br> 协<br> 调<br> 能<br> 力
											</div> <input type="hidden" name="headers" value="组织协调能力" /></td>
										<td width="7%" valign="top" bgcolor="#FEF9ED" class="txt-gray"><div
												align="center">
												创<br> 新<br> 能<br> 力
											</div> <input type="hidden" name="headers" value="创新能力" /></td>
										<td width="7%" valign="top" bgcolor="#FEF9ED" class="txt-gray"><div
												align="center">
												领<br> 导<br> 能<br> 力
											</div> <input type="hidden" name="headers" value="领导能力" /></td>
										<td width="7%" valign="top" bgcolor="#FEF9ED" class="txt-gray"><div
												align="center">
												责<br> 任<br> 心
											</div> <input type="hidden" name="headers" value="责任心" /></td>
										<td width="7%" valign="top" bgcolor="#FEF9ED" class="txt-gray"><div
												align="center">
												服<br> 务<br> 意<br> 识
											</div> <input type="hidden" name="headers" value="服务意识" /></td>
										<td width="7%" valign="top" bgcolor="#FEF9ED" class="txt-gray"><div
												align="center">
												目<br> 标<br> 达<br> 成
											</div> <input type="hidden" name="headers" value="目标达成" /></td>
										<td width="7%" valign="top" bgcolor="#FEF9ED" class="txt-gray"><div
												align="center">
												管<br> 理<br> 效<br> 率
											</div> <input type="hidden" name="headers" value="管理效率" /></td>
										<td width="7%" valign="top" bgcolor="#FEF9ED" class="txt-gray"><div
												align="center">
												下<br> 属<br> 开<br> 发<br>
											</div> <input type="hidden" name="headers" value="下属开发" /><input
											type="hidden" name="headers" value="总分" /></td>
									</tr>

									<c:forEach items="${list }" var="map" varStatus="state">
										<tr bgcolor='${state.count%2==1?"#E5EEFF":"#FFFFFF"}'>
											<td class="txt-gray"><div align="center">${map.get('REALNAME') }</div>
												<input type="hidden" name="datas"
												value="${map.get('REALNAME') }" /></td>
											<td class="txt-gray"><div align="center">${map.get('SXSZ') }</div>
												<input type="hidden" name="datas"
												value="${map.get('SXSZ') }"></td>
											<td class="txt-gray"><div align="center">${map.get('SXSZ') }</div>
												<input type="hidden" name="datas"
												value="${map.get('SXSZ') }"></td>
											<td class="txt-gray"><div align="center">${map.get('GZZF') }</div>
												<input type="hidden" name="datas"
												value="${map.get('GZZF') }"></td>
											<td class="txt-gray"><div align="center">${map.get('JCNL') }</div>
												<input type="hidden" name="datas"
												value="${map.get('JCNL') }"></td>
											<td class="txt-gray"><div align="center">${map.get('ZZXTNL') }</div>
												<input type="hidden" name="datas"
												value="${map.get('ZZXTNL') }"></td>
											<td class="txt-gray"><div align="center">${map.get('CXNL') }</div>
												<input type="hidden" name="datas"
												value="${map.get('CXNL') }"></td>
											<td class="txt-gray"><div align="center">${map.get('LDNL') }</div>
												<input type="hidden" name="datas"
												value="${map.get('LDNL') }"></td>
											<td class="txt-gray"><div align="center">${map.get('ZRX') }</div>
												<input type="hidden" name="datas" value="${map.get('ZRX') }"></td>
											<td class="txt-gray"><div align="center">${map.get('FWYS') }</div>
												<input type="hidden" name="datas"
												value="${map.get('FWYS') }"></td>
											<td class="txt-gray"><div align="center">${map.get('MBDC') }</div>
												<input type="hidden" name="datas"
												value="${map.get('MBDC') }"></td>
											<td class="txt-gray"><div align="center">${map.get('GLXL') }</div>
												<input type="hidden" name="datas"
												value="${map.get('GLXL') }"></td>
											<td class="txt-gray"><div align="center">${map.get('XSKF') }</div>
												<input type="hidden" name="datas"
												value="${map.get('XSKF') }"></td>
											<td class="txt-gray"><div align="center">${map.get('SUM') }</div>
												<input type="hidden" name="datas" value="${map.get('SUM') }"></td>
										</tr>
									</c:forEach>

									<tr bgcolor="#F9F9F9">
										<td height="22" colspan="14" class="txt-gray"><table
												align="right" cellpadding="0" cellspacing="0">
												<tr>
													<td><img src="images/button/an-left.jpg" width="18"
														height="21"></td>
													<td width="80" background="images/button/an-bg.jpg"
														class="txt-blue"><div align="center" class="txt-blue">
															<input type="submit" value="导出Xsl文件" />
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
