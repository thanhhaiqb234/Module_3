<%--
  Created by IntelliJ IDEA.
  User: thanh
  Date: 7/28/2023
  Time: 5:03 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    float rate = Float.parseFloat(request.getParameter("rate"));
    float usd = Float.parseFloat(request.getParameter("usd"));

    float vnd = rate * usd;
%>
<h1>Currency Converter</h1><br><br>
<h2>Rate:<%= rate %>
</h2><br><br>
<h2>USD:<%= usd %>
</h2><br><br>
<h2>VNĐ:<%= vnd %>
</h2>
</body>
</html>
