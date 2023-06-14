<%--
  Created by IntelliJ IDEA.
  User: jakiradunson
  Date: 6/13/23
  Time: 11:48 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
<%@ include file="/partials/navbar.jsp" %>
<h1>Login</h1>
<form method="post">
    <label for="username">Username:</label>
    <input type="text" name="username" id="username">
    <label for="password">Password:</label>
    <input type="password" name="password" id="password">
    <button type="submit">Submit</button>
</form>

<c:if test="${param.username.equals('admin') && param.password.equals('password')}">
    <meta http-equiv="Refresh" content="0; url='/profile.jsp'" />
</c:if>
</body>
</html>