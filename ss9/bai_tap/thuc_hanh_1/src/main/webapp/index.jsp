<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <title>JSP - Hello World</title>
</head>
<body>
<h1>Currency Converter</h1>
<form action="/converter.jsp" method="post">
  <label>Rate:</label><br>
  <input type="text" name="rate" placeholder="Rate" value="22000"><br><br>
  <label>USD:</label><br>
  <input type="text" name="usd" placeholder="USD" value="0" ><br><br>
  <input type="submit" id="sumit" value="Converter">
</form>
</body>
</html>