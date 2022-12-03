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
</head>
<body>
 <c:out value="Hello ${ !empty name ? name : 'Aucune valeur'}"/>

</body>
</html>
