<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 5/27/2022
  Time: 3:32 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <h1> Simple Calculator</h1>
  <form action="/index" method="get">
  <div>
    <div>calculator</div>
    <div>First operand: <input type="text" name="number1" placeholder="Nhập số"></div>
    <div> Operand:
      <select name="tinh">
      <option value="cong">cong</option>
      <option value="tru">tru</option>
      <option value="nhan">nhan</option>
      <option value="chia">chia</option>
    </select></div>
    <div>Second operand: <input type="text" name="number2" placeholder="Nhập số"></div>
    <div><input type="submit" id="submit" value="Tinh"></div>
  </div>
  </form>
  <p>result ${result}</p>
  </body>
</html>
