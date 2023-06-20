<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Ads</title>
    <%@ include file="../partials/head.jsp" %>
</head>
<body>
<%@ include file="../partials/navbar.jsp" %>

<div class="container-fluid">
    <h1>All Ads</h1>

    <table class="table table-striped">
        <thead>
        <tr>
            <th scope="col">Id</th>
            <th scope="col">Title</th>
        </tr>
        </thead>
        <tbody>

        <c:forEach items="${ads}" var="ad">
            <tr>
                <th scope="row">${ad.id}</th>
                <td>${ad.title}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>

</div>

</body>
</html>