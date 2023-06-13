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

<% if (request.getMethod().equalsIgnoreCase("post")) {
    String username = request.getParameter("username");
    String password = request.getParameter("password");

    if(username.equals("admin") && password.equals("password")){
        response.sendRedirect("profile.jsp");
    }
}
%>

<%@ include file="/partials/navbar.jsp" %>




<div class = "container-fluid">
<h1>Login</h1>

    <h4>Please Log in</h4>
    <form method="post" action="login.jsp">
        <div class="form-group">
            <label for="username1">UserName</label>
            <input type="text" class="form-control" id="username1" aria-describedby="emailHelp" placeholder="username">
        </div>
        <div class="form-group">
            <label for="exampleInputPassword1">Password</label>
            <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</div>

</body>
</html>
