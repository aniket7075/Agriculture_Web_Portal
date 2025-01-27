<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>User Dashboard</title>
</head>
<body>
    <h1>Welcome, User</h1>
    <p>This is the User Dashboard.</p>
    <a href="/logout">Logout</a>
<script src="/static/js/scripts.js"></script>
 <form action="/login.jsp" method="post">
    <p><button type="submit">Register</button>Already have an account? Login here.</p>
    </form>
</body>

</html>
