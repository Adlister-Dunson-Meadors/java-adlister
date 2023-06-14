<%--
  Created by IntelliJ IDEA.
  User: jakiradunson
  Date: 6/14/23
  Time: 11:41 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>View Color</title>
    <style>
        body {
            background-color: <%= request.getParameter("color") %>;
        }
    </style>
</head>
<body>
<h1>View Color</h1>
<p>The background color is <%= request.getParameter("color") %>.</p>
</body>
</html>
