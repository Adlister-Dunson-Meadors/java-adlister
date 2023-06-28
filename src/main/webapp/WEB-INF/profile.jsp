<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />

    <div class="container">
        <div class="row justify-content-center">
        <h1>Welcome, ${sessionScope.user.username}!</h1>
    </div>
        <div class="row justify-content-center">
            <div class="col-md-12 text-center">
        <c:forEach var="ad" items="${ads}">
            <div class="col-md-4 mb-4">
                <h2>${ad.title}</h2>
                <p>${ad.description}</p>
            </div>
        </c:forEach>
    </div>
        </div>
    </div>

</body>
</html>
