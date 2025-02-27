<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <jsp:include page="/WEB-INF/partials/head.jsp">
    <jsp:param name="title" value="Edit your Ad" />
  </jsp:include>
</head>
<body>
<div class="container">
  <h1>Edit this Listing</h1>
  <form action="/edit/${ad.id}" method="post">
    <div class="form-group">
      <label for="title">Title</label>
      <input id="title" name="title" class="form-control" type="text" placeholder="${ad.title}">
    </div>
    <div class="form-group">
      <label for="description">Description</label>
      <textarea id="description" name="description" class="form-control" type="text" placeholder="${ad.description}"></textarea>
    </div>
    <input type="submit" class="btn btn-block btn-primary">
  </form>
</div>
<footer> <a href="/ads">Go back to the Ad Listing</a></footer>
</body>
</html>