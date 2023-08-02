<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Edit Student</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>
  <style>
    .style-form {
      margin: 0 auto 50px;
    }
  </style>
</head>

<body>
<h1>Edit Student</h1>
<form class="style-form" action="/home-servlet" method="post">
  <input type="hidden" name="action" value="UPDATE">
  <input type="hidden" name="id" value="${student.id}">
  <div class="mb-2 row">
    <label class="col-sm-1  col-form-label" for="name">Name</label>
    <div class="col-sm-3">
      <input class="form-control" minlength="0" type="text" id="name" name="name" value="${student.name}">
    </div>
  </div>
  <div class="mb-2 row">
    <label class="col-sm-1 col-form-label" for="age">Age</label>
    <div class="col-sm-3">
      <input class="form-control" minlength="0"  type="number" min="0" max="100" id="age" name="age" value="${student.age}">
    </div>
  </div>
  <input class="btn btn-primary " type="submit" value="Update">
  <a class="btn btn-secondary" href="/home-servlet">Cancel</a>
</form>
</body>
</html>
