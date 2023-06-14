<%--
  Created by IntelliJ IDEA.
  User: jakiradunson
  Date: 6/14/23
  Time: 2:03 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Guessing Game</title>
</head>
<body>
<h1>Guessing Game</h1>
<form action="guess" method="POST">
    <label for="guess">Guess a number between 1 and 3:</label>
    <input type="number" id="guess" name="guess" min="1" max="3">
    <br>
    <input type="submit" value="Submit">
</form>
</body>
</html>
