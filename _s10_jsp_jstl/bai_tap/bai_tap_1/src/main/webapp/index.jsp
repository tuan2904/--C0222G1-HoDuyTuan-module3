<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 5/27/2022
  Time: 1:29 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <table>
    <c:forEach items="${listCustomer}" var="customer">
    <tr>
      <td>${customer.name}</td>
      <td>${customer.birthDay}</td>
      <td>${customer.address}</td>
      <td ><img style="width: 50px" height="50px" src="${customer.photo}" alt=""> </td>
    </tr>
    </c:forEach>
  </table>

  </body>
</html>
