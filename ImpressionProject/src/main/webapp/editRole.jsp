<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.example.models.Role" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Modifier un rôle</title>
</head>
<body>
    <h1>Modifier un rôle</h1>
    <form action="RoleServlet" method="post">
        <input type="hidden" name="action" value="update">
        <input type="hidden" name="roleId" value="${role.id}">
        Nom du rôle: <input type="text" name="roleName" value="${role.name}"><br>
        <input type="submit" value="Enregistrer les modifications">
    </form>
</body>
</html>
