<%--
  Created by IntelliJ IDEA.
  User: foufa
  Date: 01/05/2023
  Time: 09:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>

<head>
    <title>welcome</title>
    <%@include file = "links.jsp"%>

</head>
<body>

<%@include file="menu.jsp"%>
<div class=container pt-5>
    <div>
        <h1> Bonjour DevOps & Cloud </h1>
        <form action="hello-servlet" method = "post" name="form1">
            <label class ="form-label" for="nom">Nom:</label>
            <input class="form-control" name="nom" id="nom" type="text" placeholder="Donner votre nom" required />
            <button class="btn btn-primary" type="submit" name="save">Save</button>


        </form>
        <c:if test = "${ !empty pNom }">
            <div>
                Bonjour <c:out value="${ sessionScope.pNom }" />
            </div>
        </c:if>

    </div
</div>
</body>
</html>
