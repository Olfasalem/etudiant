<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: foufa
  Date: 08/05/2023
  Time: 10:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Student Management</title>
    <%@include file = "links.jsp"%>

</head>
<body>
<%@include file="menu.jsp"%>
<div class = "container">
    <div class = "row">
        <div class = "col-6">
            <form action="student" method = "post" name="studentsform">
                <label class ="form-label" for="nom">Nom:</label>
                <input class="form-control" name="nom" id="nom" type="text" placeholder="Donner votre nom" required />
                <label class ="form-label" for="age">age:</label>
                <input class="form-control" name="age" id="age" type="text" placeholder="Donner votre age" required /> <br>
                <button class="btn btn-primary" type="submit" name="save">Add<i class="fa-sharp fa-regular fa-plus"></i></button>
                <button class="btn btn-danger "  type="submit" name="delete">delete<i class="fa-solid fa-trash"></i></button>
                <button class="btn btn-success"  type="submit" name="delete">Edit<i class="fa-solid fa-pen-to-square"></i></button>
            </form>
            <table table class="table table-sm table-danger">
                <thead>
                <tr>
                    <th scope="col">id</th>
                    <th scope="col">Name</th>
                    <th scope="col">Age</th>

                </tr>
                </thead>
                <tbody>
                <c:forEach items="${ students }" var="s">
                    <tr class="table-danger">
                        <th scope="row"><c:out value="${s.id}"/> </th>
                        <td><c:out value="${s.name}"/></td>
                        <td><c:out value="${s.age}"/></td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>


</body>
</html>


