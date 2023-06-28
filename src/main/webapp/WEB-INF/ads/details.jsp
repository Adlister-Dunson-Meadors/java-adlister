<%--
  Created by IntelliJ IDEA.
  User: ben
  Date: 6/27/23
  Time: 1:22 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Details of Ad" />
    </jsp:include>
</head>

<body>
<%--<form action="/ads/details" method="post">--%>
<div class="container">
    <div class="col-md-6">
        <h2>${ad.title}</h2>
        <p>${ad.description}</p>
        <p>${user.username}</p>
    <%--    <p>${user.email}</p>--%>
    </div>
    <div class="col-md-6">
        <button type="button"><a href="/edit/${ad.id}">Edit this Ad</a></button>
    </div>
</div>

<footer> <a href="/ads">Go back to the Ad Listing</a></footer>

</body>
</html>
