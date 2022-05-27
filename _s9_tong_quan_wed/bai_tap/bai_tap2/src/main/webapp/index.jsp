<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 5/26/2022
  Time: 11:28 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
    <style>
      .style{
        text-align: center;
        border:black;
      }
    </style>
  </head>
  <body>
  <div class="row">
    <div class="col-md-3"></div>
    <div class="col-md-6 style">
     <div><h2> Product Discount Calculator</h2></div>
      <form action="/total" method="post" class="tong">
        <div style="margin-right: 80px">Product Description:<input type="text" name="describe" placeholder="describe"/></div><br/>
        <div>List Price:<input type="text" name="vnd" placeholder="vnd" /></div><br/>
        <div>Discount Percent:<input type="text" name="percent" placeholder="%" /> input %</div><br/>
        <input type = "submit" name="sb" id = "submit" value ="result"/>
      </form>
    </div>
    <div class="col-md-3"></div>



  </div>
  </body>
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</html>
