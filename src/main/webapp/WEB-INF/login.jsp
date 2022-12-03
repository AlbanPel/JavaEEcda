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
</head>
<body>

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

</body>
</html>
