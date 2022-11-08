<%--
  Created by IntelliJ IDEA.
  User: cheoho-hi
  Date: 2022-11-08
  Time: 오후 3:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>My page</title>
</head>
<body>

<%
    String loginID = (String)session.getAttribute("loginId");

    if(loginID == null)
        response.sendRedirect("login.html");
%>
<h1>로그인 성공시 보여주는 페이지</h1>
<a href="logout.jsp">log out</a>
</body>
</html>
