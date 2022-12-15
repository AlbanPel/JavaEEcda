<%--
  Created by IntelliJ IDEA.
  User: alban
  Date: 01/12/2022
  Time: 17:08
  To change this template use File | Settings | File Templates.
--%>
<html>
    <head>
        <title>Home</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    </head>
    <body>
        <%@include file="/WEB-INF/layout/menu.jsp"%>
        <p>Duis rhoncus egestas lorem eget luctus. Sed in lectus diam. Curabitur a ligula nulla. Praesent neque libero, finibus eget euismod sed, fermentum non orci. Quisque id ante at nibh dignissim eleifend quis in tellus. Sed blandit facilisis sem, at rhoncus erat fringilla at. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Morbi lacus nisl, condimentum et sem eu, interdum pretium orci. Quisque viverra erat nec mattis volutpat. Ut efficitur, purus eu varius euismod, diam dui venenatis neque, vel sollicitudin ante ligula a felis. Phasellus id auctor elit. Maecenas bibendum purus a congue mattis. Duis fermentum venenatis massa vel vulputate. Nunc ut mollis libero. Vestibulum sed laoreet dui.</p>
        --------
            <%
                String id = (String) request.getAttribute("id");
                out.println(id);
            %>
        --------

        <p>${!empty id ? id : ""}</p>


        <p>${cdas[1]}</p>


            <p>Cda: ${cda.name} Actif: ${cda.actif}</p>

        <c:out value="Hello JSP"/>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    </body>
</html>
