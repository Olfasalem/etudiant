<%--
  Created by IntelliJ IDEA.
  User: foufa
  Date: 01/05/2023
  Time: 17:14
  To change this template use File | Settings | File Templates.
--%>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">Students</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarText">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="index.jsp">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="student">Students</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href=hello-servlet>Hello</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link disabled">Bonjour ${sessionScope.pNom} </a>
                </li>
            </ul>

        </div>
    </div>
</nav>