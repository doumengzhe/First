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
<title>考核</title>
<link href="css/css.css" rel="stylesheet" type="text/css">

<script type="text/javascript" src="src/jquery11.js"></script>
<script type="text/javascript">
	var values = [ "优秀", "良好", "称职", "基本称职", "不称职" ];

	$(function() {
		/**
			窗口打开时，显示出用户选择选项
		 **/
		var info = window.dialogArguments;
		for ( var property in info) {
			if (info[property].length == 0) {
				info[property] = 2;
			}
			if (property != "orderid" && property != "realName") {
				var d = $("input[name='" + property + "']");

				d.eq(info[property]).prop("checked", true);
			}
		}

		$("#realName").text("被考核人:" + info.realName);

		//提交时将结果返回给打开页面
		$("#btn_check").click(function() {
			var result = window.returnValue = new Object();
			result.orderid = info.orderid;
			//用户的考核结果。。
			for ( var property in info) {
				if (property != "orderid" && property != "realName") {
					var d = $("input[name='" + property + "']:checked");
					result[property] = d.val();
					result[property + "Text"] = values[d.val()];
					//alert(result[property + "Text"]);
				}
			}
			window.close();
		});

	});
</script>
</head>

<body>
	<table width="993" align="center" cellpadding="0" cellspacing="0">
		<tr>
			<td height="41" background="images/table/right-top-bg.jpg"><img
				src="images/ico/home-ico.jpg" width="4" height="10" hspace="10"
				align="middle"><span id="realName" class="txt-blue"></span></td>
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
								style="word-break: break-all;">
								<tr>
									<td width="5%" bgcolor="#FBE9B7"><div align="center">
											<span class="txt-blue">序号</span>
										</div></td>
									<td width="5%" bgcolor="#FBE9B7"><div align="center">
											<span class="txt-blue">考核<br> 指标
											</span>
										</div></td>
									<td width="10%" bgcolor="#FBE9B7"><div align="center">
											<span class="txt-blue">考核项目</span>
										</div></td>
									<td width="44%" bgcolor="#FBE9B7"><div align="center">
											<span class="txt-blue">考核项目绩效内容</span>
										</div></td>
									<td width="36%" bgcolor="#FBE9B7"><div align="center">
											<span class="txt-blue">考核结果</span>
										</div></td>
								</tr>
								<tr>
									<td height="22" bgcolor="#FDF2D9" class="txt-gray"><div
											align="center">1</div></td>
									<td rowspan="3" bgcolor="#FEF9ED" class="txt-gray"><div
											align="center">德</div>
										<div align="center"></div></td>
									<td class="txt-gray">思想素质</td>
									<td class="txt-gray">为人正直、遵章守纪、具有良好的思想品德、职业道德 。</td>
									<td class="txt-gray"><input type="radio" name="sxszvalue"
										value="0"> 优秀 <input type="radio" name="sxszvalue"
										value="1"> 良好 <input type="radio" name="sxszvalue"
										value="2"> 称职 <input type="radio" name="sxszvalue"
										value="3"> 基本称职 <input type="radio" name="sxszvalue"
										value="4"> 不称职</td>
								</tr>
								<tr bgcolor="#E5EEFF">
									<td height="22" bgcolor="#FDF2D9" class="txt-gray"><div
											align="center">2</div></td>
									<td class="txt-gray">廉洁自律</td>
									<td class="txt-gray">以身作则，严格自律，正确运用组织赋予的权力。</td>
									<td class="txt-gray"><input type="radio" name="ljzlvalue"
										value="0"> 优秀 <input type="radio" name="ljzlvalue"
										value="1"> 良好 <input type="radio" name="ljzlvalue"
										value="2"> 称职 <input type="radio" name="ljzlvalue"
										value="3"> 基本称职 <input type="radio" name="ljzlvalue"
										value="4"> 不称职</td>
								</tr>
								<tr>
									<td height="22" bgcolor="#FDF2D9" class="txt-gray"><div
											align="center">3</div></td>
									<td class="txt-gray">工作作风</td>
									<td class="txt-gray">讲究民主、团结协作、坚持实事求是和群众路线、有大局意识。</td>
									<td class="txt-gray"><input type="radio" name="gzzfvalue"
										value="0"> 优秀 <input type="radio" name="gzzfvalue"
										value="1"> 良好 <input type="radio" name="gzzfvalue"
										value="2"> 称职 <input type="radio" name="gzzfvalue"
										value="3"> 基本称职 <input type="radio" name="gzzfvalue"
										value="4"> 不称职</td>
								</tr>
								<tr bgcolor="#E5EEFF">
									<td height="22" bgcolor="#FDF2D9" class="txt-gray"><div
											align="center">4</div></td>
									<td rowspan="4" bgcolor="#FEF9ED" class="txt-gray"><div
											align="center">能</div>
										<div align="center"></div></td>
									<td class="txt-gray">决策能力</td>
									<td class="txt-gray">具有较高的政策理论水平、工作有计划性、前瞻性和有效性，决策及时合理、无方向性错误。</td>
									<td class="txt-gray"><input type="radio" name="jcnlvalue"
										value="0"> 优秀 <input type="radio" name="jcnlvalue"
										value="1"> 良好 <input type="radio" name="jcnlvalue"
										value="2"> 称职 <input type="radio" name="jcnlvalue"
										value="3"> 基本称职 <input type="radio" name="jcnlvalue"
										value="4"> 不称职</td>
								</tr>
								<tr>
									<td height="22" bgcolor="#FDF2D9" class="txt-gray"><div
											align="center">5</div></td>
									<td class="txt-gray">组织协调能力</td>
									<td class="txt-gray">能调动员工的积极性，妥善处理各种工作关系与人际关系。</td>
									<td class="txt-gray"><input type="radio"
										name="zzxtnlvalue" value="0"> 优秀 <input type="radio"
										name="zzxtnlvalue" value="1"> 良好 <input type="radio"
										name="zzxtnlvalue" value="2"> 称职 <input type="radio"
										name="zzxtnlvalue" value="3"> 基本称职 <input type="radio"
										name="zzxtnlvalue" value="4"> 不称职</td>
								</tr>
								<tr bgcolor="#E5EEFF">
									<td height="22" bgcolor="#FDF2D9" class="txt-gray"><div
											align="center">6</div></td>
									<td class="txt-gray">创新能力</td>
									<td class="txt-gray">工作有思路，有新意，勤于学习，善于思考，思维开阔。</td>
									<td class="txt-gray"><input type="radio" name="cxnlvalue"
										value="0"> 优秀 <input type="radio" name="cxnlvalue"
										value="1"> 良好 <input type="radio" name="cxnlvalue"
										value="2"> 称职 <input type="radio" name="cxnlvalue"
										value="3"> 基本称职 <input type="radio" name="cxnlvalue"
										value="4"> 不称职</td>
								</tr>
								<tr bgcolor="#FFFFFF">
									<td height="22" bgcolor="#FDF2D9" class="txt-gray"><div
											align="center">7</div></td>
									<td class="txt-gray">领导能力</td>
									<td class="txt-gray">熟悉本职工作相关政策法规和管理知识，较强的语言文字表达能力。</td>
									<td class="txt-gray"><input type="radio" name="ldnlvalue"
										value="0"> 优秀 <input type="radio" name="ldnlvalue"
										value="1"> 良好 <input type="radio" name="ldnlvalue"
										value="2"> 称职 <input type="radio" name="ldnlvalue"
										value="3"> 基本称职 <input type="radio" name="ldnlvalue"
										value="4"> 不称职</td>
								</tr>
								<tr bgcolor="#E5EEFF">
									<td height="22" bgcolor="#FDF2D9" class="txt-gray"><div
											align="center">8</div></td>
									<td rowspan="2" bgcolor="#FEF9ED" class="txt-gray"><div
											align="center">勤</div></td>
									<td class="txt-gray">责任心</td>
									<td class="txt-gray">积极主动工作和敢于承担责任，工作不相互推委。</td>
									<td class="txt-gray"><input type="radio" name="zrxvalue"
										value="0"> 优秀 <input type="radio" name="zrxvalue"
										value="1"> 良好 <input type="radio" name="zrxvalue"
										value="2"> 称职 <input type="radio" name="zrxvalue"
										value="3"> 基本称职 <input type="radio" name="zrxvalue"
										value="4"> 不称职</td>
								</tr>
								<tr bgcolor="#FFFFFF">
									<td height="22" bgcolor="#FDF2D9" class="txt-gray"><div
											align="center">9</div></td>
									<td class="txt-gray">服务意识</td>
									<td class="txt-gray">有较强的配合协作意识，主动为员工和其他部门排忧解难 。</td>
									<td class="txt-gray"><input type="radio" name="fwysvalue"
										value="0"> 优秀 <input type="radio" name="fwysvalue"
										value="1"> 良好 <input type="radio" name="fwysvalue"
										value="2"> 称职 <input type="radio" name="fwysvalue"
										value="3"> 基本称职 <input type="radio" name="fwysvalue"
										value="4"> 不称职</td>
								</tr>
								<tr bgcolor="#E5EEFF">
									<td height="22" bgcolor="#FDF2D9" class="txt-gray"><div
											align="center">10</div></td>
									<td rowspan="3" bgcolor="#FEF9ED" class="txt-gray"><div
											align="center">绩</div></td>
									<td class="txt-gray">目标达成</td>
									<td class="txt-gray">较好的完成各项工作计划和各项指标，以及上级交办的工作。</td>
									<td class="txt-gray"><input type="radio" name="mbdcvalue"
										value="0"> 优秀 <input type="radio" name="mbdcvalue"
										value="1"> 良好 <input type="radio" name="mbdcvalue"
										value="2"> 称职 <input type="radio" name="mbdcvalue"
										value="3"> 基本称职 <input type="radio" name="mbdcvalue"
										value="4"> 不称职</td>
								</tr>
								<tr bgcolor="#FFFFFF">
									<td height="22" bgcolor="#FDF2D9" class="txt-gray"><div
											align="center">11</div></td>
									<td class="txt-gray">管理效率</td>
									<td class="txt-gray">办事快捷、稳妥，时间安排合理，不会顾此失彼。</td>
									<td class="txt-gray"><input type="radio" name="glxlvalue"
										value="0"> 优秀 <input type="radio" name="glxlvalue"
										value="1"> 良好 <input type="radio" name="glxlvalue"
										value="2"> 称职 <input type="radio" name="glxlvalue"
										value="3"> 基本称职 <input type="radio" name="glxlvalue"
										value="4"> 不称职</td>
								</tr>
								<tr bgcolor="#E5EEFF">
									<td height="22" bgcolor="#FDF2D9" class="txt-gray"><div
											align="center">12</div></td>
									<td class="txt-gray">下属开发</td>
									<td class="txt-gray">善于授权，重视对下属的开发和培养，下属能力提高明显。</td>
									<td class="txt-gray"><input type="radio" name="xskfvalue"
										value="0"> 优秀 <input type="radio" name="xskfvalue"
										value="1"> 良好 <input type="radio" name="xskfvalue"
										value="2"> 称职 <input type="radio" name="xskfvalue"
										value="3"> 基本称职 <input type="radio" name="xskfvalue"
										value="4"> 不称职</td>
								</tr>
								<tr bgcolor="#E5EEFF">
									<td height="22" colspan="5" bgcolor="#FFFFFF" class="txt-gray">
										<table align="right" cellpadding="0" cellspacing="0">
											<tr>
												<td><img src="images/button/an-left.jpg" width="18"
													height="21"></td>
												<td width="60" background="images/button/an-bg.jpg"
													class="txt-blue"><div id="btn_check"
														style="cursor: pointer;" align="center">提交</div></td>
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
	<table width="993" align="center" cellpadding="0" cellspacing="0">
		<tr>
			<td height="40" background="images/sub-bottom-pic.jpg"
				class="table-three-gray"><p align="right" class="txt-gray">中国移动通信集团新疆有限公司版权所有
					（ Copyright (C) 2004-2005 ）</p></td>
		</tr>
	</table>
</body>
</html>
