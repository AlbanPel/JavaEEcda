<%--
  Created by IntelliJ IDEA.
  User: alban
  Date: 02/12/2022
  Time: 17:36
  To change this template use File | Settings | File Templates.
--%>

<html>
  <head>
      <title>Login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
  </head>
  <body>
    <%@include file="/WEB-INF/layout/menu.jsp"%>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    <c:out value="${MyCookie}" /></p>
    <c:if test="${!empty sessionScope.login}">
    <p><c:out value="Session: ${sessionScope.login}" /></p>
    </c:if>
    <c:out value="${ !empty form.resultat ? form.resultat : 'Veuillez Vous connecter'}"/>
    <form method="post" action="login">
      <p>
        <label for="login">Login :</label>
        <input type="text" name="login" id="login" />
      </p>
      <p>
        <label for="password">Password :</label>
        <input type="text" name="password" id="password" />
      </p>
      <input type="submit" />
    </form>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
  </body>
</html>
