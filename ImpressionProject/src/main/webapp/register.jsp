<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Register</title>
</head>
<body>
    <h2>Register</h2>
    <form action="register" method="post">
        UserName: <input type="text" name="username"><br>
        Password: <input type="password" name="password"><br>
        <input type="submit" value="Register">
    </form>
    <% String errorMessage = (String) request.getAttribute("errorMessage");
    if (errorMessage != null) { %>
        <p><%= errorMessage %></p>
    <% } %>
</body>
</html>
