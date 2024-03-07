<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <title>JSP - Hello World</title>
</head>
<body>
<h1>Simple Calculator</h1>
<form action="/Calculate" method="post">
  <fieldset >
    <legend>Calculator</legend>
    <table>
      <tr>
        <td>First operand:</td>
        <td><input name="first-operand" type="text"/></td>
      </tr>
      <tr>
        <td>Operator: </td>
        <td>
          <select name="operator">
            <option value="+">Cộng</option>
            <option value="-">Trừ</option>
            <option value="*">Nhân</option>
            <option value="/">Chia</option>
          </select>
        </td>
      </tr>
      <tr>
        <td>Second operand: </td>
        <td><input name="second-operand" type="text"/></td>
      </tr>
      <tr>
        <td></td>
        <td><input type="submit" value="Calculate"/></td>
      </tr>
    </table>
  </fieldset>
</form>
</body>
</html>