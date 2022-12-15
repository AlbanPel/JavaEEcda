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
    <div class="container">
      <c:out value="${MyCookie}" /></p>
      <c:if test="${!empty sessionScope.login}">
        <p><c:out value="Session: ${sessionScope.login}" /></p>
      </c:if>
      <c:out value="${ !empty form.resultat ? form.resultat : 'Veuillez Vous connecter'}"/>
      <form method="post" action="login">
        <div class="mb-3">
          <label class="form-label" for="login">Login :</label>
          <input class="form-control" type="text" name="login" id="login" />
        </div>
        <div class="mb-3">
          <label class="form-label" for="password">Password :</label>
          <input class="form-control" type="text" name="password" id="password" />
        </div>
        <button type="submit" class="btn btn-info">Envoyer</button>
      </form>
    </div>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
  </body>
</html>
