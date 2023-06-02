<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023/5/19
  Time: 8:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- use jstl core tags , add lib -->
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    /*
    if (username == null){
        print guesst
    }
    else {
        print username
    }
     */
    //   session.setAttribute("username","Admin");
%>
<c:set var="username" value="Admin" scope="session"/>
<h1>Welcom,<c:out value="${username}" default="Guest"/></h1>
<h1>Use c:forEach to print 1 tp 10</h1>
<%
    //for (int i=1;i<=10;i++)
%>
<c:forEach var="i" begin="1" end="10" step="1">
    <ul>
        <li>${i}</li>
    </ul>
</c:forEach>
<h1>print 1,3,5,7,9</h1>
<%--
<c:forEach var="i" begin="1" end="10" step="2">
    <ul><li>
        ${i}
    </li></ul>
</c:forEach>
--%>
<h1>Use c:forEach to get items form an array</h1>
<%
    String[] firstName = {"Da", "tom", "poll"};
    request.setAttribute("firstName", firstName);


    ArrayList<String> lastName = new ArrayList<>();
    lastName.add("Bing");
    lastName.add("Lee");
    lastName.add("zhang");
    request.setAttribute("lName", lastName);
%>
<c:forEach var="n" items="${firstName}">
    <ul>
        <li>${n}</li>
    </ul>
</c:forEach>
<h1>Use c:forEach to get items from ArrayList</h1>
<c:forEach var="n" items="${lName}">
    <ul>
        <li>${n}</li>
    </ul>
</c:forEach>
<h1>Use c:forTokens</h1>
<c:forTokens var="w" items="one,two,three,four.five.six" delims=",.">
    <ul>
        <li>${w}</li>
    </ul>
</c:forTokens>
<h1>use c:catch</h1>
<c:catch var="msg">
    <%
        int i = 10 / 0;//exception
    %>
</c:catch>
msg:${msg}

This is my page.<br>
<h2>the 'if' Tag</h2>
<ul>
    <c:forEach var="i" begin="1" end="10" >
        <li>${i}
        <c:if test="${i>7}">
            (greater than 7)
        </c:if>
        </li>
    </c:forEach>
</ul>
<hr/>
<h2>the "choose" Tag</h2>
<ul>
    <c:forEach var="i" begin="1" end="10">
        <li>${i}
        <c:choose>
            <c:when test="${i<4}">
                (small)
            </c:when>
            <c:when test="${i<8}">
                (medium)
            </c:when>
            <c:otherwise>
                (large)
            </c:otherwise>
        </c:choose></li>
    </c:forEach>
</ul>
</body>
</html>
