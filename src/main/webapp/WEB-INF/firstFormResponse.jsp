<%--
  Created by IntelliJ IDEA.
  User: alban
  Date: 02/12/2022
  Time: 17:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Hello</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    </head>
    <body>
    <%@include file="/WEB-INF/layout/menu.jsp"%>
    <div class="container">
        <c:out value="Nom : ${ !empty messageForm.name ? messageForm.name : 'Aucune valeur'}"/>
        <p>Prénom: <c:out value="${messageForm.firstName}" default="NC" /></p>
        <p>Téléphone: <c:out value="${messageForm.phone}" default="NC" /></p>
        <p>Mail: <c:out value="${messageForm.mail}" default="NC" /></p>
        <p>Message: <c:out value="${messageForm.message}" default="NC" /></p>
    </div>


        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    </body>
</html>
