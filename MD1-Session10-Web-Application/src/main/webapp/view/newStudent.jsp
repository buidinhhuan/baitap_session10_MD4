<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>
    <style>
        .style-form {
            margin: 0 auto 50px;
        }

        .btn {
            margin-left: 17%;
        }

        .error-message {
            color: red;
            font-size: 12px;
            margin-top: 4px;
            display: none;
        }
    </style>
</head>
<body>
<h1>Add new Student</h1>
<form class="style-form" action="/home-servlet" method="post" onsubmit="return validateForm()">
    <div class="mb-2 row">
        <label class="col-sm-1 col-form-label" for="name">Họ và Tên</label>
        <div class="col-sm-3">
            <input class="form-control" type="text" id="name" name="name">
            <div class="error-message" id="nameError">Vui lòng nhập Họ và Tên.</div>
        </div>
    </div>
    <div class="mb-2 row">
        <label class="col-sm-1 col-form-label" for="age">Tuổi</label>
        <div class="col-sm-3">
            <input class="form-control" type="number" min="0" max="100" id="age" name="age">
            <div class="error-message" id="ageError">Vui lòng nhập Tuổi.</div>
        </div>
    </div>
    <input class="btn btn-primary" type="submit" value="ADD" name="action" />
</form>

<script>
    function validateForm() {
        // Get the input values
        let nameInput = document.getElementById("name");
        let ageInput = document.getElementById("age");

        // Get the error message elements
        let nameError = document.getElementById("nameError");
        let ageError = document.getElementById("ageError");

        // Check if the input values are empty
        if (nameInput.value.trim() === "") {
            nameError.style.display = "block";
            return false; // Prevent form submission
        } else {
            nameError.style.display = "none";
        }

        if (ageInput.value.trim() === "") {
            ageError.style.display = "block";
            return false; // Prevent form submission
        } else {
            ageError.style.display = "none";
        }
        // Form is valid, allow form submission
        return true;
    }
</script>
</body>
</html>
