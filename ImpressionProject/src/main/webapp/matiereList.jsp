<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Liste des matières</title>
</head>
<body>
    <h1>Liste des matières</h1>
    <table border="1">
        <thead>
            <tr>
                <th>ID</th>
                <th>Nom</th>
                <th>Description</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="matiere" items="${matieres}">
                <tr>
                    <td>${matiere.id}</td>
                    <td>${matiere.nom}</td>
                    <td>${matiere.description}</td>
                    <td>
                        <a href="Matiere?action=edit&id=${matiere.id}">Modifier</a>
                        <a href="Matiere?action=delete&id=${matiere.id}">Supprimer</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
    <a href="addMatiere.jsp">Ajouter une matière</a>
</body>
</html>
