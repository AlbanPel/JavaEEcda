<%--
  Created by IntelliJ IDEA.
  User: alban
  Date: 03/12/2022
  Time: 19:49
  To change this template use File | Settings | File Templates.
--%>
<html>
<head>
    <title>Profiles</title>
</head>
<body>
<c:if test="${empty profiles}">
    <c:out value="table vide" />
</c:if>
    <ul>
        <c:forEach var="profile" items="${profiles}">
            <li>
                <c:out value="${profile.firstName}" />
                <c:out value="${profile.lasttName}" />
                <c:out value="${profile.gender}"  />
                <c:out value="${profile.city}" />
            </li>
        </c:forEach>
    </ul>
</body>
</html>
