<%@ page language="java" pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<HTML>
<HEAD>
    <base href="<%=basePath%>">
    <TITLE>新疆移动绩效考核系统</TITLE>
    <LINK href="images/public.css" type=text/css rel=stylesheet>
    <LINK href="images/login.css" type=text/css rel=stylesheet>
    <STYLE type=text/css>
    </STYLE>
    <META content="MSHTML 6.00.2900.5848" name=GENERATOR>
</HEAD>
<BODY>
<DIV id=div1>
    <form action="login" method="post">
        <TABLE id="login" height="100%" cellSpacing=0 cellPadding=0 width=800
               align=center>
            <TBODY>
            <TR id=main>
                <TD>
                    <TABLE height="100%" cellSpacing=0 cellPadding=0 width="100%">
                        <TBODY>
                        <TR>
                            <TD colSpan=4>&nbsp;</TD>
                        </TR>
                        <TR height=30>
                            <TD width=380>&nbsp;</TD>
                            <TD>&nbsp;</TD>
                            <TD>&nbsp;</TD>
                            <TD>&nbsp;</TD>
                        </TR>
                        <TR height=40>
                            <TD rowSpan=4>&nbsp;</TD>
                            <TD>用户名：</TD>
                            <TD><INPUT class=textbox id=txtUserName
                                       name="accountname"></TD>
                            <TD width=120>&nbsp;</TD>
                        </TR>
                        <TR height=40>
                            <TD>密 码：</TD>
                            <TD><INPUT class=textbox id=txtUserPassword type=password
                                       name="password"></TD>
                            <TD width=120>&nbsp;</TD>
                        </TR>
                        <TR height=40>
                            <TD>验证码：</TD>
                            <TD Align="center" colSpan=2><INPUT id=txtSN size=4
                                                                name=txtSN> &nbsp; <IMG src="images/default.gif"
                                                                                        border=0> <A id=LinkButton1
                                                                                                     href="#">不清楚，再来一张</A>
                            </TD>
                        </TR>
                        <TR height=40>
                            <TD></TD>
                            <TD align=right><INPUT id=btnLogin type="submit"
                                                   value=" 登 录 " name=btnLogin></TD>
                            <TD width=120>&nbsp;</TD>
                        </TR>
                        <TR height=110>
                            <TD colSpan=4>&nbsp;</TD>
                        </TR>
                        </TBODY>
                    </TABLE>
                </TD>
            </TR>
            <TR id=root height=104>
                <TD>&nbsp;</TD>
            </TR>
            </TBODY>
        </TABLE>
    </form>
</DIV>
<DIV id=div2 style="DISPLAY: none"></DIV>

</BODY>
</HTML>