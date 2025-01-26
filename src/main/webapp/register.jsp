<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Ragister</title>
    <link rel="stylesheet" type="text/css" href="/static/css/styles.css">
</head>

<body>
    <h1>Register</h1>
    <form action="/register" method="post">
        <label for="username">Username:</label>
        <input type="text" id="username" name="username" required><br>
        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required><br>
        <label for="role">Role:</label>
        <select id="role" name="role" required>
            <option value="USER">User</option>
            <option value="FARMER">Farmer</option>
            <option value="ADMIN">Admin</option>
        </select><br>
        <button type="submit">Register</button>
    </form>
    <p><a href="/login">Already have an account? Login here.</a></p>
<script src="/static/js/scripts.js"></script>
</body>

</html>
