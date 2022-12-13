<%--
  Created by IntelliJ IDEA.
  User: alban
  Date: 02/12/2022
  Time: 17:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>First form</title>
    </head>
    <body>
        <%@include file="/WEB-INF/layout/menu.jsp"%>
            <form method="post" action="firstform">
                <p>
                    <label for="name">Nom :</label>
                    <input type="text" name="name" id="name" />
                </p>

                <input type="submit" />
            </form>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    </body>
</html>
