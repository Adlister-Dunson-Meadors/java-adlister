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
    <div class="row justify-content-center">
        <div class="col-md-6">
        <button type="button"><a href="/ads/create">Add Ads</a></button>
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
            </div>
        </c:forEach>
    </div>
</div>

</body>
</html>
