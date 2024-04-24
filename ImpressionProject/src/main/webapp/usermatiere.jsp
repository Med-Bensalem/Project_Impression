<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Select matiere</title>
</head>
<body>
   <%@ include file="front-header.jsp" %>
  <%@ include file="cssfiles.jsp" %>
    <h2>Select matiere</h2>
    <form action="UserMatieresServlet" method="post">
          <c:forEach var="matiere" items="${matieres}">
            <input type="checkbox" name="subject" value="${matiere.id}"> ${matiere.nom}<br>
        </c:forEach>
        <input type="submit" value="Save">
    </form>
</body>
</html>
