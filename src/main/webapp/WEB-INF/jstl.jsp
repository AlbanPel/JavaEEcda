<%--
  Created by IntelliJ IDEA.
  User: alban
  Date: 02/12/2022
  Time: 10:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>JSTL</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    </head>
    <body>
        <%@include file="/WEB-INF/layout/menu.jsp"%>
        <h1><c:out value="Gestion des JSTL" /> </h1>
        <p>
            <c:out value="${ variableUndefine }">
                Si ma valeur n 'est pas définie ou null cela retourne ce message
            </c:out>

            <c:out value="${undefine}" default="valeur" escapeXml=""/>
        </p>
        <p>
            <c:out value="${ variableUndefine }" escapeXml="false">
                pas de protection contre la faille xss
            </c:out>
        </p>

        <c:set var="name" value="Alban" scope="page" />
        <p><c:out value="${name}" default="pas renseigné"/></p>

        <c:set target="${cda}" property="name" value="mon nouveau centre de formation" />
        <p>
            <c:out value="${cda.name}" />
        </p>

        <c:remove var="name" scope="page"/>

        <!--Conditions-->
        <c:if test="${ 20 > 10 }" scope="page" var="variable">
            C'est vrai ! 20 est bien plus grand que 10
        </c:if>


       <!--Les boucles-->
        <c:forEach var="i" begin="0" end="10" step="2">
            <p>ticket : <c:out value="${ i }" /> </p>
        </c:forEach>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    </body>
</html>
