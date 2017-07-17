<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
				align="middle"><span class="txt-blue">系统管理&gt;&gt;参数管理</span></td>
		</tr>
	</table>

	<table width="98%" align="center" cellpadding="0" cellspacing="0">
		<tr>
			<td>
				<table width="100%" align="center" cellpadding="0" cellspacing="0">

					<%-- 各项考核分数比例,总和100分 --%>
					<tr>
						<td height="21" background="images/table/list-top.jpg"
							class="table-left-right-gray"><span class="txt-blue">&nbsp;&nbsp;&nbsp;&nbsp;考核项目(合计100分)</span></td>
					</tr>
					<tr>
						<td><table width="100%" border="1" align="center"
								cellpadding="2" cellspacing="0" bordercolorlight="#D4D4D4"
								bordercolordark="#FFFFFF" bgcolor="#FFFFFF"
								style="word-break :break-all;">
								<tr height="22" bgcolor="#FBE9B7">
									<td width="10%" align="center" rowspan="3"><span
										class="txt-blue">德</span></td>
									<td width="40%" align="center"><span class="txt-blue">思想素质</span></td>
									<td width="50%" class="txt-gray">${map.get('sxszvalue') }</td>
								</tr>
								<tr height="22" bgcolor="#E5EEFF">
									<td width="40%" align="center"><span class="txt-blue">廉洁自律</span></td>
									<td width="50%" class="txt-gray">${map.get('ljzlvalue')}</td>
								</tr>
								<tr height="22" bgcolor="#FBE9B7">
									<td width="40%" align="center"><span class="txt-blue">工作作风</span></td>
									<td width="50%" class="txt-gray">${map.get('gzzfvalue')}</td>
								</tr>
								<tr height="22" bgcolor="#E5EEFF">
									<td width="10%" align="center" rowspan="4"><span
										class="txt-blue">能</span></td>
									<td width="40%" align="center"><span class="txt-blue">决策能力</span></td>
									<td width="50%" class="txt-gray">${map.get('jcnlvalue')}</td>
								</tr>
								<tr height="22" bgcolor="#FBE9B7">
									<td width="40%" align="center"><span class="txt-blue">组织协调能力</span></td>
									<td width="50%" class="txt-gray">${map.get('zzxtnlvalue')}</td>
								</tr>
								<tr height="22" bgcolor="#FBE9B7">
									<td width="40%" align="center"><span class="txt-blue">创新能力</span></td>
									<td width="50%" class="txt-gray">${map.get('cxnlvalue')}</td>
								</tr>
								<tr height="22" bgcolor="#FBE9B7">
									<td width="40%" align="center"><span class="txt-blue">领导能力</span></td>
									<td width="50%" class="txt-gray">${map.get('ldnlvalue')}</td>
								<tr height="22" bgcolor="#FBE9B7">
									<td width="10%" align="center" rowspan="2"><span
										class="txt-blue">勤</span></td>
									<td width="40%" align="center"><span class="txt-blue">责任心</span></td>
									<td width="50%" class="txt-gray">${map.get('zrxvalue')}</td>
								</tr>
								<tr height="22" bgcolor="#E5EEFF">
									<td width="40%" align="center"><span class="txt-blue">服务意识</span></td>
									<td width="50%" class="txt-gray">${map.get('fwysvalue')}</td>
								</tr>
								<tr height="22" bgcolor="#E5EEFF">
									<td width="10%" align="center" rowspan="3"><span
										class="txt-blue">纪</span></td>
									<td width="40%" align="center"><span class="txt-blue">目标达成</span></td>
									<td width="50%" class="txt-gray">${map.get('mbdcvalue')}</td>
								</tr>
								<tr height="22" bgcolor="#FBE9B7">
									<td width="40%" align="center"><span class="txt-blue">管理效率</span></td>
									<td width="50%" class="txt-gray">${map.get('glxlvalue')}</td>
								</tr>
								<tr height="22" bgcolor="#FBE9B7">
									<td width="40%" align="center"><span class="txt-blue">下属开发</span></td>
									<td width="50%" class="txt-gray">${map.get('xskfvalue')}</td>
								</tr>
							</table></td>
					</tr>

					<%-- 考核结果所占得分比例 --%>
					<tr>
						<td height="21" background="images/table/list-top.jpg"
							class="table-left-right-gray"><span class="txt-blue">&nbsp;&nbsp;&nbsp;&nbsp;结果系数</span></td>
					</tr>
					<tr>
						<td><table width="100%" border="1" align="center"
								cellpadding="2" cellspacing="0" bordercolorlight="#D4D4D4"
								bordercolordark="#FFFFFF" bgcolor="#FFFFFF"
								style="word-break :break-all;">
								<tr height="22" bgcolor="#FBE9B7">
									<td width="50%" align="center"><span class="txt-blue">优秀系数</span></td>
									<td width="50%" class="txt-gray">${map.get('EXCELLENT')}</td>
								</tr>
								<tr height="22" bgcolor="#E5EEFF">
									<td width="50%" align="center"><span class="txt-blue">良好系数</span></td>
									<td width="50%" class="txt-gray">${map.get('GOOD')}</td>
								</tr>
								<tr height="22" bgcolor="#FBE9B7">
									<td width="50%" align="center"><span class="txt-blue">称职系数</span></td>
									<td width="50%" class="txt-gray">${map.get('EMPLOYABLE')}</td>
								</tr>
								<tr height="22" bgcolor="#E5EEFF">
									<td width="50%" align="center"><span class="txt-blue">基本称职系数</span></td>
									<td width="50%" class="txt-gray">${map.get('BASICEMPLOYABLE')}</td>
								</tr>
								<tr height="22" bgcolor="#FBE9B7">
									<td width="50%" align="center"><span class="txt-blue">不称职系数</span></td>
									<td width="50%" class="txt-gray">${map.get('UNEMPLOYABLE')}</td>
								</tr>
							</table></td>
					</tr>

					<%-- 各级别考核结果权重 --%>
					<tr>
						<td height="21" background="images/table/list-top.jpg"
							class="table-left-right-gray"><span class="txt-blue">&nbsp;&nbsp;&nbsp;&nbsp;级别系数</span></td>
					</tr>
					<tr>
						<td><table width="100%" border="1" align="center"
								cellpadding="2" cellspacing="0" bordercolorlight="#D4D4D4"
								bordercolordark="#FFFFFF" bgcolor="#FFFFFF"
								style="word-break :break-all;">
								<tr height="22" bgcolor="#FBE9B7">
									<td width="50%" align="center"><span class="txt-blue">上级权重</span></td>
									<td width="50%" class="txt-gray">${map.get('SUPERIORS')}</td>
								</tr>
								<tr height="22" bgcolor="#E5EEFF">
									<td width="50%" align="center"><span class="txt-blue">同级权重</span></td>
									<td width="50%" class="txt-gray">${map.get('PEER')}</td>
								</tr>
								<tr height="22" bgcolor="#FBE9B7">
									<td width="50%" align="center"><span class="txt-blue">下级权重</span></td>
									<td width="50%" class="txt-gray">${map.get('INFERIOR')}</td>
								</tr>
							</table></td>
					</tr>

					<tr bgcolor="#F9F9F9">
						<td height="22" colspan="2"><table align="right"
								cellpadding="0" cellspacing="0">
								<tr>
									<td><img src="images/button/an-left.jpg" width="18"
										height="21"></td>
									<td width="60" background="images/button/an-bg.jpg"
										class="txt-blue"><div align="center">
											<a href="xtgl_csUpdate.action" class="txt-blue">修改参数</a>
										</div></td>
									<td><img src="images/button/an-left.jpg" width="18"
										height="21"></td>
								</tr>
							</table></td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</body>
</html>
