<%@ page import="java.util.Enumeration" %>
<%@ page import="java.io.PrintWriter" %><%--
  Created by IntelliJ IDEA.
  User: cheoho-hi
  Date: 2022-11-08
  Time: 오후 3:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    Enumeration<String> list = request.getHeaderNames();

    while(list.hasMoreElements())
    {
        String name = list.nextElement();
        String val = request.getHeader(name);

        out.print("<h3>");
        out.print(name +" = " + val);
        out.print("</h3>");
    }

%>
</body>
</html>
