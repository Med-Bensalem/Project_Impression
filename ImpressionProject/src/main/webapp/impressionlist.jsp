<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Liste des Impressions</title>
</head>
<body>
    <h2>Liste des Impressions</h2>
    <table border="1">
        <thead>
            <tr>
                <th>ID</th>
                <th>enseignant Nom</th>
                <th>Groupe</th>
                <th>Matière</th>
                <th>Date d'Impression</th>
                <th>Document</th>
                <th>État</th>
                <th>Nombre de Pages</th>
                 <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${impressions}" var="impression">
                <tr>
                    <td>${impression.id}</td>
		            <td>${impression.enseignantNom}</td>
		            <td>${impression.groupeNom}</td>
		            <td>${impression.matiereNom}</td>
		            <td>${impression.dateImpression}</td>
		            <td>${impression.document}</td>
		            <td>${impression.etat}</td>
		            <td>${impression.nombreDePages}</td>
		            <td>
		             <form action="printimpression" method="post">
	                    <input type="hidden" name="impressionId" value="${impression.id}">
	                    <input type="submit" value="Imprimer">
	                </form>
		                <form action="deleteimpression" method="post">
		                    <input type="hidden" name="impressionId" value="${impression.id}">
		                    <input type="submit" value="Supprimer">
		                </form>
					</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
