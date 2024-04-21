<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Modifier une matière</title>
</head>
<body>
    <h1>Modifier une matière</h1>
    <form action="MatiereServlet" method="post">
        <input type="hidden" name="action" value="update">
        <input type="hidden" name="id" value="${matiere.id}">
        <label for="nom">Nom :</label>
        <input type="text" id="nom" name="nom" value="${matiere.nom}"><br>
        <label for="description">Description :</label>
        <input type="text" id="description" name="description" value="${matiere.description}"><br>
        <input type="submit" value="Enregistrer">
    </form>
</body>
</html>
