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
<head>
<base href="<%=basePath%>">
<title>wdgz_db1.jsp</title>
	<meta content="Content-Type" content="text/html" charset="utf-8">
<link href="css/css.css" rel="stylesheet" type="text/css">

<script type="text/javascript" src="src/jquery11.js"></script>
<script>
	$(function() {

		$("#kh_submit").click(function() {
			var a = $("input[type='hidden']");
			for (var i = 0; i < a.length; i++) {
				if (a.eq(i).val().length == 0) {
					alert("请为所有人打分。");
					return;
				}
			}
			$("#form1")[0].submit();
		});
	});

	function khAccount(index) {

		var obj = new Object();
		obj.realName = $("input[name='realname']").eq(index).val();
		obj.orderid = $("input[name='orderid']").eq(index).val();
		obj.sxszvalue = $("input[name='sxszvalue']").eq(index).val();
		obj.ljzlvalue = $("input[name='ljzlvalue']").eq(index).val();
		obj.gzzfvalue = $("input[name='gzzfvalue']").eq(index).val();
		obj.jcnlvalue = $("input[name='jcnlvalue']").eq(index).val();
		obj.zzxtnlvalue = $("input[name='zzxtnlvalue']").eq(index).val();
		obj.cxnlvalue = $("input[name='cxnlvalue']").eq(index).val();
		obj.ldnlvalue = $("input[name='ldnlvalue']").eq(index).val();
		obj.zrxvalue = $("input[name='zrxvalue']").eq(index).val();
		obj.fwysvalue = $("input[name='fwysvalue']").eq(index).val();
		obj.mbdcvalue = $("input[name='mbdcvalue']").eq(index).val();
		obj.glxlvalue = $("input[name='glxlvalue']").eq(index).val();
		obj.xskfvalue = $("input[name='xskfvalue']").eq(index).val();

		var result = window.showModalDialog("file/wdgz_db2.jsp", obj,
				"center:yes;dialogHeight:540px; dialogWidth:1024px;");

		for ( var property in result) {
			if (property.indexOf("Text") == -1) {
				$("input[name='" + property + "']").eq(result.orderid).val(
						result[property]);
			} else {
				$("div[name='" + property + "']").eq(result.orderid).text(
						result[property]);
			}
		}
	}
</script>
</head>

