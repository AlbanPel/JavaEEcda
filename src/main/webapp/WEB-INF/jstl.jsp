<%--
  Created by IntelliJ IDEA.
  User: alban
  Date: 02/12/2022
  Time: 10:25
  To change this template use File | Settings | File Templates.
--%>

<html>
<head>
    <title>JSTL</title>
</head>
<body>

    <h1><c:out value="Gestion des JSTL" /> </h1>
    <p>
        <c:out value="${ variableUndefine }">
            Si ma valeur n 'est pas definie ou null cela retourne ce message
        </c:out>
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
    <c:if test="${ 20 > 10 }" var="variable">
        C'est vrai ! 20 est bien plus grand que 10
    </c:if>

   <!--Les boucles-->
    <c:forEach var="i" begin="0" end="10" step="2">
        <p>ticket : <c:out value="${ i }" /> </p>
    </c:forEach>











</body>
</html>
