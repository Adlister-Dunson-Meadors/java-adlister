<%--
  Created by IntelliJ IDEA.
  User: jakiradunson
  Date: 6/13/23
  Time: 11:48 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
    <%@ include file="/partials/head.jsp" %>
</head>
<body>
<%@ include file="/partials/navbar.jsp" %>

<h1>Login</h1>
<form method="post" action="login.jsp">
    <label for="username">Username:</label>
    <input type="text" id="username" name="username" required><br><br>

    <label for="password">Password:</label>
    <input type="password" id="password" name="password" required><br><br>

    <input type="submit" value="Login">
</form>
</body>
</html>
