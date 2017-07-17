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
<base href="<%=basePath%>" />
<title></title>
<link href="css/css.css" rel="stylesheet" type="text/css">

<link href="myEasyUI/themes/default/easyui.css" rel="stylesheet"
	type="text/css">
<link href="myEasyUI/themes/icon.css" rel="stylesheet" type="text/css">
<script src="myEasyUI/jquery.js" type="text/javascript"></script>
<script src="myEasyUI/jquery.easyui.min.js" type="text/javascript"></script>

<script>
	function load(data) {
		$("#tree").tree(data);
	}
</script>

<script>
	$(function() {

		//Ajax生成树
		$.post("getZTree", null, function(data) {
			load(data);
		}, "json");

		//提交表单
		$("#btn_submit").click(function() {
			var nodes = $("#tree").tree('getChecked');
			if (nodes != null) {
				var s = '';
				for (var i = 0; i < nodes.length; i++) {
					if (nodes[i].id.charAt(0) != '0') {
						if (s != '') {
							s += ',';
						}
						s += nodes[i].id;
					}
				}
				$("#checkedAccounts").val(s);
			} else {
				alert("至少选择一个考核人！");
				return;
			}
			$("#form1")[0].submit();
		});
	});
</script>

</head>

<body class="txt-gray">
	<table width="98%" align="center" cellpadding="0" cellspacing="0">
		<tr>
			<td height="41" background="images/table/right-top-bg.jpg"><img
				src="images/ico/home-ico.jpg" width="4" height="10" hspace="10"
				align="middle"> <span class="txt-blue">我的工作&gt;&gt;起草考核</span>
			</td>
		</tr>
	</table>
	<form name="form1" id="form1" action="getQckh" method="post">
		<table width="50%" align="center" cellpadding="0" cellspacing="0">
			<tr>
				<td>考核名称</td>
				<td><input type="text" name="docname" /></td>
			</tr>
			<tr>
				<td>考核日期</td>
				<td><input type="text" name="checktime" value="">yyyy-MM-dd
				</td>
			</tr>
			<tr>
				<td>结束日期</td>
				<td><input type="text" name="stoptime" value="">yyyy-MM-dd
				</td>
			</tr>
			<tr>
				<td>描述</td>
				<td><input type="text" name="descript" style="width: 300px;">
				</td>
			</tr>
			<tr>
				<td>考核人员</td>
				<td>
					<div class="demo">
						<div
							style="border-bottom: #c3daf9 1px solid; border-left: #c3daf9 1px solid; width: 250px; height: 200px; overflow: auto; border-top: #c3daf9 1px solid; border-right: #c3daf9 1px solid;">
							<div id="tree"></div>
						</div>
					</div>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="hidden" name="accountid" value="${accountid}">
					<input type="hidden" name="checkedAccounts"
					id="checkedAccounts" /> <input type="button" id="btn_submit"
					value="提交" /></td>
			</tr>
		</table>
	</form>
</body>
</html>