<body>
	<form id="form1" name="form1" action="getKHDate"
		method="post">
		<table width="98%" align="center" cellpadding="0" cellspacing="0">
			<tr>
				<td align="center"><img src="images/top-pic.jpg" width="993"
					height="133"></td>
			</tr>
		</table>
		<table width="993" align="center" cellpadding="0" cellspacing="0">
			<tr>
				<td height="41" background="images/table/right-top-bg.jpg"><img
					src="images/ico/home-ico.jpg" width="4" height="10" hspace="10"
					align="middle"><span class="txt-blue">我的工作&gt;&gt;待办</span></td>
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
							<td>
								<table width="100%" border="1" align="center" cellpadding="2"
									cellspacing="0" bordercolorlight="#D4D4D4"
									bordercolordark="#FFFFFF" bgcolor="#FFFFFF"
									style="word-break :break-all;">
									<tr>
										<td width="15%" rowspan="2" bgcolor="#FBE9B7"><div
												align="center">
												<span class="txt-blue">姓名</span>
											</div></td>
										<td colspan="3" bgcolor="#FBE9B7"><div align="center">
												<span class="txt-blue">德</span>
											</div></td>
										<td colspan="4" bgcolor="#FBE9B7"><div align="center">
												<span class="txt-blue">能</span>
											</div></td>
										<td colspan="3" bgcolor="#FBE9B7"><div align="center">
												<span class="txt-blue">勤</span>
											</div></td>
										<td colspan="2" bgcolor="#FBE9B7"><div align="center">
												<span class="txt-blue">绩</span>
											</div></td>
										<td width="3%" rowspan="2" bgcolor="#FBE9B7"><div
												align="center">
												<span class="txt-blue">考核</span>
											</div></td>
									</tr>
									<tr>
										<td width="7%" valign="top" bgcolor="#FEF9ED" class="txt-gray"><div
												align="center">
												思<br> 想<br> 素<br> 质
											</div></td>
										<td width="7%" valign="top" bgcolor="#FEF9ED" class="txt-gray"><div
												align="center">
												廉<br> 洁<br> 自<br> 律
											</div></td>
										<td width="7%" valign="top" bgcolor="#FEF9ED" class="txt-gray"><div
												align="center">
												工<br> 作<br> 作<br> 风
											</div></td>
										<td width="7%" valign="top" bgcolor="#FEF9ED" class="txt-gray"><div
												align="center">
												决<br> 策<br> 能<br> 力
											</div></td>
										<td width="7%" valign="top" bgcolor="#FEF9ED" class="txt-gray"><div
												align="center">
												组<br> 织<br> 协<br> 调<br> 能<br> 力
											</div></td>
										<td width="7%" valign="top" bgcolor="#FEF9ED" class="txt-gray"><div
												align="center">
												创<br> 新<br> 能<br> 力
											</div></td>
										<td width="7%" valign="top" bgcolor="#FEF9ED" class="txt-gray"><div
												align="center">
												领<br> 导<br> 能<br> 力
											</div></td>
										<td width="7%" valign="top" bgcolor="#FEF9ED" class="txt-gray"><div
												align="center">
												责<br> 任<br> 心
											</div></td>
										<td width="7%" valign="top" bgcolor="#FEF9ED" class="txt-gray"><div
												align="center">
												服<br> 务<br> 意<br> 识
											</div></td>
										<td width="7%" valign="top" bgcolor="#FEF9ED" class="txt-gray"><div
												align="center">
												目<br> 标<br> 达<br> 成
											</div></td>
										<td width="7%" valign="top" bgcolor="#FEF9ED" class="txt-gray"><div
												align="center">
												管<br> 理<br> 效<br> 率
											</div></td>
										<td width="7%" valign="top" bgcolor="#FEF9ED" class="txt-gray"><div
												align="center">
												下<br> 属<br> 开<br> 发<br>
											</div></td>
									</tr>

									<c:forEach items="${list }" var="map" varStatus="state">
										<tr bgcolor='${state.count%2==1?"#E5EEFF":"#FFFFFF"}'>
											<td class="txt-gray"><div name="realnameText"
													align="center">${map.get('REALNAME') }</div> <input
												type="hidden" name="checkedid"
												value="${map.get('CHECKEDID')}" /> <input type="hidden"
												name="checkedaccountid"
												value="${map.get('CHECKEDACCOUNTID')}" /> <input
												type="hidden" name="realname" value="${map.get('REALNAME')}" />
												<input type="hidden" name="orderid" value="${state.index}" /></td>
											<td class="txt-gray"><div name="sxszvalueText"
													align="center">${map.get('SXSZVALUE') }</div> <input
												type="hidden" name="sxszvalue"
												value="${map.get('SXSZVALUE') }" /></td>
											<td class="txt-gray"><div name="ljzlvalueText"
													align="center">${map.get('LJZLVALUE') }</div> <input
												type="hidden" name="ljzlvalue"
												value="${map.get('LJZLVALUE') }" /></td>
											<td class="txt-gray"><div name="gzzfvalueText"
													align="center">${map.get('GZZFVALUE') }</div> <input
												type="hidden" name="gzzfvalue"
												value="${map.get('GZZFVALUE') }" /></td>
											<td class="txt-gray"><div name="jcnlvalueText"
													align="center">${map.get('JCNLVALUE') }</div> <input
												type="hidden" name="jcnlvalue"
												value="${map.get('JCNLVALUE') }" /></td>
											<td class="txt-gray"><div name="zzxtnlvalueText"
													align="center">${map.get('ZZXTNLVALUE') }</div> <input
												type="hidden" name="zzxtnlvalue"
												value="${map.get('ZZXTNLVALUE') }" /></td>
											<td class="txt-gray"><div name="cxnlvalueText"
													align="center">${map.get('CXNLVALUE') }</div> <input
												type="hidden" name="cxnlvalue"
												value="${map.get('CXNLVALUE') }" /></td>
											<td class="txt-gray"><div name="ldnlvalueText"
													align="center">${map.get('LDNLVALUE') }</div> <input
												type="hidden" name="ldnlvalue"
												value="${map.get('LDNLVALUE') }" /></td>
											<td class="txt-gray"><div name="zrxvalueText"
													align="center">${map.get('ZRXVALUE') }</div> <input
												type="hidden" name="zrxvalue"
												value="${map.get('ZRXVALUE') }" /></td>
											<td class="txt-gray"><div name="fwysvalueText"
													align="center">${map.get('FWYSVALUE') }</div> <input
												type="hidden" name="fwysvalue"
												value="${map.get('FWYSVALUE') }" /></td>
											<td class="txt-gray"><div name="mbdcvalueText"
													align="center">${map.get('MBDCVALUE') }</div> <input
												type="hidden" name="mbdcvalue"
												value="${map.get('MBDCVALUE') }" /></td>
											<td class="txt-gray"><div name="glxlvalueText"
													align="center">${map.get('GLXLVALUE') }</div> <input
												type="hidden" name="glxlvalue"
												value="${map.get('GLXLVALUE') }" /></td>
											<td class="txt-gray"><div name="xskfvalueText"
													align="center">${map.get('XSKFVALUE') }</div> <input
												type="hidden" name="xskfvalue"
												value="${map.get('XSKFVALUE') }" /></td>
											<td class="txt-gray"><div name="?" align="center">
													<table width="80" align="center" cellpadding="0"
														cellspacing="0">
														<tr>
															<td><img src="images/button/an-left-1.jpg" width="4"
																height="21"></td>
															<td width="80" background="images/button/an-bg.jpg"
																class="txt-blue"><div align="center"
																	class="txt-blue" style="cursor: pointer;"
																	onclick="khAccount(${state.index});">考核评分</div></td>
															<td><img src="images/button/an-right.jpg" width="4"
																height="21"></td>
														</tr>
													</table>
												</div></td>
										</tr>
									</c:forEach>

									<tr bgcolor="#F9F9F9">
										<td height="22" colspan="14" class="txt-gray"><div
												align="right">
												<table align="right" cellpadding="0" cellspacing="0">
													<tr>
														<td><img src="images/button/an-left.jpg" width="18"
															height="21"></td>
														<td width="60" background="images/button/an-bg.jpg"
															class="txt-blue"><div align="center"
																class="txt-blue" style="cursor: pointer;" id="kh_submit">
																<input type="hidden" name="docid" value="${docid }" />
															 <input type="hidden" name="accountid" value="${accountid}">提交问卷
															</div></td>
														<td><img src="images/button/an-right.jpg" width="4"
															height="21"></td>
													</tr>
												</table>
											</div></td>
									</tr>
								</table>
							</td>
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
