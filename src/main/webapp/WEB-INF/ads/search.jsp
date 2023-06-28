<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ben
  Date: 6/28/23
  Time: 3:27 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Search</title>
</head>
<body>

<c:forEach var="ad" items="${search}">
    <div class="card">
        <div class="card-header">
            <h3>${ad.title}</h3>
        </div>
        <div class="card-body">
                <blockquote class="blockquote mb-0">
                    <p>${ad.description}</p>
                    <footer class="blockquote footer">Posted by ${user.username}</footer>
                </blockquote>
        </div>
    </div>
</c:forEach>

<a href="/ads">Go back to the Ad Listing</a>

</body>
</html>
