<%--
  Created by IntelliJ IDEA.
  User: cheoho-hi
  Date: 2022-11-08
  Time: 오후 2:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Page Modulation</title>

    <style>
        header, nav{
            text-align: center;
        }


    </style>
</head>
<body>

<%@ include file = "top.jsp"%>
<%@ include file = "nav.jsp"%>

<table>
    <tr>
        <td>
            <%@ include file = "news.jsp"%>
        </td>
        <td>
            <%@ include file = "shoppinh.jsp"%>
        </td>
    </tr>
</table>

</body>
</html>
