<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Ajouter une matière</title>
</head>
<body>
    <h1>Ajouter une matière</h1>
    <form action="MatiereServlet" method="post">
        <input type="hidden" name="action" value="add">
        <label for="nom">Nom :</label>
        <input type="text" id="nom" name="nom"><br>
        <label for="description">Description :</label>
        <input type="text" id="description" name="description"><br>
        <input type="submit" value="Enregistrer">
    </form>
</body>
</html>
