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

</head>
<body>
<p>Duis rhoncus egestas lorem eget luctus. Sed in lectus diam. Curabitur a ligula nulla. Praesent neque libero, finibus eget euismod sed, fermentum non orci. Quisque id ante at nibh dignissim eleifend quis in tellus. Sed blandit facilisis sem, at rhoncus erat fringilla at. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Morbi lacus nisl, condimentum et sem eu, interdum pretium orci. Quisque viverra erat nec mattis volutpat. Ut efficitur, purus eu varius euismod, diam dui venenatis neque, vel sollicitudin ante ligula a felis. Phasellus id auctor elit. Maecenas bibendum purus a congue mattis. Duis fermentum venenatis massa vel vulputate. Nunc ut mollis libero. Vestibulum sed laoreet dui.</p>
    <%
        String id = (String) request.getAttribute("id");
        out.println(id);
    %>

<p>${!empty id ? id : ""}</p>

<p>${cdas[0]}</p>

    <p>Cda: ${cda.name} Actif: ${cda.actif}</p>

<c:out value="Hello JSP"/>

</body>
</html>
