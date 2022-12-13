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
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    </head>
    <body>
        <%@include file="/WEB-INF/layout/menu.jsp"%>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
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
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    </body>
</html>
