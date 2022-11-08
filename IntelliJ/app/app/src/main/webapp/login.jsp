<%@ page import="java.time.LocalDate" %><%--    디렉티브 영역
  Created by IntelliJ IDEA.
  User: cheoho-hi
  Date: 2022-11-07
  Time: 오후 3:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>LogIn Page</title>
</head>
<body>
  <h1>LogIn Page</h1>

<%
    String userid = request.getParameter("userId");
    String pw = request.getParameter("pw");

    if(userid.equals(pw))
    {
        session.setAttribute("loginId", userid);
        response.sendRedirect("MyPage.jsp");
    }

    else
        response.sendRedirect("login.html");



%>
</body>
</html>
