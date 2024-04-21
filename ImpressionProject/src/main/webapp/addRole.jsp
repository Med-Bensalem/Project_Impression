<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Ajouter un rôle</title>
</head>
<body>
    <h1>Ajouter un rôle</h1>
    <form action="Role" method="post">
        <input type="hidden" name="action" value="add">
        Nom du rôle: <input type="text" name="roleName"><br>
        <input type="submit" value="Ajouter">
    </form>
</body>
</html>
