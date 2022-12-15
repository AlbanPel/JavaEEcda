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
    <title>First Form</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>
    <body>
        <%@include file="/WEB-INF/layout/menu.jsp"%>
        <div class="container mt-5">
            <form method="post" action="firstform">
                <div class="mb-3">
                    <label class="form-label"for="name">Nom :</label>
                    <input class="form-control" type="text" name="name" id="name" value="<c:out value="${name}"/>"/>
                </div>
                <div class="mb-3">
                    <label class="form-label"for="firstName">Prénom:</label>
                    <input class="form-control" type="text" name="firstName" id="firstName" value="<c:out value="${firstName}"/>"/>
                </div>
                <div class="mb-3">
                    <label class="form-label"for="firstName">Téléphone :</label>
                    <input class="form-control" type="text" name="phone" id="phone" value="<c:out value="${phone}"/>"/>
                </div>
                <div class="mb-3">
                    <label class="form-label"for="firstName">E-mail :</label>
                    <input class="form-control" type="text" name="mail" id="mail" />
                    <c:if test="${!empty errorMail}">
                        <div class="alert alert-warning">
                            <c:out value="${errorMail}"/>
                        </div>
                    </c:if>

                </div>
                <div class="mb-3 form-floating">
                    <label class="form-label"for="firstName">Message :</label>
                    <textarea class="form-control" name="message" id="message" style="height: 100px"></textarea>
                    <c:if test="${!empty errorMessage}">
                        <div class="alert alert-warning">
                            <c:out value="${errorMessage}"/>
                        </div>
                    </c:if>
                </div>
                <button type="submit" class="btn btn-primary">Envoyer</button>
            </form>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    </body>
</html>
