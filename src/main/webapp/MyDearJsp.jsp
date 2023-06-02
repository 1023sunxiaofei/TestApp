<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023/5/9
  Time: 11:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>My Dear Jsp</title>
</head>
<body>
<h1>Ger request parameter using EL </h1>
Name:${param.name}<br>
ID:${param.id}<br>
Subject : ${paramValues.subject[0]},${paramValues.subject[1]},${paramValues.subject[2]}
<h1> Get request header using EL</h1>
Host :${header.host}
<h1> Get cookies using EL</h1>
JSESSIONID : ${cookie.JSESSIONID.value}
<h1> Get context init parameters using EL</h1>
driver : ${initParam.driver}<br>
url : ${initParam.url}<br>
username : ${initParam.username}<br>
password : ${initParam.password}<br>
<h1>Get 4 scope variables- page,request,session and application using EL Code</h1>
<%
    pageContext.setAttribute("attName", "in page");
    pageContext.setAttribute("request", "in request");
    pageContext.setAttribute("session", "in session");
    pageContext.setAttribute("application", "in application");
    //
    //


%>
Att value in page :${pageScope.attName}<br>
Att value in request :${pageScope.request}<br>
Att value in session :${pageScope.session}<br>
Att value in application :${pageScope.application}<br>
</body>
</html>
