<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Ajouter une impression</title>
</head>
<body>
    <h2>Ajouter une impression</h2>
    <form action="Impression" method="post">
        <label for="groupe">Groupe:</label>
        <select name="groupe" id="groupe">
            <c:forEach items="${groups}" var="group">
                <option value="${group.id}">${group.nom} - ${group.nbetudiants} étudiants</option>
            </c:forEach>
        </select>
        <br><br>
        <label for="matiere">Matière:</label>
        <select name="matiere" id="matiere">
            <c:forEach items="${matieres}" var="matiere">
                <option value="${matiere.id}">${matiere.nom}</option>
            </c:forEach>
        </select>
        <br><br>
        <label for="dateImpression">Date d'impression:</label>
        <input type="date" name="dateImpression" id="dateImpression">
        <br><br>
        <label for="document">Document:</label>
        <input type="text" name="document" id="document">
        <br><br>
        <input type="submit" value="Ajouter">
    </form>
</body>
</html>
