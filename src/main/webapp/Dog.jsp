<%@ page import="com.sunxiaofei.week11.Person" %>
<%@ page import="com.sunxiaofei.week11.Dog" %><%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023/5/5
  Time: 9:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    //create dog and person
    com.sunxiaofei.week11.Dog dog = new Dog();
    dog.setName("Tommy");
    Person person = new Person();
    person.setName("Evan");
    person.setDog(dog);

    request.setAttribute("person", person);
%>
<h1>Get Persons' Dog name Using java code</h1>
<%
    Person p = (Person) request.getAttribute("person");
    Dog d = p.getDog();
    out.println(d.getName());
%>
<h1>Get Persons' Dog name Using EL code</h1>
${person.dog.name}
</body>
</html>
