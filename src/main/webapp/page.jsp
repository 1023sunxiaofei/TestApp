<%--
  Created by IntelliJ IDEA.
  User: 17251
  Date: 2023/5/5
  Time: 8:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<%
    //    pageContext.setAttribute("attName","in page");
    request.setAttribute("attName", "in request");
    session.setAttribute("attName", "in session");
    application.setAttribute("attName", "in application");

%>
Att in :<%=pageContext.getAttribute("attName")%><br>
Att in :<%=request.getAttribute("attName")%><br>
Att in :<%=session.getAttribute("attName")%><br>
Att in :<%=application.getAttribute("attName")%><br>

<h2>Find Attribute
    Find Att:<%=pageContext.findAttribute("attName")%>
</h2>
<h1>
    El example
</h1>
${attName}<br>
Att in :${pageScope.attName}<br>
Att in :${requestScope.attName}<br>
Att in :${sessionScope.attName}<br>
Att in :${applicationScope.attName}<br>

</body>
</html>
