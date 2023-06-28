<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />

<div class="container">
    <div class="d-flex flex-row">
        <div class="col-md-6">
            <button type="button"><a href="/ads/create">Add Ads</a></button>
            <div class="d-flex">
            <form class="d-flex justify-content-end" action="/search" method="get">
                <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search" name="keyword">
                <button class="btn btn-outline-success" type="submit">Search</button>
            </form>
            </div>
        </div>
    </div>

    <div class="row justify-content-center">
        <div class="col-md-12 text-center">
            <h1>Here is the list of current ads!</h1>
        </div>
    </div>

    <div class="row">
        <c:forEach var="ad" items="${ads}">
            <div class="col-md-4 mb-4">
                <h2>${ad.title}</h2>
                <button type="button" class="btn btn-secondary"><a href="/ads?id=${ad.id}">View more</a></button>
                <button type="button" class="delete-button btn btn-secondary"><a href="/delete/${ad.id}">Delete</a></button>
            </div>
        </c:forEach>
    </div>
</div>

</body>
</html>