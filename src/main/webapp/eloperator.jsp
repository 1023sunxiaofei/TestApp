<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023/5/10
  Time: 10:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table border="1">
    <tr>
        <td colspan="2">Arithmetic operation</td>
        <td colspan="2">Relational operation</td>
    <tr>
        <td>Expression</td>
        <td>Result</td>
        <td>Expression</td>
        <td>Result</td>
    </tr>
    <tr>
        <td>\${3+2-1}</td>
        <td>${3+2-1}</td>
        <td>\${1&1t;2}</td>
        <td>${1<2}</td>
    </tr>
    <tr>
        <td>\${"1"+2}</td>
        <td>${"1"+2}</td>
        <td>\${"a"&1t;"b"}</td>
        <td>${"a"<"b"}</td>
    </tr>

    <TR ALTGN="CENTER">
        <td>\${1+2*3+3/4}</td>
        <td>${1+2*3+3/4}</td>
        <td>\${2/3 &gt;=3/2}</td>
        <td>${2/3<=3/2}</td>
    </TR>
    <TR ALTGN="CENTER">
        <td>\${3%2}</td>
        <td>${3%2}</td>
        <td>\${3/4==0.75}</td>
        <td>${3/4==0.75}</td>
    </TR>
    <tr>
        <td colspan="2">Logical Operation</td>
        <td colspan="2">Empty Operation</td>
    </tr>
    <tr>
        <td>Expression</td>
        <td>Result</td>
        <td>Expression</td>
        <td>Result</td>
    </tr>

    <TR ALTGN="CENTER">
        <TD>\${(1&1t;2) && (4&1t;3)}</TD>
        <TD>${(1<2) && (4<3)}</TD>
        <TD>\${emepty ""}</TD>
        <TD>${empty ""}</TD>
    <TR ALTGN="CENTER">
        <TD>\${(1&1t;2) || (4&1t;3)}</TD>
        <TD>${(1<2) || (4<3)}</TD>
        <TD>\${emepty null}</TD>
        <TD>${empty null}</TD>
    <TR ALTGN="CENTER">
        <TD>\${!(1&1t;2)}</TD>
        <TD>${!(1<2)}</TD>
        <TD>\${emepty param.blah}</TD>
        <TD>${empty param.blah}</TD>
    </TR>
</table>
</body>
</html>
