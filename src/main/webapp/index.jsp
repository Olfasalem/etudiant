<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <title>JSP - Hello World</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>

</head>
<body>
<%@include file="menu.jsp"%>
<div class="container pt-5">
  <div class="row">
    <div class="col-6">

      <h1><%= "Hello World!" %></h1>
      <br/>
      <ul>
        <li> <a href="hello-servlet">Hello Servlet</a></li>
        <li><a href="student">Gestion Etudiants</a></li>
      </ul>
      <%--<a href="hello-servlet">Hello Servlet</a>--%>
    </div>
  </div>
</div>
</body>
</html>